---
created: 2026-02-14
type: session-digest
status: current
project: kairos-virens-101-webtext
session-date: 2026-02-14
threads-touched: [vault-scope, navigation-architecture, webtext-vault-boundary, fragment-pages, kairos-compliance, quartz-infrastructure]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural]
breakthrough-level: major
outputs-created:
  fragments: []
  content-modified: []
  tracking-docs-modified: []
priority-changes:
  - "Quartz customization research elevated to immediate blocker for vault navigation implementation"
  - "Fragment pages deferred as separate concern from vault navigation architecture"
title: "Session Digest: Vault–Webtext Navigation Architecture"
aliases: ["Session Digest: Vault–Webtext Navigation Architecture"]
linter-yaml-title-alias: "Session Digest: Vault–Webtext Navigation Architecture"
---

# Session Digest: Vault–Webtext Navigation Architecture

**Date:** 2026-02-14 (session c — follows kairos-compliance-build-pipeline)
**Project:** Kairos VIRENS 101 Webtext
**Session character:** Architectural session resolving the fundamental relationship between webtext and vault as navigational/structural entities. Began with fragment page concerns, escalated to the core question of how the vault functions as evidence base vs. authored space, and produced a concrete navigation architecture for webtext↔vault transitions. Ended with identification of Quartz customization as the constraining unknown blocking implementation.

---

## Executive Summary

**For dashboard "Recent Changes":**
- [x] Established four-tier page taxonomy: Supporting (frame), Nexus (intervention), Tracks (narrative), Vault (evidence)
- [x] Resolved vault navigation architecture: Approach 4+2 hybrid — contextual entry links with URL parameter passing and vault-side return infrastructure
- [x] Identified "contextual portal" pattern: every webtext page's "Enter Vault" link occupies same visual position but links to page-specific vault destination, creating paired entry/exit nodes
- [x] Deferred fragment page concerns as separate from vault architecture — fragments are authored webtext content, not vault content
- [x] Identified Quartz customization as constraining unknown; produced shopping list of 4 documents needed for implementation decisions

**Substantive file changes:**
| File | Change Type | Description |
|------|-------------|-------------|
| (no files modified) | — | Session was purely architectural/decisional |

**Priority escalations:**
| Item | From | To | Reason |
|------|------|-----|--------|
| Quartz config/component research | ⚪ | 🔴 | Blocks vault navigation implementation; need `quartz.config.ts`, `quartz.layout.ts`, custom component docs, and static asset injection docs |
| Fragment page design | 🟡 | 🟢 | Separated from vault architecture; can be addressed independently later |

---

## Theoretical Breakthroughs / Key Developments

### Four-Tier Page Taxonomy

**Metadata:**
- Domain/Thread(s): [navigation-architecture, vault-scope, webtext-vault-boundary]
- Type: conceptual
- Dashboard-worthy: yes
- Captured in: this digest

**Discovery:** The webtext's pages resolve into four functionally distinct tiers with different relationships to the argument:

1. **Supporting** (unix-themed): Webtext infrastructure — the frame the argument hangs in
2. **Nexus** (tree-themed): Theoretical/pedagogical argument — "This is my intervention"
3. **Tracks** (human-themed, Grant and Vera): Narrative — carefully sculpted examples
4. **Vault** (course-themed): Pedagogical evidence — the complete evidentiary package

**Implications:**
- Tiers 1/2/3 are the authored webtext submitted to Kairos (~36 pages)
- Tier 4 is the external evidence base, hosted separately, not subject to Kairos compliance
- All three webtext tiers (1/2/3) can link into the vault (tier 4), but each entry point is contextually chosen
- The taxonomy clarifies that "fragment pages" (bestiary, Unix glossary, Elbow personal writing) belong in tier 1/2/3 as authored content, not in tier 4 as course materials
- This distinction resolves the earlier muddle about what fragments are — they're authored argument at a different granularity, not vault overflow

### Vault as Verification Layer (Not Just Documentation)

**Metadata:**
- Domain/Thread(s): [vault-scope, webtext-vault-boundary]
- Type: conceptual
- Dashboard-worthy: yes
- Captured in: this digest

**Discovery:** The vault's function isn't supplementary illustration — it's the verification layer that gives the Grant/Vera narratives their scholarly credibility. Michael's formulation: "Grant and Vera are author-curated fictions, and that's going to be obvious — so as a reader, my impulse would be to say, 'OK, let me try my own Grant path or Vera path through the materials and see if I buy what you're saying.'"

The vault provides the "raw uncurated experience of ALL the course materials" as a navigable alternative to the authored tracks. This is analogous to providing a dataset alongside a quantitative study, or field notes alongside an ethnography.

**Implications:**
- The vault is *load-bearing* for the argument's credibility, even though it's not part of the Kairos submission
- Vault hosting must be stable and accessible at time of publication (institutional hosting preferred, repository snapshot as fallback)
- The env.html or spec.html page needs to theorize this relationship explicitly — explaining that the authored webtext and the raw vault exist in exactly the tension between curation and accumulation that the article describes
- The "Enter Vault" navigation is not an optional feature but an argument-essential affordance

---

## Architectural Decisions / Structural Changes

### Webtext↔Vault Navigation: Approach 4+2 Hybrid

**Decision:** Combine Approach 4 (static contextual links with vault-side return infrastructure) and Approach 2 (URL parameter passing for dynamic return links).

**How it works:**
- Every webtext page (supporting/nexus/tracks) has an "Enter Vault" nav element in a consistent visual position
- Each "Enter Vault" link points to a vault page contextually relevant to that specific webtext page, with a `?from=pagename` URL parameter appended
- Example: `taxus.html` links to `vault-constraint-audit-template.html?from=taxus`
- Vault pages read the `?from=` parameter and render a "Return to [Page Name]" link in the right sidebar
- Readers navigate associatively through vault interlinks; the return mechanism persists across vault pages via `sessionStorage` (survives tab navigation, scoped to single tab)

**Rationale:** Keeps the webtext fully static (just `<a>` tags with `target="_blank"`). All dynamic behavior lives in the vault, which is outside Kairos scope. Readers get contextual entry, persistent return paths, and the freedom to wander associatively through course materials.

**Alternatives considered:**
- Approach 1 (static paired links only): Too rigid — vault pages can only point back to one webtext page
- Approach 3 (vault-side airlock pages): Extra click, extra pages to maintain; airlocks as intermediaries add friction without proportional benefit
- Pure Approach 2 without Approach 4: Missing the vault-side navigation infrastructure (folder nav, exit indicators)
- Vault as part of submission: Rejected in session 14b; compliance burden prohibitive

**Implications for:**
- Work sequence: Quartz customization research must happen before vault navigation can be implemented
- Vault design: Requires custom right sidebar component, parameter-reading JS, and potentially sessionStorage for parameter persistence
- Content organization: Need to determine the full set of webtext→vault pairings (up to 36, but many will share vault neighborhoods)
- Webtext build pipeline: `build-pages.zsh` needs per-page vault entry URLs in the manifest

**Tracking document updates needed:**
- page-manifest.txt: Add vault-entry-url column
- kairos-compliance-checklist.md: Note that vault links are external (`target="_blank"`), not subject to Kairos compliance

### Vault Page Layout Design

**Decision (in development, not fully resolved):** Vault pages use a distinct layout from webtext pages:

- **Left sidebar:** Replace necktie image with Obsidian-style hierarchical folder navigation (shows where the reader is in course materials structure) or network-style nav. Folder hierarchy preferred as primary nav for legibility; graph view as optional "see this page in context" secondary feature.
- **Right sidebar (minimal):**
  - "Return to [webtext page name]" link (populated from `?from=` parameter)
  - Links to key supporting pages (env, spec, references)
  - Exit node proximity indicators: tagged vault pages that are natural resurfacing points, with click-distance counts to nearby exits
- **Visual identity:** Fourth palette (`--vault: #8B3A62`) signals reader has left authored webtext and entered documentary layer

**Rationale:** The layout swap from necktie→folder-nav performs the transition from authored argument to documentary evidence. The folder hierarchy makes the course materials' organizational structure visible (which is itself an argument about infrastructure). Minimal right nav keeps focus on the materials while always offering a way back.

**Alternatives considered:**
- Network graph as primary nav: Too visually noisy at page level; better as overview on vault index
- Full webtext nav in vault: Confuses the boundary between authored and documentary space
- No return infrastructure: Reader gets lost; undermines the "verification" function

**Implementation dependency:** Requires understanding Quartz's layout system, component architecture, and custom CSS/JS injection capabilities. This is the constraining unknown.

### Exit Node Proximity Indicators — Two Approaches

**Approach A (computed):** Generate a JSON distance map of vault link graph during Quartz build; vault pages read their position and display click-counts to nearby exits. Accurate but requires rebuild whenever interlinks change.

**Approach B (hand-curated):** Tag vault pages as exit-adjacent in frontmatter (`exit-nodes: [taxus, grant-02]`); vault template renders "Nearby exits" list on any page within one link of a tagged exit. More maintainable, editorially controllable.

**Decision:** Deferred pending Quartz feasibility research. Approach B preferred for maintainability unless Quartz makes Approach A trivially achievable.

### Fragment Pages — Separated from Vault Architecture

**Decision:** Fragment pages (bestiary, Unix glossary, personal writing fragments) are a separate concern from the vault navigation architecture. They are authored webtext content (tiers 1/2/3), not vault content (tier 4). Their design, scope, and compliance requirements will be addressed in a future session.

**Rationale:** The initial conversation entangled two distinct questions: (a) how does the webtext connect to the vault, and (b) what additional small pages belong in the webtext itself. Separating them clarified both.

**What was established about fragments before deferral:**
- Three distinct types identified: illustrative elaboration (bestiary), reader infrastructure (Unix glossary), performative evidence (personal writing fragments)
- Each type has a different relationship to the main argument and different navigation/discoverability needs
- Fragment pages would use supporting-track CSS and the standard template
- Total count should stay under ~8 additional pages to keep submission under ~44 pages
- The key editorial test: does each fragment justify its presence as authored argumentation rather than documentation?

---

## Formulation Candidates / Key Phrasings

1. **[vault-scope / navigation]** "Grant and Vera are author-curated fictions, and that's going to be obvious — so as a reader, my impulse would be to say, 'OK, let me try my own Grant path or Vera path through the materials and see if I buy what you're saying.'" — Michael's formulation of why vault access is argument-essential, not supplementary. Potential deployment on env.html or spec.html where the webtext–vault relationship is theorized.

2. **[vault-scope / evidence]** "The vault is the corpus from which the webtext's argument is drawn" — framing vault as evidence base analogous to dataset, field notes, or archive. Positions the vault in familiar scholarly terms for the managing editor conversation.

3. **[navigation / infrastructure]** "Contextual portal" — the design pattern where a consistent UI element (same position, same label) links to different destinations depending on the page it appears on. Describes the "Enter Vault" nav behavior. Useful shorthand for implementation discussions.

---

## Open Questions

- **Quartz component feasibility.** Can Quartz's layout system support a custom right-sidebar component with parameter-reading JS? Can the left sidebar be swapped from default to folder-explorer for vault pages? — Urgency: high; Blocking: yes; For: vault navigation implementation

- **sessionStorage vs. parameter propagation.** Which persistence mechanism for the `?from=` parameter across vault page navigation? sessionStorage is cleaner but requires JS; parameter propagation on every link is more robust but invasive. — Urgency: medium; Blocking: no (can be decided during implementation); For: vault JS architecture

- **Webtext→vault pairing map.** Which webtext pages share vault neighborhoods? How many distinct vault entry points are needed? — Urgency: medium; Blocking: no; For: manifest update and vault exit-node tagging

- **Vault visual continuity vs. discontinuity.** How much should the vault feel like the same design system vs. a distinctly different space? The `--vault: #8B3A62` palette exists but the folder-nav-replacing-necktie layout swap already signals transition. — Urgency: low; Blocking: no; For: vault CSS design

- **Managing editor conversation framing.** How to present the vault to the Kairos managing editor — as external evidence base (like a dataset), as companion resource (like a website supplement), or as something else? The framing affects editorial expectations. — Urgency: low (pre-submission); Blocking: no; For: submission strategy

---

## Discarded Directions

- **Vault-side airlock pages (Approach 3 as standalone).** Dedicated threshold pages in the vault that contextualize the transition before the reader reaches actual course materials. Rejected as standalone because it adds an extra click and set of pages without proportional benefit. The contextual entry links + parameter-reading return nav accomplish the same orienting work without intermediary pages. However, the *concept* of airlocking — providing explicit framing at the threshold between authored and documentary space — lives on in the env/spec page's theorization of the vault relationship.

- **Full Obsidian graph view as primary vault nav.** Network graphs are theoretically resonant (associative structure) but practically illegible at the page level. Reader sees a tangle of nodes. Demoted to optional secondary feature; folder hierarchy is primary wayfinding.

- **Fragment pages as vault content.** The initial framing treated fragments (bestiary, Unix glossary) as potentially vault-adjacent. Resolved: fragments are authored webtext content, not course documentation. They belong in the Kairos submission, not the vault.

---

## Cross-References

- Prior digest: [[2026-02-14b-kairos-compliance-build-pipeline]] (vault scope resolved as external companion; build pipeline created)
- Prior digest: [[2026-02-14-init-splash-unix-heading-design]] (four-palette design system including vault palette)
- Related: page-manifest.txt (needs vault-entry-url column addition)
- Related: kairos-compliance-checklist.md (vault links as external)
- Related: design-visual-v4.1.md (vault palette specification)
- Next session: Quartz implementation research — upload `quartz.config.ts`, `quartz.layout.ts`, Quartz custom component docs, Quartz static asset/script injection docs

---

## Flagged Updates

### Completed This Session
- [x] Four-tier page taxonomy established
- [x] Vault navigation architecture decided (Approach 4+2)
- [x] Fragment pages separated as independent concern
- [x] Quartz research shopping list produced

### Still Pending
- [ ] page-manifest.txt: Add vault-entry-url column for each webtext page
- [ ] kairos-compliance-checklist.md: Add note about vault links being external, not subject to Kairos compliance
- [ ] Quartz documents: Upload 4 files to project knowledge for next session (quartz.config.ts, quartz.layout.ts, custom components doc, static assets doc)
- [ ] Memory: Update to reflect vault navigation architecture decision and Quartz as blocking dependency
- [ ] Future session: Fragment page design (bestiary, Unix glossary, Elbow fragments) — scope, count, navigation, compliance

---

## Quartz Research Shopping List (For Next Session)

Priority-ordered documents to upload to project knowledge:

1. **Your actual `quartz.config.ts` and `quartz.layout.ts` files** — shows current component layout, Quartz version, existing customizations. Most informative single source.
2. **Quartz custom components documentation** — how to create a new component that renders in a layout slot (e.g., custom right sidebar with return-link logic).
3. **Quartz static asset and script injection documentation** — how to add custom CSS and JS to Quartz output (fallback path if full component authoring is too complex).
4. **Quartz layout/page architecture documentation** — how page layouts are assembled from components, how to override per-page or per-folder.

If only 2 can be gathered: prioritize #1 (actual config files) and #2 (custom components).
