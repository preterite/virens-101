---
created: 2026-02-15
type: specification
status: current
project: virens101-kairos-webtext
tags: [vault-implementation, quartz, specification]
---

# Quartz Vault Implementation Specification

**Date:** 2026-02-15
**Quartz version:** 4.5.2
**Status:** Vault polish complete. Phase 3 enhancements and deployment outstanding.

This document records the complete current state of the Quartz-based vault implementation for the VIRENS 101 course evidence site. It covers configuration, custom components, styling, build pipeline, and interaction architecture.

---

## 1. Purpose and Architecture

The vault is the external evidence base for *Constraint Structure: Toward an Economy of Composition*, a Kairos webtext. It publishes ~207 markdown files from the VIRENS 101 Obsidian vault as a navigable static site. The vault is *not* the argument — it is the inspectable material the argument references. Its design signals this distinction through lighter typography, plainer layout, and documentary rather than editorial register.

The vault connects to the webtext via two mechanisms:

- **"Constraint Structure" title link** (left sidebar) → `env.html` (webtext environment/working entrance)
- **"← Return to webtext" link** (landing page) → `index.html` (webtext front door)
- **ReturnLink component** (left sidebar) → dynamic, contextual return to the specific webtext page the reader arrived from, via `?from=` URL parameter stored in sessionStorage

---

## 2. Configuration

### quartz.config.ts

| Setting | Value | Rationale |
|---------|-------|-----------|
| pageTitle | "Constraint Structure" | Links to webtext env.html |
| pageTitleSuffix | " — VIRENS 101 Vault" | Browser tab identification |
| enableSPA | true | Smooth navigation, SPA events for component lifecycle |
| enablePopovers | true | Wikilink preview on hover |
| baseUrl | preterite.github.io/virens-101 | GitHub Pages deployment target |
| typography.header | Work Sans | Single font throughout vault |
| typography.body | Work Sans | Matches webtext secondary font |
| typography.code | IBM Plex Mono | |
| colors.lightMode.secondary | #8B3A62 | Plum accent — relates to webtext palette |
| colors.lightMode.tertiary | #6E2D4E | Deeper plum for hover states |

### quartz.layout.ts

#### Shared Components

- **Head**: default
- **Footer**: Custom — dynamic per-page GitHub blob link, README link, LICENSE-DOCS link

#### Content Page Layout

**beforeBody:**
1. Breadcrumbs (conditional: hidden on index page) with human-readable folder display names
2. PageCategory (colored dot + label; hidden on index page)
3. Backlinks (mobile only, collapsed)

**left sidebar:**
1. PageTitle ("Constraint Structure" → env.html, external link) + Darkmode toggle in flex row
2. Spacer (mobile only)
3. ReturnLink (dynamic webtext return, plain text style)
4. TableOfContents (desktop only) — "Node" label
5. Backlinks (desktop only) — "Network" label
6. Explorer (desktop only) — "Tree" label, collapsed by default

**right sidebar:**
1. Graph (depth 2, zoom enabled, drag disabled)
2. Search (bare button, "Search" header label)

#### List Page Layout

Same left sidebar minus ToC and Backlinks. Right sidebar has Search only (no graph).

---

## 3. Custom Components

### PageTitle.tsx

Factory function accepting `{ externalUrl?: string }`. When set, renders as `target="_blank"` link to that URL instead of site root. Used to make "Constraint Structure" link to `env.html`.

### PageCategory.tsx

Determines page category from slug path and renders a colored dot + label above the h1:

| Slug pattern | Label | CSS variable |
|-------------|-------|-------------|
| `y_meta/` | Infrastructure | `--graph-meta` |
| `y_defs/` | Definition | `--graph-defs` |
| contains `-reasons-` | Rationale | `--graph-reasons` |
| everything else | Course | `--graph-content` |

Returns null for index page (no category indicator on landing page).

### ReturnLink.tsx + returnlink.inline.ts

Contextual portal navigation back to the webtext.

**Server-side:** Renders a hidden anchor with data attributes for label prefix, fallback URL, and fallback label.

**Client-side logic:**
1. On page load, checks for `?from=` URL parameter
2. Looks up the slug in PAGE_MAP (36 entries: 7 supporting pages, 12 nexus pages, 6 Vera scenes, 6 Grant scenes, plus init/spec/manifest/env/index/references/contributing)
3. Stores return info in sessionStorage (persists across SPA navigation within tab)
4. Cleans the URL parameter via `history.replaceState`
5. Renders "← Return to [page name]" as a plain text link

**Styling:** No button chrome — `background: none; border: none; padding: 0`. Plum color matching secondary, underline on hover.

### Footer.tsx

Dynamic per-page links:
- **Repository** → `https://github.com/preterite/virens-101/blob/main/{slug}.md` (constructed from `fileData.slug`)
- **README** → static GitHub blob link
- **License** → `LICENSE-DOCS` on GitHub

Title line: **VIRENS 101** — Course Evidence for *Constraint Structure: Toward an Economy of Composition* (title has `letter-spacing: 0.03em` for slight visual distinction within single-font constraint).

### Search.tsx (modified)

Added `<h3 class="search-title">` above the search button, styled to match accordion headers. Button interior (SVG icon + placeholder text) hidden via CSS. Search pop-up input placeholder also hidden.

### Backlinks.tsx (extended)

Houses two client-side scripts concatenated via `afterDOMLoaded`:

**1. Inline transclusion processor:**
When a `<p>` ends with ":" and is followed by a `blockquote.transclude`, extracts the transcluded value text, appends it inline to the paragraph as a linked span, and hides the original blockquote. This makes parametric definition transclusions (e.g., "Block duration: 25 minutes") render inline within callouts rather than as block-level embeds.

**2. Ternary accordion:**
Three-panel accordion for the left sidebar: Node (ToC) / Network (Backlinks) / Tree (Explorer). Exactly one panel open at all times. Ring pattern: clicking the active panel advances to the next (node → network → tree → node). Uses capture-phase event listeners to intercept each component's built-in toggle handler.

Panel state management via `setPanelExpanded()`:
- ToC and Backlinks: `.collapsed` class on button + content div
- Explorer: `.collapsed` on `.explorer` wrapper + `aria-expanded` on button

Default state: Node expanded, Network and Tree collapsed.

---

## 4. Graph Component

### graph.inline.ts — Complete Rewrite

The stock Quartz graph uses continuous d3-force animation at 60fps with d3-zoom and d3-drag. The vault graph replaces this entirely with a static render architecture.

**Simulation:** d3-force only (no d3-zoom, d3-drag, d3-select). Simulation settled synchronously (300 ticks) on page load. No animation loop, no `requestAnimationFrame` polling.

**Rendering:** Pixi.js with `autoStart: false`, `eventMode: "none"`, `preference: "webgl"`. Canvas painted via manual `app.renderer.render(stage)` calls only on user interaction events.

**Event architecture:** All mouse events handled via a transparent overlay `<div>` positioned above the Pixi canvas (`position: absolute; inset: 0; z-index: 1`). This bypasses Pixi's `pointer-events: none` on the canvas element. The `.global-graph-icon` pop-out button has `z-index: 2` to sit above the overlay.

**Interaction model:**

| Action | Event | Handler | Render |
|--------|-------|---------|--------|
| Zoom | wheel on overlay | Update tx/ty/tk (factor 1.05) | `scheduleRender()` (rAF-batched) |
| Pan | mousedown→mousemove→mouseup | Update tx/ty, track totalPanDist | `scheduleRender()` (rAF-batched) |
| Hover | mousemove on overlay | `hitTest()` → update `hoveredNodeId` | `render()` (synchronous, immediate) |
| Click | click on overlay | `hitTest()` → `spaNavigate()` (skip if totalPanDist > 5) | none |
| Leave | mouseleave on overlay | Clear hoveredNodeId | `render()` (synchronous) |

**Hover illumination:** When `hoveredNodeId` is set, all non-adjacent nodes dim to alpha 0.2, all non-adjacent links dim to alpha 0.2. Adjacent links brighten to `--gray` color. Hovered node label shows at full opacity; neighbor labels show at `Math.max(baseAlpha, 0.7)`.

**Hit testing:** Transforms client coordinates through the overlay rect, then through the current zoom/pan transform (tx, ty, tk), into simulation space. Finds the closest node within `nodeRadius + 8/tk` slop distance.

**Node coloring — four categories:**

| Category | Slug match | Light mode | Dark mode |
|----------|-----------|------------|-----------|
| Course | default | `--graph-content` #B08850 (amber) | #C49A60 |
| Rationale | contains `-reasons-` | `--graph-reasons` #2B8A8A (teal) | #38A8A8 |
| Infrastructure | starts with `y_meta/` | `--graph-meta` #4070A8 (blue) | #5A8CC0 |
| Definition | starts with `y_defs/` | `--graph-defs` #8A6499 (plum) | #A07CB0 |

Palette is colorblind-safe: the original forest green (#3A8F5C) was replaced with teal (#2B8A8A) because green/amber collapse under deuteranopia.

Special cases: current page node uses `--secondary` (plum). Visited nodes use `--tertiary`. Tag nodes (if enabled) use `--light` fill with `--tertiary` stroke.

**Force parameters:**

| Parameter | Value |
|-----------|-------|
| depth | 2 |
| scale | 1.2 |
| repelForce | 1.1 |
| centerForce | 0.2 |
| linkDistance | 55 |
| fontSize | 0.6 |
| opacityScale | 1 |
| charge strength | -100 × repelForce |
| collide iterations | 3 |

**Graph container:** 500px height in `graph.scss`. `.graph-container` has `width: 100%; height: 100%` to fill the outer container (fix for the `offsetHeight: 0` bug where `renderGraph` received the inner container but height was set on the outer).

**Cleanup:** On SPA navigation, all event listeners are removed, the overlay div is removed, and the Pixi app is destroyed. A `destroyed` flag prevents render calls after cleanup.

---

## 5. Styling

### custom.scss Structure

1. **Category colors** — CSS custom properties for graph/dot colors, light and dark modes
2. **Typography** — lighter than webtext: page-title 700, h1 1.8rem/700, h2 1.4rem/600, h3 1.1rem/600, body 1.05rem/1.7 line-height
3. **Frontmatter suppression** — `.content-meta { display: none }` hides date/tag metadata
4. **Sidebar containment** — both sidebars: `max-height: 100vh; overflow` managed. Left sidebar uses flex column for accordion layout
5. **Explorer accordion** — flex behavior for collapsed/expanded states, `display: none` on collapsed content, overflow-y auto on expanded content
6. **Left sidebar accordion** — matching flex patterns for ToC and Backlinks panels
7. **Sidebar link typography** — 400 weight, 0.85rem, 1.35 line-height for all sidebar navigation links
8. **Transclusion inlining** — `.transclude-processed { display: none }` hides original blockquotes after JS inlining
9. **Footer** — 0.85rem, letter-spacing on article title
10. **Search** — `.search-title` styled as accordion-matching header; button interior (SVG + p) hidden; pop-up placeholder hidden
11. **Page category** — flex row, 0.78rem, 8px colored dot, 0.85 opacity

### footer.scss

Footer left-aligned, 4rem bottom margin, 0.7 opacity. Links in plum (`--secondary`), underline on hover (`--tertiary`). Article title class has `letter-spacing: 0.03em`.

### graph.scss

Graph outer container: 500px height, 1px lightgray border, 5px border-radius, relative positioning, overflow hidden. Global graph: fixed fullscreen with backdrop blur, centered at 80vh/80vw. Pop-out icon: absolute top-right, z-index 2, 0.5 opacity, lightgray hover background.

---

## 6. i18n Customization

| Component | Label | Rationale |
|-----------|-------|-----------|
| explorer.title | "Tree" | Graph-theoretic vocabulary |
| graph.title | "Graph" | |
| tableOfContents.title | "Node" | Internal structure of current page |
| backlinks.title | "Network" | Set via component option, not i18n |
| search.title | "Search" | Rendered as `<h3>` above button |

---

## 7. Build Pipeline

### sync-content.zsh

Copies publishable content from the Obsidian vault to Quartz:

- **Source:** `~/Local/virens/user1/Scholar/600_teaching/virens_101/`
- **Destination:** `~/Local/virens-101-site/content/`
- Cleans destination, then rsyncs 28 named directories (a_description through y_meta)
- Copies `index.md` from vault root as the landing page
- Runs `fix-frontmatter.py` on the destination

### fix-frontmatter.py

Post-processes synced markdown for Quartz YAML compatibility:

1. **Frontmatter quoting:** Wraps values containing wikilinks `[[...]]` in double quotes. Handles the `key: ---` edge case where a YAML value collides with the document separator.
2. **Callout transformation:** Identifies scaffolding callouts (abstract/info/note blocks containing a "Paired with" wikilink), extracts the navigation link, and replaces the multi-line callout with a single `**See also**: [[target]]` line. Approximately 133 files affected. Content callouts pass through untouched.

### Build

Standard Quartz: `npx quartz build --serve` for development, `npx quartz build` for production. Content sync should run before each build.

---

## 8. Landing Page

`content/index.md` (sourced from vault root `index.md`):

- Title: VIRENS 101
- Five sentences: identifies the vault, states relationship to webtext, explains dual-track architecture (course/rationale pairs), explains color-coded categories, offers entry point
- Entry point: wikilink to `course-overview-reasons-v101` (reasons track, signaling scholarly verification audience)
- Return link: `[← Return to webtext](index.html)` (webtext front door)
- No breadcrumbs (conditional render excludes index)
- No page category dot (component returns null for index)

The GitHub-facing README remains at `README.md` in the repo root, separate from the Quartz landing page.

---

## 9. Folder Display Names

Applied in both the Explorer component (via serialized `mapFn`) and breadcrumbs (via `folderDisplayNames` option):

| Slug prefix | Display name |
|------------|-------------|
| a_description | Course Description |
| b_overview | Pedagogical Architecture |
| c_rationale | Design Rationale |
| d_requirements | Requirements |
| e_outcomes | Learning Outcomes |
| f_assignments | Assignments |
| g_studentreadings | Student Readings |
| h_policies | Policies |
| i_schedule | Schedule |
| i_week01–15 | Week 1–15 |
| j_assessment | Assessment |
| k_reflection | Reflection |
| l_gratitude | Acknowledgments |
| m_workscited | Works Cited |
| n_vocabulary | Vocabulary |
| y_defs | Parametric Definitions |
| y_meta | Infrastructure |
| instructor_prompts | Instructor Prompts |
| peer_review_cycles | Peer Review Cycles |

The `mapFn` is duplicated inside the function body because Quartz serializes it to a string for browser execution — no closure references to build-time variables.

---

## 10. Outstanding Work

### Immediate (zoom tuning)
- Zoom factor may need further reduction from 1.05 (user reported slightly too fast)

### Phase 3: Advanced Navigation
- **ReturnLink PAGE_MAP finalization** — all 36 webtext↔vault contextual mappings; blocked until webtext URLs stabilize
- **Bridge links component** — reads frontmatter `bridge` field, renders cross-references to webtext counterparts
- **Node metadata component** — apparatus-style YAML display
- **Exit node indicators** — signals when a vault page is near a webtext portal; two approaches sketched (computed distance map vs. hand-curated frontmatter tags), neither started

### Deployment
- Create GitHub repo, configure GitHub Pages workflow, push
- Verify all relative links (env.html, index.html) resolve correctly at deployed URL

### Documentation Debt
- LAYOUT-DECISIONS.md: D9–D13+ decisions implemented but not formally written up
