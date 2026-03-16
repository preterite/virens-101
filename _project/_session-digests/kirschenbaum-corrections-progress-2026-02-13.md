---
created: 2026-02-13
type: correction-log
status: complete
project: virens-101
tags: [kirschenbaum-corrections, citekey-additions, progress-tracking, completed]
---

# Kirschenbaum Citekey Corrections Progress Log

**Started:** 2026-02-13  
**Completed:** 2026-02-13  
**Target:** Add `[[@kirschenbaum2023prepa]]` citekeys to prose mentions  
**Decision rule:** AI/LLM/textpocalypse context → 2023prepa (all instances were this context)  
**Actual scope:** 5 files corrected (meta files with table/list mentions appropriately skipped)

---

## Citekey Placement Rules (Confirmed)

**Rule 1: First Prose Mention Only**
- Add citekey on FIRST prose mention in each file
- All subsequent mentions: bare "Kirschenbaum" (no citekey)
- **Exception**: End-of-page reference sections may repeat citekey (Scholarly Sources, Direct Citations, Background Reading, Related Materials)

**Rule 2: Never in Structural Elements**
- Never add citekeys in section headings
- Never add citekeys in tables (except reference tables at end of document)
- Never add citekeys in YAML frontmatter
- Never add citekeys in structured lists (bulleted/numbered author lists)

---

## Completed Corrections

### ✅ Phase 1: Student Reading Files (2/2 complete)

**File 1: kirschenbaum-textpocalypse-reasons-v101.md**
- Path: `g_studentreadings/kirschenbaum-textpocalypse-reasons-v101.md`
- Line 43: Added `[[@kirschenbaum2023prepa]]` to first prose mention
- Context: "Kirschenbaum provides crucial theoretical grounding..."

**File 2: kirschenbaum-textpocalypse-course-v101.md**
- Path: `g_studentreadings/kirschenbaum-textpocalypse-course-v101.md`
- Line 36: Added `[[@kirschenbaum2023prepa]]` in Context section
- Context: "You'll read Kirschenbaum's [[@kirschenbaum2023prepa]] 'Prepare for the Textpocalypse'..."

### ✅ Phase 2: Weekly Overviews (2/2 complete)

**File 3: week01-overview-course-v101.md**
- Path: `i_week01/week01-overview-course-v101.md`
- Line 55: Added `[[@kirschenbaum2023prepa]]` in Synthesis section
- Context: "This week's reading is Matthew Kirschenbaum's [[@kirschenbaum2023prepa]] 'Prepare for the Textpocalypse'..."

**File 4: week04-overview-course-v101.md**
- Path: `i_week04/week04-overview-course-v101.md`
- Line 260: Added `[[@kirschenbaum2023prepa]]` in Instructor Prompts section
- Context: "Extends Kirschenbaum's [[@kirschenbaum2023prepa]] materiality discussion..."

### ✅ Phase 3: Other Components (1/1 complete)

**File 5: ai-spec-test-reasons-v101.md**
- Path: `f_assignments/ai-spec-test-reasons-v101.md`
- Line 117: Added `[[@kirschenbaum2023prepa]]` in facilitation guide
- Context: "...their strongest reaction to Meadows or Kirschenbaum [[@kirschenbaum2023prepa]]."

### ⏭️ Files Appropriately Skipped (5 files)

These files contain Kirschenbaum mentions only in tables, headings, structured lists, or frontmatter—correctly skipped per placement rules:

1. **y_meta/citekey-conventions-workflow.md** — Reference document itself
2. **y_meta/concept-coverage-matrix-meta-v101.md** — Table mentions only
3. **y_meta/step-2a-completion-summary.md** — Headings and structured lists only
4. **y_meta/vault-conventions.md** — Structured author list only
5. **y_meta/virens-101-batch-structure-revised.md** — Numbered list only

---

## Final Summary

**Total files corrected:** 5  
**Total citekeys added:** 5 (one per file, first prose mention)  
**Citekey used:** `[[@kirschenbaum2023prepa]]` (all instances were "Textpocalypse" context)  
**Files skipped:** 5 (structural mentions only, correctly excluded per rules)  
**Context note:** No instances of materiality/forensics context requiring `@kirschenbaum2007mecha` were found

---

**Status:** ✅ COMPLETE  
**Completed:** 2026-02-13  
**Next tasks:** Salvatori and Gallagher citation checks, then Elbow corrections
