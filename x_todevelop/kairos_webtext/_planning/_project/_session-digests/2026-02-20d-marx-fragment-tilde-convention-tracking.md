---
created: 2026-02-20
type: session-digest
status: current
project: kairos-webtext
session-date: 2026-02-20
threads-touched: [acer, naming-conventions, project-infrastructure]
tags: [session-digest]
dashboard-worthy: yes
session-type: [drafting, architectural, planning]
breakthrough-level: [minor]
outputs-created:
  fragments:
    - "~marx-and-tech.md (content finalized)"
  content-modified:
    - "MOC-known-issues.md (renamed from MOC-fragments.md; full rewrite)"
    - "scene-requirements-matrix.md (all frag- references updated)"
    - "T-fragment.md (template updated for ~ convention)"
    - "unix-monsters-stub.md (3 wikilinks updated)"
    - "sources-olea.md (1 reference updated)"
    - "sources-illicium.md (1 reference updated)"
  tracking-docs-modified:
    - "MOC-known-issues.md"
    - "scene-requirements-matrix.md"
priority-changes:
  - {item: "G1 scene drafting", from: "🟡", to: "🟡", reason: "still next priority; session focused on infrastructure cleanup"}
---

# Session Digest: Marx Fragment Finalized; Tilde Naming Convention Adopted; Tracking Docs Reconciled

**Date:** 2026-02-20
**Project:** kairos-webtext
**Session character:** Two-phase session — first half developed Marx/technology theoretical content for Acer nexus and adopted the ~ naming convention for known-issue pages; second half (post-compaction) systematically updated all tracking and reference documents to reflect the new naming scheme.

---

## Executive Summary

**For dashboard "Recent Changes":**
- [x] Marx passage finalized: three-paragraph structure (axiom, apparatus, contradiction) placed in ~marx-and-tech.md as Acer-territory fragment
- [x] Tilde (~) prefix adopted as naming convention for all 24 known-issue pages; all files renamed from frag-NN-description to ~three-word-name
- [x] MOC-fragments.md rewritten as MOC-known-issues.md with full old→new concordance table, updated dataview queries, and corrected post-migration nexus assignments
- [x] scene-requirements-matrix.md fully updated: all fragment wikilinks converted, nexus-only table corrected for post-migration assignments, duplicate entry removed
- [x] T-fragment.md template updated to reflect ~ convention, known_issues directory, and new naming documentation
- [x] Three remaining files updated: unix-monsters-stub.md (3 refs), sources-olea.md (1 ref), sources-illicium.md (1 ref)

**Substantive file changes:**

| File | Change Type | Description |
|------|-------------|-------------|
| `~marx-and-tech.md` | updated | Content finalized: three-paragraph Marx passage with Acer wikilink; citekeys flagged with ? |
| 24 fragment files | renamed | frag-NN-description.md → ~three-word-name.md (all in known_issues/) |
| `MOC-known-issues.md` | created (renamed) | Full rewrite from MOC-fragments.md; old version archived |
| `scene-requirements-matrix.md` | updated | All ~25 frag- wikilinks converted to ~ names |
| `T-fragment.md` | updated | Template reflects ~ convention and known_issues directory |
| `unix-monsters-stub.md` | updated | 3 frag-24 references → ~bestiary-unix-monsters |
| `sources-olea.md` | updated | 1 frag-18 reference → ~multiple-forms-appropriation |
| `sources-illicium.md` | updated | 1 frag-19 reference → ~circulation-sites-value |

**Priority escalations:** None. Infrastructure cleanup was substantial but doesn't shift content priorities.

---

## Theoretical Breakthroughs / Key Developments

### Marx Passage for Acer Territory

**Metadata:**
- Domain/Thread(s): Acer (economy and technology)
- Type: conceptual
- Dashboard-worthy: yes
- Captured in: `~marx-and-tech.md`

**Development:** Through iterative revision, the Marx passage was refined from a single dense paragraph into a three-paragraph structure: (1) the corrected axiom — capitalists use technological change to substitute machinery for living labor, reducing necessary labor time and increasing relative surplus value; (2) the Capital vol. 1 apparatus — rising organic composition of capital, cheapening labor-power, but only living labor creates value; (3) the Grundrisse fragment on machines — automatic system, worker reduced to maintenance, living labor as moment within objectified system, with the contradiction that capital tries to eliminate what it depends on.

**Key editorial decisions:**
- Separated the control/intensification argument from the cheapening argument; passage now focuses on value-theoretic line only
- Causal chain reordered: mechanism first (substitution), consequences in sequence (reducing labor, displacing workers, increasing surplus value)
- Grundrisse material kept as distinct third paragraph with explicit source attribution, acknowledging different textual status from Capital
- Fragment placed in Acer territory (not Quercus) — the technology definition is Acer's argument

**Citekey status:** Both Marx citations use placeholder citekeys flagged with ? (`@?Marx1867Capi`, `@?Marx1892Gru`) for later correction in Bookends.

---

## Architectural Decisions / Structural Changes

### Tilde (~) Prefix for Known-Issue Pages

**Decision:** All 24 known-issue pages (formerly "fragments") use tilde prefix: `~three-word-name.md`. Published directory: `/tree/known_issues/`.

**Rationale:** Tilde is URL-safe (RFC 3986 unreserved), visually distinct from tree pages' `_` prefix, carries Unix "home" and mathematical "approximately" resonance (known-issue pages are *approximately* the full argument their nexus compresses), resists sequencing (no numbers), and rewards tech-savvy Kairos readers who read URLs.

**Alternatives considered:**
- `@` prefix — too social-media-coded for the webtext's Unix register
- `+` prefix — ambiguous (sometimes interpreted as space in query strings)
- Suffix position — rejected; keeps descriptive words at front for alphabetical scanning
- `proto-` prefix — too long after three content words

**Naming convention details:**
- Three hyphenated content words (no sequence numbers)
- Content-first for alphabetical scanning
- Two files flagged as breaking three-word limit: `~neckties-design-vocabulary-meta-v101.md` and `~neurodivergent-context-specification.md`

**Tracking document updates needed:** All completed this session.

### MOC Rename and Rewrite

**Decision:** MOC-fragments.md → MOC-known-issues.md with full content update.

**What changed beyond name swaps:**
- All four dataview queries updated from `_planning/fragments` to `_planning/known_issues`
- Added info callout documenting the naming convention change
- Added complete Old → New Name Concordance table (25 entries)
- Completed Migrations section reformatted as table with old name, new name, direction, rationale
- Cross-Nexus Resonance Map inline annotations updated to new names
- Nexus assignments corrected for post-migration state
- Old version archived to `_planning/known_issues/_archive/`

### Scene Requirements Matrix Corrections

**Beyond mechanical name swaps:**
- Nexus-Cloud Only table corrected for post-migration nexus assignments (e.g., ~new-dark-age now correctly shows Thuja, ~llm-labor-capital shows Olea)
- Duplicate ~galloway-protocol-constraint row removed
- Stale frag-10-marx-secondhand entry removed (pointed to different archive path, not in current fragment set)
- G3 scene: archive references to frag-04 and frag-03 updated to ~essay-node-process and ~genre-capital-formation (post-merge names)
- G5 and G6 scenes: archive references updated to post-merge names

---

## Formulation Candidates / Key Phrasings

1. **[Acer/Marx]** "Capitalists use technological change to substitute machinery for 'living labor' in production, reducing necessary labor time, displacing workers, and thereby increasing relative surplus value." — Core axiom revision; ready for nexus page deployment.

2. **[Acer/Marx]** "The capitalist attempts to reduce necessary labor time through the use of machinery while value still depends on labor time." — Contradiction statement; strongest sentence in the passage per editorial assessment.

---

## Open Questions

- **Category 3 fragment internals** — Four known-issue files still contain old `frag-` references in their own frontmatter (`original-frag`, `split-from`, `merged-from` fields): `~elbow-arnold-self`, `~elbow-bartholomae-writer`, `~essay-node-process`, `~student-capacity-generous`. These are provenance metadata rather than navigation links. Urgency: low. Not blocking.

- **V3 scene fragment reference** — `scene-requirements-matrix.md` line 92 still references `_planning/archive/frag-08-fifteen-week-linearity`, which is in a different archive directory from the renamed set and predates the fragment numbering system. Left as-is. Urgency: low.

- **Template filename** — `T-fragment.md` was updated in content but not renamed. Consider renaming to `T-known-issue.md` for consistency. Urgency: low; template works fine via Obsidian regardless of filename.

- **Marx citekeys** — `@?Marx1867Capi` and `@?Marx1892Gru` need correction in Bookends. Urgency: medium; blocks final citation formatting.

---

## Discarded Directions

- **Updating archive files** — Decided to leave `_planning/known_issues/_archive/` files untouched. They preserve the historical record of what the pre-merge/split originals looked like. Renaming them would erase provenance.

- **Renaming template file** — Content updated but filename `T-fragment.md` kept. Could rename later but doesn't affect functionality.

---

## Cross-References

- Prior digest: [[2026-02-20c-dashboard-update-taxus-echoes]]
- Compaction transcript: `/mnt/transcripts/2026-02-20-19-47-26-marx-tech-fragment-naming.txt`
- Content created/modified: `~marx-and-tech.md`, `MOC-known-issues.md`, `scene-requirements-matrix.md`, `T-fragment.md`, `unix-monsters-stub.md`, `sources-olea.md`, `sources-illicium.md`

---

## Flagged Updates

### Completed This Session
- [x] All 24 fragment files renamed to ~ convention
- [x] MOC rewritten and renamed
- [x] Scene requirements matrix fully updated
- [x] Template updated
- [x] unix-monsters-stub, sources-olea, sources-illicium updated
- [x] Old MOC archived

### Still Pending
- [ ] Category 3: Internal frontmatter in ~elbow-arnold-self, ~elbow-bartholomae-writer, ~essay-node-process, ~student-capacity-generous (provenance fields)
- [ ] Template filename rename: T-fragment.md → T-known-issue.md (optional)
- [ ] Marx citekeys: correct @?Marx1867Capi and @?Marx1892Gru in Bookends
- [ ] Memory: update to reflect naming convention change and tracking doc reconciliation

---

*Last updated: 2026-02-20*
