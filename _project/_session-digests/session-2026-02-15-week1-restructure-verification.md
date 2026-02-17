# Session Digest: Week 1 Restructure Verification

**Date**: 2026-02-15
**Task**: Verify and complete restructuring of Week 1 to place envelope exercise in Block 1 and syllabus review in Block 5-6 (writing before administration)
**Principle**: Writing comes FIRST, always. Syllabus review is deferred until students have had sustained writing time.

---

## Key Decision

**Week 1 block order**: Envelope exercise Block 1, writing Blocks 2-5, syllabus review Block 6. This enacts "YOLO up, constrain down" at the course's opening moment — students generate before encountering the system that organizes their work.

## Audit Results

### Files verified as correct (8 files)

All block-level scheduling files already reflected the correct structure:

1. `i_week01/week01-overview-course-v101.md` — Block table, all 6 block details, instructor notes ("Must happen Block 1," "Syllabus review happens in Block 6")
2. `i_schedule/virens-101-semester-schedule-consolidated.md` — Block matrix correct, note reads "Syllabus review deliberately placed at end of week"
3. `b_overview/tech-wpr-integration-meta-v101.md` — Block table correct, "students write first, constrain later"
4. `b_overview/instructor-setup-checklist-meta-v101.md` — "Block 1—first thing in the course" / "Block 6—end of first week"
5. `b_overview/course-time-structure-course-v101.md` — "syllabus review (end of Week 1)"
6. `b_overview/M1-surfacing-overview-course-v101.md` — No block-level conflict
7. `b_overview/M1-surfacing-overview-reasons-v101.md` — No block-level conflict
8. `_project/development-narrative-meta-v101.md` — "Kirschenbaum before syllabus" (correct direction)

### File fixed (1 file, 1 edit)

**`c_rationale/course-time-structure-reasons-v101.md`** — "Lost time" accounting table

- **Before**: `Syllabus day | 2 | First day orientation` — implied syllabus comes first, overcounted blocks
- **After**: `Syllabus review | 1 | End of Week 1, Block 6 (writing comes first)` — accurate label, correct block count
- Freed 1 block moved to flex buffer (2→3) to maintain total of 28 lost blocks and 62 available

### Files not in scope

- Kairos webtext build files (`x_todevelop/kairos_webtext/_build/`) reference "First Day" as a scene title, not as block ordering — no change needed
- Coverage matrix and page manifest use "first day" as scene labels — no change needed

## Memory Update

Added to memory: "Week 1 restructure: envelope exercise Block 1, syllabus review Block 5-6. Writing comes FIRST, always."

---

**Session complete**: 2026-02-15
**Files modified**: 1 (c_rationale/course-time-structure-reasons-v101.md)
**Files verified**: 8
**Continuation**: Week 1 restructure complete. No remaining files reference the old Block 1 syllabus placement.
