---
created: 2026-02-12
type: session-digest
status: current
project: virens-101
session-date: 2026-02-12
threads-touched: []
tags: [session-digest, reading-alignment, verification]
---

# Session Digest: Reading Alignment Verification (Step 2A Begun)

**Date:** 2026-02-12
**Project:** VIRENS 101 Course Design
**Session character:** After completing Goal 1 (week overview alignment with consolidated schedule), began Step 2A: verifying reading files align with assignments and weekly schedule. Discovered pattern of week assignment discrepancies in student reading files that need systematic correction.

## Technical Work Completed

### 1. Goal 1 Completion Verified

**Week 14 status check:**
- Consolidated schedule shows presentations-only structure (6 blocks of student presentations, no reading, no tech)
- `i_week14/` directory exists but is empty
- **Decision:** Week 14 intentionally undeveloped (presentations don't require traditional weekly overview)
- **Goal 1 Status:** ✅ **COMPLETE**

**Summary of Goal 1 achievements:**
- All 15 week overview files align with consolidated schedule
- Frontmatter standardized across all weeks (2, 9, 11, 12, 13, 15 updated)
- All 6 peer review criteria files verified (correct week assignments)
- All 11 instructor prompt files verified (proper documentation)
- Comprehensive audit document created and maintained

### 2. Step 2A: Reading Alignment — Initial Investigation

**Scope defined:** Verify that:
1. Reading files have correct week assignments
2. Reading files reference the assignments they support
3. Readings feed into assignments as intended by course design

**Reading inventory completed:**
- Located all 15 student reading files in `g_studentreadings/`
- Identified reading structure: each has Context section with week assignment

**Reading list:**
1. kirschenbaum-textpocalypse-course-v101.md
2. ong-writing-restructures-consciousness-course-v101.md
3. salvatori-conversations-texts-course-v101.md
4. downs-rhetoric-course-v101.md
5. meadows-leverage-points-course-v101.md
6. library-babel-composite-course-v101.md
7. alexander-goodness-fit-course-v101.md
8. brooks-silver-bullet-course-v101.md
9. bush-memex-course-v101.md
10. star-ethnography-infrastructure-course-v101.md
11. ribes-jackson-databite-course-v101.md
12. norman-design-everyday-course-v101.md
13. bernstein-blood-course-v101.md
14. readme-examples-composite-course-v101.md
15. jackson-body-palimpsest-course-v101.md

### 3. Reading → Assignment Mapping Document Created

**File created:** `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_schedule/reading-assignment-alignment-map.md`

**Contents:**
- Complete reading schedule from consolidated schedule (15 weeks)
- Reading → major assignment mapping:
  - Literacy Narrative supported by: Kirschenbaum, Ong, Salvatori, Downs
  - Spec Document supported by: Meadows, Borges/Quine/Jackson
  - Constraint Audit supported by: Meadows, Alexander, Borges/Quine/Jackson
  - BEAM Portfolio supported by: Borges/Quine/Jackson, Brooks, Star+Bush, Ribes+Jackson
  - Documented Inquiry supported by: All BEAM readings, Norman
  - Process Archaeology supported by: Norman, Bernstein, Ribes+Jackson
- Difficulty pair documentation:
  - Pair A: Salvatori (W3) → Star+Bush (W10) — making invisible processes/systems visible
  - Pair B: Meadows (W5) → Alexander (W7) — form, fit, and systems
- Verification matrix template for tracking week assignments and assignment references

### 4. Week Assignment Discrepancies Discovered

**Files checked:** 5 of 15 reading files

**Discrepancies found:**

| Reading File | Says Week | Should Be | Assignment Context | Status |
|--------------|-----------|-----------|-------------------|--------|
| ong-writing-restructures | 2 | 2 | Tech setup, README concepts | ✅ Correct |
| salvatori-conversations | **2** | **3** | Difficulty Pair A begins, analytical work | ❌ **Wrong** |
| downs-rhetoric | **3** | **4** | SEAR framework, Literacy Narrative | ❌ **Wrong** |
| kirschenbaum-textpocalypse | **4** | **1** | Orientation, writing-as-technology | ❌ **Wrong** |
| meadows-leverage-points | 5 | 5 | Difficulty Pair B begins, systems thinking | ✅ Correct |

**Pattern identified:** 
- Multiple reading files have incorrect week assignments
- Likely written before final schedule consolidation
- Misalignments affect how readings connect to assignments and difficulty pairs

**Critical example - Salvatori:**
- File says Week 2, should be Week 3
- Week 3 is when Difficulty Pair A begins
- Misalignment affects difficulty pair documentation throughout

**Critical example - Kirschenbaum:**
- File says Week 4 (M2 Naming), should be Week 1 (M1 Surfacing, orientation)
- Major movement misalignment
- Affects orientation/foundation narrative

**Critical example - Downs:**
- File says Week 3, should be Week 4
- Week 4 is when Literacy Narrative is due
- SEAR framework needs to be available Week 4 to support assignment

## Architectural Decisions

**Sequencing decision confirmed:**
Michael established clear verification sequence:
1. ✅ Goal 1: Week overview (i_) ↔ consolidated schedule (i_schedule/) alignment
2. ⏭️ Goal 2a: Reading files ↔ assignments alignment (readings feed assignments correctly)
3. ⏭️ Goal 2b: Assignment files ↔ weekly overview alignment (assignments reference readings correctly)
4. ⏭️ Goal 3: Cross-mesh verification (holistic system check)
5. ⏭️ Final: Rationale/reasons files alignment (justifications match 1-2-3)

**Rationale for sequence:**
- Readings are upstream dependencies (inputs to assignments)
- Assignments depend on readings and flow into weekly structure
- Cross-mesh catches systemic issues piecemeal checks miss
- Reasons files document "why" so need 1-2-3 solid first

**Week 14 handling decision:**
- Skip full development (presentations-only week)
- Consolidated schedule documentation sufficient
- Empty directory is intentional, not oversight

## Formulation Candidates

**Sequencing principle:** "Readings first because they're upstream dependencies (inputs to assignments); assignments second because they depend on readings and flow into weekly structure; cross-mesh third to catch systemic issues; reasons last because they document the 'why' of 1-2-3."

**Verification scope expansion:** "My verifications have been within two folder scopes: (1) i_weekXX/ folders - week overview files, and (2) f_assignments/ folders - peer review criteria and instructor prompts. What I have NOT yet checked: other files within f_assignments/ (major assignment sheets), reading justification files (the -reasons- paired files), or cross-validation between what week files say about assignments and what assignment files themselves specify."

## Open Questions

**Reading file corrections:** 
- How many of the 15 reading files have incorrect week assignments? (5 of 5 checked so far show pattern: 2 correct, 3 wrong)
- What's the pattern? (Appears to be pre-consolidation assignments)
- Should corrections happen in batch or incrementally?
- Do -reasons- files also need week updates to match?

**Assignment reference verification:**
- Do reading files reference the assignments they support?
- Are those references accurate?
- Do assignment files reference readings correctly?

**Difficulty pair documentation:**
- Are difficulty pairs documented in both paired readings?
- Do -reasons- files explain the pairing rationale?
- Are week assignments correct for both halves of each pair?

## Flagged Updates

- [ ] Complete verification of remaining 10 reading files (6-15)
- [ ] Create comprehensive discrepancy report for all 15 reading files
- [ ] Decide on correction strategy (batch update vs. incremental)
- [ ] Verify assignment reference accuracy in reading files
- [ ] Check if -reasons- files need parallel updates
- [ ] Document difficulty pair presence/absence in paired reading files

## Cross-References

**Documents created this session:**
- `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_meta/_session-digests/session-2026-02-12a-schedule-alignment-audit.md` (first digest)
- `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_schedule/reading-assignment-alignment-map.md` (mapping document)

**Documents modified:**
- `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_schedule/schedule-alignment-audit.md` (updated with peer review/prompt verification)

**Key authoritative sources:**
- `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_schedule/virens-101-semester-schedule-consolidated.md` (source of truth for all scheduling)

**Files with known discrepancies:**
- salvatori-conversations-texts-course-v101.md (says W2, should be W3)
- downs-rhetoric-course-v101.md (says W3, should be W4)
- kirschenbaum-textpocalypse-course-v101.md (says W4, should be W1)

## Next Session Priorities

**Immediate:**
1. Verify remaining 10 reading files for week assignments
2. Create comprehensive discrepancy report showing all 15 files
3. Decide on correction strategy with Michael

**Then:**
2. Verify assignment references in reading files
3. Check reading references in major assignment files
4. Begin Step 2B: assignment file alignment

**Session handoff notes:**
- User confirmed pattern suspicion was correct (block-date inconsistencies exist in reading files)
- User wants fresh session to continue verification and make correction decisions
- Goal 1 is complete; Step 2A is 33% complete (5 of 15 reading files checked)

## Process Notes

**User's insight confirmed:** "I suspect there will be inconsistencies with block-date scheduling" — correct. The inconsistencies are in student reading files (g_studentreadings/), not in peer review/prompt files which were already corrected.

**Discovery method:** Systematic reading of file Context sections to extract week assignments, comparing against consolidated schedule reading table.

**Pattern suggests cause:** Reading files likely written during early course development before final schedule consolidation locked week-to-week progression. Files reference logical movement positions but don't match final calendar assignments.

**Scope clarity established:** Verification has covered i_weekXX/ (weekly overviews) and f_assignments/peer_review_cycles + f_assignments/instructor_prompts (peer review and prompts). Not yet covered: f_assignments/ major assignment files, g_studentreadings/ reading justification (-reasons-) files, or cross-validation between these layers.

**Session management:** User requested session digest before context compaction risk. Two digests created this session covering (1) Goal 1 completion and peer review/prompt verification, and (2) Step 2A initiation and reading discrepancy discovery.
