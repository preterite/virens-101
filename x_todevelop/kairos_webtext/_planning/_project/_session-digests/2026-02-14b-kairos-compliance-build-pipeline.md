---
created: 2026-02-14 15:45
type: session-digest
status: current
project: kairos-virens-101-webtext
session-date: 2026-02-14
threads-touched: [ai-disclosure, ascii-diagrams, build-infrastructure, css-architecture, kairos-compliance, vault-scope, visual-design-system]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural, drafting]
breakthrough-level: major
outputs-created:
  fragments: []
  content-modified:
    - _design/assets/fonts/bitter.woff2
    - _design/assets/fonts/fraunces.woff2
    - _design/assets/fonts/outfit.woff2
    - _design/assets/fonts/worksans.woff2
    - _design/assets/css/common.css
    - _design/assets/css/nexus.css
    - _design/assets/css/student.css
    - _design/assets/css/designer.css
    - _design/assets/css/supporting.css
    - _design/assets/css/init.css
    - _design/templates/page-top.html
    - _design/templates/page-bottom.html
    - _design/templates/page-manifest.txt
    - _design/templates/build-pages.zsh
    - _build/ (35 HTML pages + all assets)
    - _build/prototype-diagrams.html
    - _build/js/interactions.js
  tracking-docs-modified:
    - _planning/_project/kairos-compliance-checklist.md
priority-changes:
  - "CSS architecture and build pipeline now exist — content conversion can begin"
  - "Vault scope resolved as external companion — submission scope narrowed to ~36 pages"
title: "Session Digest: Kairos Compliance Infrastructure and Build Pipeline"
aliases: ["Session Digest: Kairos Compliance Infrastructure and Build Pipeline"]
linter-yaml-title-alias: "Session Digest: Kairos Compliance Infrastructure and Build Pipeline"
modified: 2026-02-15 07:11
---

# Session Digest: Kairos Compliance Infrastructure and Build Pipeline

**Date:** 2026-02-14 (session b — follows init-splash-unix-heading-design)<br/>
**Project:** Kairos VIRENS 101 Webtext<br/>
**Session character:** Major infrastructure session. Reviewed Kairos style guide comprehensively, developed six-phase compliance checklist, resolved vault scope decision, built complete CSS architecture with self-hosted fonts, created HTML page templates and auto-update build script, generated all 35 non-init pages, and prototyped three ASCII diagrams. The webtext now has a working build pipeline — the shift from planning to production infrastructure.

---

## Executive Summary

- Reviewed kairos_styleguide.html and extracted all compliance requirements into four categories (Design, Code, Citation, Grammar/Style)
- Created comprehensive six-phase compliance checklist at `_planning/_project/kairos-compliance-checklist.md` (412 lines)
- RESOLVED vault scope: external companion resource hosted by Michael, not part of Kairos submission; submission scope = ~36 HTML pages
- Built complete CSS architecture: `common.css` (517 lines) + 5 track-specific override sheets, all using self-hosted WOFF2 fonts (326KB total)
- Created HTML page templates (`page-top.html`, `page-bottom.html`) with placeholder tokens for track, title, navigation, necktie images
- Created page manifest (`page-manifest.txt`) listing all 36 pages with metadata
- Built and tested `build-pages.zsh` script with build/update/check modes — successfully generated all 35 non-init pages in `_build/`
- Prototyped three ASCII diagrams: constraint arrival timeline, circulation + value appropriation, corpse→compost→garden

---

## Architectural Decisions

### 1. Vault Scope — RESOLVED

**Decision:** The Quartz-hosted vault is a companion resource hosted externally (likely WSU institutional web space), not part of the Kairos submission.

**Rationale:** No managing editor wants AEs copy-editing 170+ pages of pedagogical documentation. The webtext is the authored argument; the vault is supplementary documentary infrastructure. Michael will present it to the managing editor as an option for internal or external hosting.

**Implications:**
- All vault links in webtext use `target="_blank"`
- Vault URL must be stable before submission (prefer institutional hosting)
- env or spec page explains vault availability and webtext self-containment
- Vault does NOT need Kairos code validation, accessibility, or style guide compliance
- Submission scope: ~36 HTML pages (index + 12 nexus + 6 Vera + 6 Grant + ~12 supporting)
- Vault should still be maintained in good shape as backup if editor requests inclusion

**Supersedes:** Open question from planning phase.

### 2. CSS Architecture — base + overrides

**Decision:** `common.css` contains all shared layout, typography, navigation, @font-face declarations. Five track-specific override sheets (`nexus.css`, `student.css`, `designer.css`, `supporting.css`, `init.css`) contain only CSS custom property overrides and track-specific adjustments.

**Rationale:** Each HTML page loads exactly two stylesheets: `common.css` + track CSS. Modular for development and for the Kairos design editor (likely Rick Wysocki) who'll eventually need to navigate the CSS. Changes to shared layout propagate via common.css; track color changes are isolated.

### 3. Flat file structure

**Decision:** All HTML pages in flat directory (no subdirectories for tracks). Clear naming prefixes: `vera-01-envelope.html`, `grant-03-automating.html`, `nexus-quercus.html` (or just `quercus.html` for nexus pages), `references.html`.

**Rationale:** AEs open files in browser and code editor; deep nesting adds friction. Flat structure with predictable names enables pattern-matching during review.

### 4. Self-hosted fonts

**Decision:** All four webtext fonts (Fraunces, Work Sans, Bitter, Outfit) downloaded as WOFF2 variable fonts, served from `/fonts/` directory via `@font-face` declarations in `common.css`. No Google Fonts CDN references.

**Files:** `_design/assets/fonts/` — bitter.woff2 (92KB), fraunces.woff2 (106KB), outfit.woff2 (40KB), worksans.woff2 (88KB). Total: 326KB.

**Kairos requirement:** "we need to be able to archive everything we publish" — no third-party CDN dependencies.

### 5. Build pipeline — hybrid approach

**Decision:** Template-based build script (`build-pages.zsh`) handles boilerplate (doctype, head, nav, footer); body content edited by hand between `<!-- BODY CONTENT -->` markers after initial generation. Script has three modes: `build` (generate from template), `update` (re-wrap existing pages with fresh template while preserving body), `check` (status report).

**Rationale:** 36 pages need mechanical consistency (identical head, nav, footer) while body content requires scholarly judgment. The script ensures that template changes (adding nav items, updating footer metadata, changing Kairos issue number) propagate to all pages with a single command.

### 6. Necktie/visual scope — deliberately text-y

**Decision:** The webtext is primarily textual. Visual elements are typography, color palettes, navigation structure, and (potentially) 2-3 ASCII diagrams in `<pre>` blocks with `<span>` track colors. Necktie images appear as tie sidebar (full-height, per track) and init page background tile. No additional photographs, screenshots, or decorative illustrations.

**Rationale:** Brutalist design vocabulary already provides visual interest through heavy fonts, thick borders, bold color. CSS-generated diagrams avoid image dependencies and degrade gracefully. The argument is textual; the design should honor that.

### 7. AE-friendliness principle

**Decision:** Submission designed not just to pass inspection but to make inspecting the webtext efficient for AEs and production staff. Includes compliance manifest (combined with track palette specimen on manifest.html) documenting validation dates, file inventory, and technical specifications. Every page shares identical template structure enabling spot-checking.

**Rationale:** Michael is a former Kairos AE and knows the process. Clean, well-documented submissions signal competence, reduce revision cycles, and free AE attention for substantive feedback.

---

## Formulation Candidates

### AI Disclosure (first draft for spec page)

"This webtext was developed in sustained collaboration with Claude (Anthropic, claude-opus-4-5-20250514 and subsequent models). The AI served as developmental editor and scholarly peer reviewer throughout the project, assisting with argument architecture, literature integration, prose development, structural planning, and technical implementation including compliance verification against Kairos submission standards. Content generation was always directed by the author; Claude did not produce article sections independently or make argument decisions. The collaborative method involved iterative question-driven sessions in which the author articulated developing instincts and Claude helped systematize, ground in existing scholarship, and surface productive tensions. Development artifacts including session digests and planning documents are available in the project's companion vault."

**Status:** First draft. To be refined when spec page is drafted. Key framing decision: collaboration (Claude as intellectual interlocutor with limited agency) rather than tool use (Claude as sophisticated word processor).

### Neckties as design vocabulary

Fragment frag-23 already articulates the rationale. For the webtext: neckties function as abstract texture at the scale they appear (sidebar), not as photographs to examine. The three tie images (0x.jpg warm/floral, 0y.jpg cool/geometric, 0z.jpg neutral) map to the three authored tracks.

---

## ASCII Diagram Prototypes

Three diagrams prototyped in `_build/prototype-diagrams.html`:

### Diagram 1: Constraint Arrival Timeline (STRONG — for acer.html)
15-week timeline showing when constraints arrive across four movements. Track colors mark who introduces each constraint (student-initiated, designer-imposed, disciplinary). Left-to-right axis = YOLO up / constrain down; top-to-bottom axis = temporal progression. The one diagram the article absolutely needs — the temporal/spatial argument can't be fully made in prose.

### Diagram 3: Circulation Cycle + Value Appropriation (STRONG — for quercus.html or illicium.html)
W-P-R mapped onto production-distribution-consumption-reproduction, with value appropriation overlay showing who captures value at each stage (writer captures skill at production, reviewer captures reading experience at distribution, institution captures assessment data at consumption, field captures method at reproduction). Michael has done previous work overlaying appropriation onto circulation diagrams; this version applies the framework to the composition classroom. Two versions prototyped: full overlay and simplified W-P-R cycle.

### Diagram 2: Corpse → Compost → Garden (BACKUP — for nyssa.html)
Three-box transformation arc. Each box shows state name, movement alignment, appearance vs. reality, operations active, and economic mode (labor → capital). Bottom loop shows transfer claim: capital enables future labor.

**Michael's preferences:** 1 and 3 are favorites, 2 as backup. All three use `<pre>` + `<span>` track colors, no image files, degrade to readable ASCII without CSS.

---

## Open Questions

1. **Which nexus page gets Diagram 3?** quercus.html (economic cycle framing) or illicium.html (circulation)? The appropriation overlay may fit better on illicium since that's where Trimbur's circulation theory lives.

2. **Manifest page design.** Will combine compliance manifest + track palette specimen as AE reference doc. Needs design work — how does the QUANTITATION key (diagram 4 from brainstorming, not prototyped as HTML but sketched) integrate with the compliance manifest?

3. **Content conversion workflow.** The build pipeline exists. The next concrete task is converting markdown content to HTML body for the pages that have drafted content. Which pages are most draft-ready and should be converted first?

4. **Init page build.** Skipped by the build script (unique layout). Needs its own assembly from the init-B-refined.html mockup, adapted to use self-hosted fonts and the new CSS architecture.

5. **interactions.js scope.** Currently a placeholder with only progress bar. Need to determine full scope: staggered fade-in? Active nav tracking on scroll? What from the design spec gets implemented, and what stays cut?

6. **CSS font path for submission.** During development, fonts live at `_design/assets/fonts/`. The build copies them to `_build/fonts/`. The `common.css` references `../fonts/`. This works for the flat `_build/` structure. Verify this path holds for final submission packaging.

---

## Discarded Directions

- **Per-track subdirectories** (e.g., `vera/01-envelope.html`): Rejected for AE-friendliness. Flat structure with naming prefixes preferred.
- **npm/build tool pipeline**: Explicitly avoided. Kairos cannot accept anything requiring npm installs. The zsh build script is self-contained and requires only standard Unix tools.
- **Decorative illustrations**: Rejected. The webtext's visual interest comes from typography, color, and layout, not photographs or clip art.
- **Google Fonts CDN**: Replaced with self-hosted WOFF2 files for archivability.

---

## Files Created This Session

| File | Type | Description |
|------|------|-------------|
| `_planning/_project/kairos-compliance-checklist.md` | Planning | 412-line six-phase compliance checklist |
| `_design/assets/fonts/bitter.woff2` | Asset | Bitter variable font (92KB) |
| `_design/assets/fonts/fraunces.woff2` | Asset | Fraunces variable font (106KB) |
| `_design/assets/fonts/outfit.woff2` | Asset | Outfit variable font (40KB) |
| `_design/assets/fonts/worksans.woff2` | Asset | Work Sans variable font (88KB) |
| `_design/assets/css/common.css` | CSS | Shared layout, typography, nav, @font-face (517 lines) |
| `_design/assets/css/nexus.css` | CSS | Nexus track overrides (25 lines) |
| `_design/assets/css/student.css` | CSS | Student track overrides (29 lines) |
| `_design/assets/css/designer.css` | CSS | Designer track overrides (25 lines) |
| `_design/assets/css/supporting.css` | CSS | Supporting page overrides (36 lines) |
| `_design/assets/css/init.css` | CSS | Init page layout (162 lines) |
| `_design/templates/page-top.html` | Template | HTML head through `<article>` open |
| `_design/templates/page-bottom.html` | Template | `</article>` through page close with nav |
| `_design/templates/page-manifest.txt` | Data | All 36 pages with metadata |
| `_design/templates/build-pages.zsh` | Script | Build/update/check pipeline (296 lines) |
| `_build/*.html` | Output | 35 generated HTML pages |
| `_build/css/*` | Output | CSS files copied |
| `_build/fonts/*` | Output | Font files copied |
| `_build/images/*` | Output | Image assets copied |
| `_build/js/interactions.js` | JS | Placeholder interaction script |
| `_build/prototype-diagrams.html` | Prototype | Three ASCII diagram prototypes |

---

## Flagged Updates

- **Compliance checklist** created and lives at `_planning/_project/kairos-compliance-checklist.md` — reference for all future compliance work
- **design-visual-v4.1.md** should be updated to reference the new CSS architecture location (`_design/assets/css/` rather than `_design/css/`)
- **Memory edit needed**: Update to reflect build infrastructure existence and vault scope resolution
