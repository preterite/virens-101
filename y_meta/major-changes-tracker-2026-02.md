---
created: 2026-02-14
type: change-tracker
status: current
project: virens-101
tags: [meta, alignment-work, change-tracking, february-2026]
---

# Major Changes Tracker: February 2026 Alignment Work

**Purpose:** Comprehensive record of major architectural changes made during February 2026 systematic alignment between VIRENS 101 course design and Kairos webtext representation.

**Period covered:** February 12-14, 2026

**Total files modified:** ~60+ across multiple directories

---

## 1. Difficulty Pair Restructuring

**Status:** ✅ **COMPLETE**

**What changed:**
- **Old pairings:**
  - Pair A: Salvatori (W3) + Star (W10) — "Visibility/Surfacing"
  - Pair B: Meadows (W5) + Alexander (W7) — "Intervention/Fit"
- **New pairings:**
  - **Pair A:** Salvatori (W3) + Alexander (W7) — "Failure as Diagnostic"
  - **Pair B:** Meadows (W5) + Star (W10) — "Seeing Invisible Systems"
- **Bush status:** Removed from difficulty pair structure (now independent reading, W10)

**Rationale:** Temporal proximity matters for pedagogical effectiveness. The 4-week gap (Salvatori→Alexander) and 5-week gap (Meadows→Star) create tighter complementary pairings than the original 7-week gap (Salvatori→Star).

**Sessions:** 2026-02-12c, 2026-02-13a, 2026-02-13b, 2026-02-13c

**Files modified:** 35 files
- 5 architecture files (consolidated schedule + 4 week overviews)
- 30 reading files (15 -course-, 15 -reasons-)

**Documentation:**
- Session digests: [[session-2026-02-12c-difficulty-pair-restructuring]], [[session-2026-02-13a-phase1-verification-complete]], [[session-2026-02-13b-readings-cleanup-course-files]], [[session-2026-02-13c-reasons-files-complete]]
- Progress tracker: [[difficulty-pair-restructuring-progress]] (needs final update)

---

## 2. Movement Boundary Corrections

**Status:** ✅ **COMPLETE**

**What changed:**
- **Downs reading:** M1 → M2 (Week 4 is M2 opening, not M1 closing)
- **README examples:** M2 → M1 (corrected frontmatter + Related Notes)
- **Library/Babel composite:** M3 → M2 (corrected frontmatter + Related Notes)
- All sync-groups updated: movement1-readings, movement2-readings, movement3-readings, movement4-readings

**Authoritative source:** Consolidated schedule defines movement boundaries as:
- M1 (Surfacing): Weeks 1-3
- M2 (Naming): Weeks 4-7
- M3 (Operating at Scale): Weeks 8-11
- M4 (Synthesis): Weeks 12-15

**Sessions:** 2026-02-13c, 2026-02-13d

**Files modified:** 8 reading files (4 -course-, 4 -reasons-)
- downs-rhetoric-course-v101.md
- downs-rhetoric-reasons-v101.md
- readme-examples-composite-course-v101.md
- readme-examples-composite-reasons-v101.md
- library-babel-composite-course-v101.md
- library-babel-composite-reasons-v101.md
- jackson-body-palimpsest-reasons-v101.md
- brooks-silver-bullet-reasons-v101.md

**Documentation:**
- Session digest: [[session-2026-02-13c-reasons-files-complete]]

---

## 3. Cycle 4 Timing Correction

**Status:** ✅ **COMPLETE**

**What changed:**
- Peer Review Cycle 4 (BEAM Source Entries): Week 9 → Week 8
- Week 9 is conference week with no class meetings
- BEAM entry pacing narrative corrected (removed fabricated sequential Entry #1/Entry #2 timeline)

**Sessions:** 2026-02-13d

**Files modified:** 4 assignment files
- annotated-bibliography-assignment-course-v101.md (3 week references corrected)
- annotated-bibliography-assignment-reasons-v101.md (substantive rewrite of pacing narrative)
- peer-review-protocol-assignment-course-v101.md (table updated)
- eli-review-student-guide-course-v101.md (list item updated)

**Documentation:**
- Session digest: [[session-2026-02-13d-assignments-cycle4-fix]]

---

## 4. SPQ Protocol Terminology Standardization

**Status:** ✅ **COMPLETE**

**What changed:**
- **Standardized to:** "Sayback, Pointing, Questioning" (from peer review cycle criteria files)
- **Eliminated variants:**
  - "Summarize, Praise, Question"
  - "Summarize, Point to Potential, Question"
  - "Strengths, Potential, Questions"

**Sessions:** 2026-02-13e, 2026-02-13f

**Files modified:** 10+ files
- 4 weekly overview files (Weeks 5, 6, 7, 10)
- 6 peer review cycle criteria files (Cycles 1-6) — verified already correct
- Potentially others verified but not modified

**Authoritative source:** f_assignments/peer_review_cycles/ criteria files

**Documentation:**
- Session digests: [[session-2026-02-13e-weekly-overview-sweep]], [[session-2026-02-13f-overview-corrections]]

---

## 5. Weekly Overview Systematic Corrections

**Status:** ✅ **COMPLETE**

**What changed:**
- **Week 6:** Forward links — Pair B → Pair A reference for Week 7
- **Week 8:** Backward links — Pair B → Pair A reference for Week 7
- **Week 9:** Movement framing — "Threshold between M2 and M3" → "M3 (Conference Week)"
- **Week 9:** Fragment target — 25-35 → 28-35 (cumulative floor should not decrease)
- **Week 10:** Prompt inventory — Removed phantom prompts (5.4, 6.5, 7.4); added correct prompts from Weeks 1-8
- **Week 13:** Removed non-existent Prompt 13.3 from attention-flag
- **Week 15:** Removed non-existent Prompt 15.2 from attention-flag

**Sessions:** 2026-02-13e (sweep), 2026-02-13f (corrections)

**Files modified:** 6 weekly overview files
- week06-overview-course-v101.md
- week08-overview-course-v101.md
- week09-overview-course-v101.md
- week10-overview-course-v101.md
- week13-overview-course-v101.md
- week15-overview-course-v101.md

**Files verified clean:** 8 weekly overview files (Weeks 1, 2, 3, 4, 7, 11, 12, 15)

**Missing file:** Week 14 overview (presentations week — empty directory, intentionally undeveloped)

**Documentation:**
- Session digests: [[session-2026-02-13e-weekly-overview-sweep]], [[session-2026-02-13f-overview-corrections]]
- Alignment audit: [[schedule-alignment-audit]]

---

## 6. ONESIE Terminology Removal

**Status:** ✅ **COMPLETE**

**What changed:**
- Removed all "ONESIE" (One New Essential Idea, Introduced Explicitly) planning terminology
- **Course files:** Complete deletion of all ONESIE references
- **Meta-files:** Term replacement with "single-introduction concepts" or descriptive language
- **x_todevelop/ files:** Left as-is (obsolete planning documents)

**Rationale:** ONESIE concept remains valid as organizational principle (concepts requiring specific week placement), but acronym created confusion in student/teacher-facing materials. Solution preserves planning logic while eliminating jargon.

**Sessions:** 2026-02-14

**Files modified:** 14 files
- 10 weekly overview files (complete deletion)
- 4 meta-files (term replacement):
  - concept-coverage-matrix-meta-v101.md
  - synthesis-concept-inventory-meta-v101.md
  - development-narrative-meta-v101.md
  - learning-narrative-meta-v101.md

**Replacement patterns:**
- "ONESIE" / "ONESIES" → "single-introduction concept(s)"
- "ONESIE: One New Essential Idea, Introduced Explicitly" → "concepts requiring specific week placement"
- Section headers: "### ONESIES Tracking" → "### Single-Introduction Concepts Tracking"

**Documentation:**
- Session digest: [[session-2026-02-14-onesie-cleanup]]

---

## 7. Citation Integration Work

**Status:** ⏳ **IN PROGRESS**

**What's underway:**
- Citekey integration across 36 rationale files (completed 17/36)
- Kirschenbaum corrections (154 instances needing citekeys added)
- Elbow corrections (150 instances needing citekeys added)
- First-mention compliance verification across all files
- Removal of citekeys from headings/tables
- Scholar registry update with citekey mapping

**Sessions:** Multiple sessions February 13, 2026

**Files completed:** 17 of 36 rationale files (c_rationale/ directory)

**Remaining work:**
- 19 rationale files need citation integration
- Systematic Kirschenbaum citekey additions
- Systematic Elbow citekey additions
- First-mention audit across entire vault
- Heading/table cleanup
- Scholar registry citekey mapping

**Documentation:**
- Session digest: [[2025-02-13_citation-integration-files-1-17]]
- Audit reports: [[citekey-audit-library-verification-2026-02-13]], [[final-citekey-audit-priorities-2026-02-13]]
- Progress tracker: [[citation-integration-progress]] (to be created)

---

## 8. Schedule Alignment Verification

**Status:** ✅ **COMPLETE** (initial audit); ⏳ **ONGOING** (maintenance)

**What was verified:**
- All 15 week overview files align with consolidated schedule ✅
- All 30 reading files (15 -course-, 15 -reasons-) verified ✅
- All 6 peer review cycle criteria files verified ✅
- All 11 instructor prompt files located and verified ✅
- Frontmatter YAML standardized across all week overview files ✅
- All f_assignments files checked for Cycle 4 timing ✅

**Sessions:** 2026-02-12a (initial audit), 2026-02-12b (reading alignment begun), plus multiple follow-up sessions

**Documentation:**
- Master audit document: [[schedule-alignment-audit]]
- Reading alignment map: [[reading-assignment-alignment-map]]
- Session digests: [[session-2026-02-12a-schedule-alignment-audit]], [[session-2026-02-12b-reading-alignment-begun]]

---

## Completion Summary

### Fully Complete ✅
1. Difficulty pair restructuring (35 files)
2. Movement boundary corrections (8 files)
3. Cycle 4 timing correction (4 files)
4. SPQ terminology standardization (10+ files)
5. Weekly overview corrections (6 files)
6. ONESIE terminology removal (14 files)
7. Schedule alignment verification (60+ files verified)

### In Progress ⏳
1. Citation integration work (17/36 files complete)

### Total Files Modified
Approximately **60+ files** across:
- i_schedule/ (2 files)
- i_week01/ through i_week15/ (14 week overview files)
- g_studentreadings/ (30 reading files)
- f_assignments/ (4 main assignment files + 6 peer review cycle files verified)
- y_meta/ (4 meta-files)
- c_rationale/ (17 files modified, 19 remaining)

---

## Key Authoritative Documents

**Schedule and structure:**
- [[virens-101-semester-schedule-consolidated]] — Source of truth for all timing, readings, assignments

**Alignment verification:**
- [[schedule-alignment-audit]] — Week overview → schedule verification
- [[reading-assignment-alignment-map]] — Reading → assignment mapping

**Change tracking:**
- [[difficulty-pair-restructuring-progress]] — Tracks pair restructuring work
- [[citation-integration-progress]] — Tracks citation work (to be created)
- This document — Overall change tracking

**Session digests:**
- 2026-02-12a through 2026-02-14 in y_meta/_session-digests/

---

## Next Steps

### Immediate
1. Update [[difficulty-pair-restructuring-progress]] to mark complete
2. Create [[citation-integration-progress]] to track ongoing work
3. Update [[schedule-alignment-audit]] with final completion status

### Future
1. Complete citation integration (19 remaining rationale files)
2. Systematic Kirschenbaum citekey additions
3. Systematic Elbow citekey additions
4. First-mention compliance verification
5. Scholar registry citekey mapping update

---

*Last updated: 2026-02-14*
*Maintained by: Michael Edwards with Claude assistance*
