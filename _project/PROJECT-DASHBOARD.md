---
created: 2026-02-13 20:19
type: meta-tracker
status: current
project: virens-101
tags: [dashboard, meta, recent-changes]
title: VIRENS 101 Project Dashboard
aliases: [VIRENS 101 Project Dashboard]
linter-yaml-title-alias: VIRENS 101 Project Dashboard
modified: 2026-02-14
---

# VIRENS 101 Project Dashboard

**Purpose:** Surface recent changes across all tracking documents in the VIRENS 101 subvault

**Last updated:** 2026-02-14 (evening — comprehensive update)

---

## Quick Status Overview

| Area | Status | Last Updated |
|------|--------|--------------|
| **Schedule Alignment** | ✅ Complete | 2026-02-14 |
| **Difficulty Pairs** | ✅ Complete (archived) | 2026-02-13 |
| **Citation Integration (Phases 1-3)** | ✅ Complete — 72/72 rationale files | 2026-02-14 |
| **Citation Integration (Phases 4-6)** | ⏳ Not started — compliance/cleanup/registry | — |
| **ONESIE Terminology Removal** | ✅ Complete (14 files) | 2026-02-14 |
| **y_meta Reorganization** | ✅ Complete (27→9 files) | 2026-02-14 |
| **Course Development** | 🔄 Ongoing | — |

---

## Corpus Metrics

**Total prose content:** 367,482 words across 327 markdown files in 66 directories
**Published curriculum materials (a-k directories):** ~238,000 words
**Weekly materials:** ~47,500 words
**Development materials:** ~78,000 words
**Equivalent scale:** ~1,200 pages at 300 words/page

| Directory | Files | Word Count |
|-----------|-------|------------|
| a_description | 4 | 4,095 |
| b_overview | 16 | 26,345 |
| c_rationale | 15 | 31,383 |
| d_requirements | 6 | 8,486 |
| e_outcomes | 4 | 5,685 |
| f_assignments | 43 | 55,027 |
| g_studentreadings | 30 | 26,158 |
| h_policies | 20 | 43,490 |
| i_schedule + i_weekXX | 15 | 47,566 |
| j_assessment | 10 | 21,594 |
| k_reflection | 12 | 16,445 |
| x_todevelop | 127 | 78,280 |
| y_defs + z_templates + root | 24 | 2,911 |

*Metrics gathered 2026-02-14. Excludes y_meta/ and _project/ directories.*

---

## Recent Changes (February 12-14, 2026)

### Completed Work Streams

**1. ✅ Difficulty Pair Restructuring** (35 files)
- New pairings: Pair A (Salvatori+Alexander), Pair B (Meadows+Star)
- Bush removed from pair structure
- All architecture and reading files updated
- **Tracker:** [[_project/archived-audits/difficulty-pair-restructuring-progress|difficulty-pair-restructuring-progress]]

**2. ✅ Movement Boundary Corrections** (8 files)
- Downs: M1 → M2 (Week 4); README: M2 → M1 (Week 2); Library/Babel: M3 → M2 (Week 6)
- All sync-groups and Related Notes updated
- **Tracker:** [[_project/archived-audits/schedule-alignment-audit|schedule-alignment-audit]]

**3. ✅ Cycle 4 Timing Correction** (4 files)
- BEAM Source Entries: Week 9 → Week 8
- BEAM entry pacing narrative corrected

**4. ✅ SPQ Terminology Standardization** (10+ files)
- Standardized to "Sayback, Pointing, Questioning"
- Eliminated 3 variant expansions

**5. ✅ Weekly Overview Corrections** (6 files)
- Difficulty pair references fixed (Weeks 6, 8)
- Movement framing corrected (Week 9)
- Prompt inventory corrected (Week 10)
- Phantom prompts removed (Weeks 13, 15)

**6. ✅ ONESIE Terminology Removal** (14 files)
- Course files: Complete deletion from 10 weekly overview files
- Meta-files: Replaced with "single-introduction concepts" in 4 files
- x_todevelop/ files: Left as-is (obsolete planning documents)
- **Session digest:** [[_project/_session-digests/session-2026-02-14-onesie-cleanup|session-2026-02-14-onesie-cleanup]]

**7. ✅ Citation Integration Phases 1-3** (72 rationale files, ~40 citekey instances added)
- Phase 1 (Rationale file integration): 72/72 files complete (100%)
- Phase 2 (Kirschenbaum citekeys): Complete (5 files corrected)
- Phase 3 (Elbow citekeys): 20/20 files complete (100%)
- Also completed: Bernstein citekeys (3 files), DES protocol citations (8 files)
- **Tracker:** [[_project/archived-audits/citation-integration-progress|citation-integration-progress]]
- **Audit report:** [[_project/archived-audits/citation-audit-comprehensive-2026-02-14|citation-audit-comprehensive-2026-02-14]]

**8. ✅ y_meta/ Reorganization**
- Reduced from 27 files + subdirectory to 9 living reference documents
- 11 completed audit files → `_project/archived-audits/`
- 18 session digests → `_project/_session-digests/` (consolidated)
- 3 instructor guides → `b_overview/`
- 2 development narratives → `_project/`
- **Session digest:** [[_project/_session-digests/session-2026-02-14b-ymeta-cleanup|session-2026-02-14b-ymeta-cleanup]]

**Total files modified:** ~80+ across multiple directories

**Comprehensive change record:** [[_project/archived-audits/major-changes-tracker-2026-02|major-changes-tracker-2026-02]]

---

## Current Priorities

### Immediate: Citation Integration Phase 4 — First-Mention Compliance Audit
- Verify citekey appears on FIRST mention of each scholar in each file
- Check subsequent body-text mentions do NOT have citekeys (except bibliography)
- Fix files where citekey appears on 2nd/3rd mention instead of 1st
- **Estimated time:** 2-3 hours
- **Scope:** All 72 rationale files

### Next: Citation Integration Phase 5 — Structural Cleanup
- Remove citekeys from headings (if any remain)
- Remove citekeys from body-text tables (if any)
- Verify citekeys only appear in: first prose mention + bibliography/references sections
- **Estimated time:** 1-2 hours

### Then: Citation Integration Phase 6 — Scholar Registry Update
- Update `y_meta/scholar-registry-v101.md` with citekey mapping
- List all scholars, primary citekeys, files where they appear, citation counts
- Add context-map for scholars with multiple works
- **Estimated time:** 30-45 minutes

### Future
- Instructor prompts comprehensive audit
- Due date → block mapping across all 15 weeks
- Cross-mesh verification (reading → assignment → weekly → peer review chains)
- Week 14 overview decision (create or document as intentional skip)

---

## Active Reference Documents

### y_meta/ (9 living reference documents)
- vault-conventions.md — Canonical conventions
- outcomes-codes-v101.md — Outcome controlled vocabulary
- scholar-registry-v101.md — Scholar controlled vocabulary (Phase 6 target)
- citekey-conventions-workflow.md — Citation workflow reference
- dependency-map-v101.md — Dataview MOC
- synthesis-concept-inventory-meta-v101.md — Concept tracking
- concept-coverage-matrix-meta-v101.md — Coverage planning
- lessons-assignments-voice-guide-meta-v101.md — Voice/style guide
- weekly-index-template.md — Generation reference

### _project/ (project infrastructure)
- **This dashboard** — PROJECT-DASHBOARD.md
- development-narrative-meta-v101.md — Publication-ready development narrative
- learning-narrative-meta-v101.md — Publication-ready learning narrative
- batch-starter.md, virens-101-batch-structure-revised.md — Historical build docs
- README-v101-templates-retrofit.md — Template retrofit notes
- **_session-digests/** — 21 session digests (Feb 12-14, 2026)
- **archived-audits/** — 11 completed audit/progress files

---

## Vault Directory Structure (Post-Reorganization)

### Core Course Content
| Directory | Files | Purpose |
|-----------|-------|---------|
| a_description/ | 4 | Catalog description, course overview |
| b_overview/ | 16+3 | Movement overviews + instructor guides (new) |
| c_rationale/ | 15 | Design rationale and pedagogical justification |
| d_requirements/ | 6 | Prerequisites, technology, materials |
| e_outcomes/ | 4 | Course-level learning outcomes |
| f_assignments/ | 43 | Assignment prompts, peer review cycles |
| g_studentreadings/ | 30 | Reading content + justification (paired) |
| h_policies/ | 20 | Course policies |
| i_schedule/ | 1 | Consolidated semester schedule (source of truth) |
| i_week01-15/ | 14 | Weekly overview files (Week 14 empty) |
| j_assessment/ | 10 | Assessment instruments and rubrics |
| k_reflection/ | 12 | Reflection prompts and metacognitive work |

### Support and Development
| Directory | Files | Purpose |
|-----------|-------|---------|
| x_todevelop/ | 127 | Future development (Kairos webtext, etc.) |
| y_defs/ | 18 | Definition stubs |
| y_meta/ | 9 | Living reference documents |
| z_templates/ | 5 | Obsidian templates |
| _project/ | 5+32 | Dashboard, narratives, digests, archived audits |

---

## Authoritative Documents

**Schedule and structure:**
- `i_schedule/virens-101-semester-schedule-consolidated.md` — Source of truth
- `_project/archived-audits/reading-assignment-alignment-map.md` — Reading → assignment mapping (archived)

**Movement boundaries:**
- M1 (Surfacing): Weeks 1-3
- M2 (Naming): Weeks 4-7
- M3 (Operating at Scale): Weeks 8-11
- M4 (Synthesis): Weeks 12-15

**Difficulty pairs:**
- Pair A: Salvatori (W3) + Alexander (W7) — "Failure as Diagnostic"
- Pair B: Meadows (W5) + Star (W10) — "Seeing Invisible Systems"

**Citation conventions:**
- Two-mention rule: first body mention + bibliography section only
- Never in headings or body-text tables (except reference tables)
- Context-appropriate citekey selection when multiple works by same author
- See `y_meta/citekey-conventions-workflow.md` for full reference

---

## Known Issues & Open Questions

### Week 14 Overview
- Presentations week has no overview file
- Directory exists but is empty
- Decision needed: Create overview or explicitly document as skip?

### Citation Work Phases 4-6
- Phase 4: First-mention compliance audit needed across 72 files
- Phase 5: Structural cleanup (verify no citekeys in headings/tables)
- Phase 6: Scholar registry needs citekey mapping update
- **Note:** `citation-integration-progress.md` (now archived) has stale summary statistics in its lower sections that contradict the updated header. The header accurately reflects completion; the Summary Statistics table and footer were not updated before archival.

### Template Documentation
- weekly-index-template.md (comprehensive generation guide) and T_week_index_v101.md (compact Obsidian template) serve distinct purposes
- Worth noting distinction in vault-conventions.md — low priority

### Kairos Webtext (x_todevelop/)
- Init splash page design locked in (broadside + misregistered ghost layers + breathing animation)
- Unix heading prefix design locked in (5×7 bitmap cursor at 40% opacity)
- Pending: Integration with build system, CSS template for supporting pages
- See `x_todevelop/kairos_webtext/_planning/_project/_session-digests/` for detailed progress

### Future Verification
- Instructor prompts comprehensive audit
- Due date → block mapping across all 15 weeks
- Cross-mesh verification (reading → assignment → weekly → peer review chains)

---

## How to Use This Dashboard

**Check for recent changes:**
- Review "Recent Changes" section above
- Check "Quick Status Overview" for current state of all work streams

**Dive deeper:**
- Session digests in `_project/_session-digests/` provide detailed accounts
- Archived audit files in `_project/archived-audits/` document completed verification work
- Reference documents in `y_meta/` define conventions and controlled vocabularies

**Update this dashboard:**
- Add new items to "Recent Changes" when work streams complete
- Update "Quick Status Overview" when status changes
- Update "Current Priorities" when tasks complete or new priorities emerge
- Update "Last updated" date at top

---

## Related Projects

**Kairos Webtext** (`x_todevelop/kairos_webtext/`)
- Separate tracking in `_planning/_project/_session-digests/`
- 7 session digests (Feb 11-14, 2026)
- Visual design system being developed in parallel with course materials

**Graduate Seminar (ENGL 501)** — Not yet begun
- Will use 101 course materials + meta-documentation as training materials
- Instructor guides in b_overview/ serve dual purpose

---

_This dashboard lives in `_project/` to serve as the entry point for understanding recent project activity._
_Update this file whenever major tracking documents are modified._
