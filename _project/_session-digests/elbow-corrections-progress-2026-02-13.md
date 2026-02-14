---
created: 2026-02-13
type: correction-log
status: in-progress
project: virens-101
tags: [elbow-corrections, citekey-additions, progress-tracking]
---

# Elbow Citekey Corrections Progress Log

**Started:** 2026-02-13  
**Status:** In progress  
**Complexity:** HIGH - 5 different citekeys with context-based selection  
**Total mentions found:** 228 across vault

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

**Note:** No *Writing With Power* (1981) or *Embracing Contraries* (book, 1986) in library.bib

---

## Completed Corrections

### File 1: a_description/course-overview-reasons-v101.md ✅
- **Line 57:** Added `[[@elbow1973writi]]` 
- **Context:** "freewriting and low-stakes practice"
- **Decision:** Freewriting context → use *Writing without teachers*
- **Change:** `Peter Elbow's work` → `Peter Elbow's [[@elbow1973writi]] work`

---

## Files Remaining

**Estimated files with Elbow mentions:** ~15-20 files  
**Remaining corrections:** ~14-19 files

**High-priority files to check:**
- a_description/catalog-description-reasons-v101.md
- i_week02/week02-overview-course-v101.md (multiple mentions, freewriting context)
- j_assessment/portfolio-rubric-reasons-v101.md
- j_assessment/formative-grading-reasons-v101.md
- g_studentreadings/bernstein-blood-reasons-v101.md

---

## Methodology

1. **Context analysis first:** Read surrounding text to determine which Elbow work is being referenced
2. **Match to decision table:** Use context clues to select appropriate citekey
3. **First prose mention rule:** Add citekey only on first mention per file
4. **Skip structural mentions:** No citekeys in headings, tables (except reference tables), YAML

---

## Challenges

**Multiple works complexity:**
- Elbow has 5 different citekeys in library.bib
- Context determines which work is being cited
- Some mentions may be general ("Elbow's work") requiring careful interpretation
- Freewriting is most common context, but contraries/dialectic also appears

**Verification required:**
- Each file needs individual context assessment
- Cannot bulk-replace like with Salvatori (single citekey)
- Must verify no invented citekeys (e.g., `@elbow1981` for *Writing With Power*)

---

**Next session:** Continue file-by-file Elbow corrections with context-based citekey selection

**Progress:** 1/228 instances corrected (0.4%)
