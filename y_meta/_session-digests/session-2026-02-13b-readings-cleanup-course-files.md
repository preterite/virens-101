---
created: 2026-02-13
type: session-digest
status: current
project: virens-101
session-date: 2026-02-13
threads-touched: [difficulty-pairs, reading-alignment, schedule-consistency]
tags: [session-digest]
---

# Session Digest: Course-Facing Reading Files Cleanup (All 15)

**Date:** 2026-02-13
**Project:** VIRENS 101
**Session character:** Systematic cleanup of all student-facing (-course-) reading files in g_studentreadings/ to match authoritative consolidated schedule. Also completed teacher-facing (-reasons-) corrections for the 5 difficulty-pair readings (salvatori, alexander, meadows, star, bush). Discovered 6 additional -course- files with wrong week numbers beyond the original difficulty-pair scope.

## Architectural Decisions

### 1. No difficulty pair references in student-facing -course- reading files
Decision: The -course- reading files do NOT reference difficulty pairs. This framing lives in the week overview files (i_weekNN/) and in the -reasons- rationale files. Rationale: reduces maintenance burden and keeps the student-facing reading notes focused on the individual reading rather than structural apparatus.

### 2. Consolidated schedule is authoritative for week assignments
When -course- files disagree with the consolidated schedule, the schedule wins. The i_weekNN/ overview files were already updated in prior sessions; the consolidated schedule was updated first during the Kairos/VIRENS schedule reconciliation.

### 3. Context sections rewritten (not just week numbers patched)
When a week number change broke the surrounding Context paragraph's framing (e.g., wrong movement, wrong companion reading, wrong activity references), the entire Context section was rewritten to match the reading's actual position in the semester.

## Work Completed

### Batch 1: Difficulty-Pair -course- Files (4 files)
Completed earlier in this session (carried from session-2026-02-13a):

| File | Old Week | New Week | Context Rewrite? |
|------|----------|----------|-----------------|
| salvatori-course | W2 | **W3** | Yes — removed false Ong pairing, reframed around prior course work |
| alexander-course | W6 | **W7** | Yes — reframed as final week of M2, added Constraint Audit context |
| meadows-course | W5 | W5 | No — already correct |
| star-course | W11 | **W10** | Yes — reframed as mid-M3 with Bush companion and BEAM Portfolio |

### Bush -course- and -reasons- Files
Completed earlier in this session: removed all difficulty pair references (4 edits to -reasons-, 2 edits to -course-). Bush explicitly marked as "not part of the formal difficulty pair structure."

### Batch 2: Difficulty-Pair -reasons- Files (4 files)
| File | Changes |
|------|---------|
| salvatori-reasons | "Week 2 placement" → "Week 3 placement"; "develop Week 2 activity" → "Week 3" |
| alexander-reasons | Pair B→Pair A rewrite; W6→W7 in activities, timing, experiential grounding sections |
| meadows-reasons | Pair B with Alexander → Pair B with Star ("Seeing Invisible Systems") |
| star-reasons | Pair A with Salvatori → Pair B with Meadows ("Seeing Invisible Systems"); all W11→W10 |

### Batch 3: Remaining -course- Files (6 files, newly discovered)
| File | Old Week | New Week | Context Rewrite? |
|------|----------|----------|-----------------|
| downs-rhetoric-course | W3 | **W4** | Yes — reframed as final week of M1, added Literacy Narrative connection |
| readme-examples-composite-course | W4-5 | **W2** | Yes — wrong movement (M2→M1), reframed alongside Ong |
| library-babel-composite-course | W8 | **W6** | Yes — wrong movement (M3→M2), reframed around classification |
| jackson-body-palimpsest-course | W7 | **W6** | Yes — removed M3 transition framing, paired with Library/Babel |
| brooks-silver-bullet-course | W9 | **W8** | Yes — reframed as first week of M3 |
| ribes-jackson-databite-course | W10 | **W11** | Partial — added "final week of movement" framing |

Additional fix: library-babel-composite-course had stale "Star (Week 11)" cross-reference → corrected to "Star (Week 10)".

## Current State: Complete Authoritative -course- Files

All 15 student-facing reading -course- files now match the consolidated schedule:

| Week | Reading(s) | -course- file verified |
|------|-----------|----------------------|
| W1 | Kirschenbaum | ✅ (was already correct) |
| W2 | Ong + README examples | ✅ both corrected |
| W3 | Salvatori | ✅ corrected |
| W4 | Downs | ✅ corrected |
| W5 | Meadows | ✅ (was already correct) |
| W6 | Library/Babel + Jackson | ✅ both corrected |
| W7 | Alexander | ✅ corrected |
| W8 | Brooks | ✅ corrected |
| W9 | (none) | N/A |
| W10 | Star + Bush | ✅ both corrected |
| W11 | Ribes & Jackson | ✅ corrected |
| W12 | Norman | ✅ (was already correct) |
| W13 | Bernstein | ✅ (was already correct) |

## Open Questions

### 1. README placement at W2 — movement alignment
README -course- file now says Week 2, Movement 1, alongside Ong. But the sync-group in its frontmatter still says `movement2-readings` and its Related Notes still point to `movement2-naming-course-v101`. These need updating (frontmatter + Related Notes) but were not touched since instruction was to fix Context sections where week numbers broke framing.

### 2. Library/Babel and Jackson at W6 — movement boundary
Both now say Week 6, Movement 2. The consolidated schedule confirms this. But both files' frontmatter sync-groups may need review. Jackson's sync-group says `movement2-readings` (correct). Library/Babel's Related Notes reference Star at W10 (now corrected) — needs a broader cross-reference review.

### 3. Star -reasons- "Connection to Course Activities" section
Rewrote Week 11 → Week 10 activity list, but the new activities (BEAM Portfolio, folder organization, Eli Review Cycle 5) were inferred from the Week 10 overview rather than confirmed against detailed weekly plans. May need verification.

### 4. Salvatori -reasons- "Week 3 activities" list
Still says "Reading Salvatori (following Ong from Week 2)" — this is technically correct (Ong IS Week 2), but the activity list below it references "Literacy Narrative draft development" which may be a W4 activity now. Needs verification against week plans.

## Remaining Work

### Immediate next step: 10 -reasons- files
The following teacher-facing rationale files have NOT been reviewed or corrected:
1. kirschenbaum-textpocalypse-reasons-v101.md
2. ong-writing-restructures-consciousness-reasons-v101.md
3. downs-rhetoric-reasons-v101.md
4. readme-examples-composite-reasons-v101.md
5. library-babel-composite-reasons-v101.md
6. jackson-body-palimpsest-reasons-v101.md
7. brooks-silver-bullet-reasons-v101.md
8. ribes-jackson-databite-reasons-v101.md
9. norman-design-everyday-reasons-v101.md
10. bernstein-blood-reasons-v101.md

These should be checked against their now-authoritative -course- files for week numbers, movement framing, and cross-references. The 5 already-corrected -reasons- files (salvatori, alexander, meadows, star, bush) are done.

### Follow-up: frontmatter sync-group and Related Notes audit
Several files have frontmatter sync-groups and Related Notes that still reference old movement assignments (especially README at M2 instead of M1). This is a separate pass from the week-number/context cleanup.

### Follow-up: progress tracker update
difficulty-pair-restructuring-progress.md needs updating to reflect completed work and expanded scope (now covers all 15 readings, not just 4 difficulty-pair readings).

## Cross-References

- Prior digest: [[session-2026-02-13a-phase1-verification-complete]]
- Progress tracker: [[difficulty-pair-restructuring-progress]]
- Authoritative schedule: [[virens-101-semester-schedule-consolidated]]

## Flagged Updates

- [ ] Progress tracker: Update Phase 2 status to reflect all 15 -course- files complete, 5/15 -reasons- files complete, 10 remaining
- [ ] README frontmatter: sync-group should be movement1-readings, not movement2-readings
- [ ] README Related Notes: movement context link needs updating
- [ ] Library/Babel and Jackson: verify frontmatter sync-groups match W6/M2 placement
