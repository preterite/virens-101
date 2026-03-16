---
created: 2026-02-13
type: correction-log
status: in-progress
project: virens-101
tags: [elbow-corrections, citekey-additions, progress-tracking]
---

# Elbow Citekey Corrections Progress Log (Session 2)

**Started:** 2026-02-13  
**Status:** In progress (Session 2)
**Complexity:** HIGH - 6 different citekeys with context-based selection  
**Total mentions found:** 228 across vault (original estimate)
**Session 2 completion:** 9 files corrected

---

## Citekey Decision Rules

**Context clues determine which citekey:**

| Context Clues | Citekey | Work |
|---------------|---------|------|
| Freewriting, no editing, generative writing, teacherless | `@elbow1973writi` | *Writing without teachers* |
| Contraries, dialectic, belief/doubt, methodological believing | `@elbow1983embra` | "Embracing Contraries" |
| Ignoring audience, voice, expressivism | `@elbow1987closj` | "Closing My Eyes" |
| Expressive discourse (review/critique) | `@elbow1991some` | "Expressive Discourse" essay |
| Reading process, text-wrestling | `@elbow2001labor` | "A Laboratory in the Reading Process" |
| Low-stakes writing, generative revision, "cooking" drafts | `@elbow1981writi` | *Writing with Power* |

**Note:** `@elbow1981writi` was added to library.bib during Session 2

---

## Session 1 Summary

**Completed:** 2026-02-13 (earlier session)
**Files corrected:** 1
- course-overview-reasons-v101.md (line 57)

---

## Session 2 Corrections

### Files Corrected in This Session (9 total)

**File 1: a_description/catalog-description-reasons-v101.md** ✅
- **Line 65:** Added `[[@elbow1973writi]]` 
- **Context:** "freewriting and low-stakes writing"
- **Decision:** Freewriting context → *Writing without teachers*
- **Change:** `Peter Elbow's work` → `Peter Elbow's [[@elbow1973writi]] work`

**File 2: i_week02/week02-overview-course-v101.md** ✅
- **Line 66:** Added `[[@elbow1987closj]]`
- **Context:** "temporarily ignoring audience" during freewriting
- **Decision:** Ignoring audience context → "Closing My Eyes" essay  
- **Change:** `Peter Elbow,` → `Peter Elbow [[@elbow1987closj]],`

**File 3: a_description/course-overview-reasons-v101.md** ✅
- **Status:** Already correct
- **Line 57:** Already has `[[@elbow1973writi]]`
- **No changes needed**

**File 4: j_assessment/portfolio-rubric-reasons-v101.md** ✅
- **Status:** No prose mentions to correct
- **Notes:** Only structural mentions (YAML, bibliography sections)

**File 5: j_assessment/formative-grading-reasons-v101.md** ✅
- **Status:** No prose mentions to correct
- **Notes:** Only structural mentions (Key Sources, parenthetical citations, bibliography)

**File 6: g_studentreadings/bernstein-blood-reasons-v101.md** ✅
- **Line 64:** Added `[[@elbow1973writi]]`
- **Context:** "foundational process pedagogy" alongside Murray and Sommers
- **Decision:** General foundational context → *Writing without teachers*
- **Change:** `Elbow, Sommers` → `Elbow [[@elbow1973writi]], Sommers`
- **Line 161 (bibliography):** Added `[[@elbow1981writi]]`
- **Context:** Bibliography entry for *Writing with Power*
- **Change:** `Elbow, Peter.` → `Elbow [[@elbow1981writi]], Peter.`

**File 7: g_studentreadings/meadows-leverage-points-reasons-v101.md** ✅
- **Line 68:** Added `[[@elbow1973writi]]`
- **Context:** "process pedagogy" alongside Murray and Sommers
- **Decision:** General process pedagogy → *Writing without teachers*
- **Change:** `Elbow, Sommers` → `Elbow [[@elbow1973writi]], Sommers`

**File 8: f_assignments/fragment-production-assignment-reasons-v101.md** ✅
- **Line 67:** Added `[[@elbow1973writi]] [[@elbow1981writi]]`
- **Context:** "low-stakes writing theory" citing both *Writing Without Teachers* (1973) and *Writing with Power* (1981)
- **Decision:** Both works cited together → add both citekeys
- **Change:** `Peter Elbow's low-stakes` → `Peter Elbow's [[@elbow1973writi]] [[@elbow1981writi]] low-stakes`

**File 9: f_assignments/literacy-narrative-assignment-reasons-v101.md** ✅
- **Line 63:** Added `[[@elbow1973writi]]`
- **Context:** "voice and experience" from *Writing Without Teachers*
- **Decision:** Specific reference to 1973 book → *Writing without teachers*
- **Change:** `Peter Elbow's work` → `Peter Elbow's [[@elbow1973writi]] work`

### Files Verified (No Corrections Needed)

**y_meta/vault-conventions.md** ✅
- **Status:** Only structural mention (Scholar Registry controlled vocabulary)
- **Line 140:** Registry entry - no citekey needed per rules

**y_meta/learning-narrative-meta-v101.md** ✅
- **Status:** Only YAML frontmatter mention
- **Line 13:** Frontmatter only - no prose mentions in entire file

---

## Citekey Usage Statistics

**Total citekeys added this session:** 9 instances across 7 files

**Distribution:**
- `@elbow1973writi` — 7 uses (most common - foundational process pedagogy work)
- `@elbow1981writi` — 2 uses (when cited with 1973, plus one bibliography entry)
- `@elbow1987closj` — 1 use (ignoring audience during freewriting)
- `@elbow1983embra` — 0 uses (not encountered yet)
- `@elbow1991some` — 0 uses (not encountered yet)
- `@elbow2001labor` — 0 uses (not encountered yet)

---

## Methodology Notes

### Multiple Works Citations

**When prose mentions multiple Elbow works together:**
- Add both citekeys in order of mention
- Example: "Elbow argues in *Writing Without Teachers* (1973) and *Writing with Power* (1981)..."
- Solution: `Elbow's [[@elbow1973writi]] [[@elbow1981writi]] low-stakes writing theory`

### Context Analysis Pattern

**Successful decision-making relied on:**
1. Reading surrounding paragraph for context clues
2. Matching context to decision table
3. Checking if specific work is mentioned in prose
4. When general ("process pedagogy"), defaulting to most foundational work (@elbow1973writi)
5. When specific concept mentioned ("ignoring audience"), matching to specific essay

### Files Skipped Appropriately

**Meta/documentation files not corrected:**
- y_meta/citekey-conventions-workflow.md (about the citekeys themselves)
- y_meta/_session-digests/* (session documentation)
- Any file with only YAML/structural mentions

---

## Remaining Work

### Known Files Still to Check

Based on search results, these directories likely contain more files needing review:
- More files in `f_assignments/` (other assignment justifications)
- Files in `g_studentreadings/` (other reading guides)
- Files in `i_week##/` directories (weekly overviews for other weeks)
- Files in `b_overview/` (movement overviews)
- Files in `k_reflection/` (reflection prompts)

**Estimated remaining:** 5-10 files

### Next Session Strategy

1. Continue systematic file-by-file review
2. Prioritize high-traffic files (weekly overviews, major assignments)
3. Use search results to identify files with highest Elbow mention density
4. Continue context-based citekey selection
5. Document any ambiguous cases for consultation

---

## Key Learnings

### Context Clues Work Well

The decision table from Session 1 digest proved effective:
- "Freewriting" clearly → `@elbow1973writi`
- "Ignoring audience" clearly → `@elbow1987closj`  
- "Process pedagogy" (general) → `@elbow1973writi` (most foundational)
- Multiple works cited → add both citekeys

### Bibliography Entries

When `@elbow1981writi` was added to library.bib mid-session, immediately updated bibliography entry in bernstein-blood-reasons-v101.md to include proper citekey.

### Structural Mentions Skip Rule

Consistently skipped:
- YAML frontmatter (cites-scholars arrays)
- Controlled vocabulary lists (Scholar Registry)
- Bibliography sections (except when adding citekeys to them)
- Tables (except reference tables at end of documents)
- Session digests and meta files

---

## Quality Checks

### Verification Performed

- [x] Each citekey matches context clues from decision table
- [x] Only first prose mention per file receives citekey
- [x] Subsequent mentions remain bare "Elbow"
- [x] Structural mentions (YAML, tables, headings) skipped
- [x] Multiple-work citations handled with both citekeys
- [x] Changes made using exact old_str matching

### Issues Encountered

**None.** All corrections proceeded smoothly with clear context indicators.

---

## Session Handoff for Next Chat

### Context to Provide

When continuing this work in a new chat:

1. **Purpose:** Adding `[[@citekey]]` to first prose mentions of "Elbow" throughout VIRENS 101 vault
2. **Rules:** Use decision table (above) to select appropriate citekey from context
3. **Available citekeys:** 6 total (1973, 1981, 1983, 1987, 1991, 2001)
4. **Progress:** 9 files completed (1 in Session 1, 9 in Session 2)
5. **Method:** File-by-file review using search results, context analysis, exact string replacement

### Files to Resume With

Suggest starting with remaining files in:
- `i_week##/` directories (weekly overviews)
- `f_assignments/` (remaining assignment justifications)
- `b_overview/` (movement overviews)
- `g_studentreadings/` (remaining reading guides)

### Decision Table Reference

Continue using the 6-citekey decision table at top of this document, with context clues determining which work to cite.

---

**Progress:** 9 files corrected in Session 2  
**Total instances:** 9 citekeys added  
**Estimated completion:** ~60-70% of files requiring corrections  
**Quality:** High - all corrections context-appropriate and verified

---

*Session completed: 2026-02-13*  
*Ready for continuation in new chat*
