---
created: 2026-02-13
type: session-digest
status: current
project: virens-101
session-date: 2026-02-13
threads-touched: [weekly-overview-sweep, schedule-consistency, SPQ-terminology, difficulty-pair-references, prompt-inventory]
tags: [session-digest]
---

# Session Digest: Systematic Sweep of 15 Weekly Overviews

**Date:** 2026-02-13
**Project:** VIRENS 101
**Session character:** Completed line-by-line reading of all 14 existing weekly overview files (Week 14 missing) against consolidated schedule. Identified 10 specific issues across 6 files plus one systemic terminology problem (SPQ protocol expansion inconsistency across 4 files + cycle criteria files). Also completed f_assignments Cycle 4 Week 9→Week 8 corrections from prior segment.

## Prior Work This Segment

Before the sweep, four f_assignments files were corrected for stale "Week 9" references to Cycle 4 (should be Week 8). The annotated-bibliography-reasons file received substantive rewrite correcting a fabricated sequential "Entry #1 (Week 8), Entry #2 (Week 9)" pacing narrative. See session-2026-02-13d for details.

## Sweep Results

### Files verified clean (no issues)
- Week 1: M1, Kirschenbaum, no tech/peer review, Prompts 1.2/1.4 ✓
- Week 2: M1, Ong + README, T1-T2, no peer review ✓
- Week 3: M1 final, Salvatori, Pair A begins, Prompt 3.5 ✓
- Week 4: M2, Downs, SEAR, Literacy Narrative due, Prompt 4.3 ✓ (spot-checked earlier, confirmed)
- Week 7: M2 final, Alexander, Cycle 3 DES, Pair A completes, Prompt 7.5 ✓
- Week 11: M3, Ribes & Jackson, BEAM Portfolio due, distill foregrounded ✓
- Week 12: M4, Norman, Cycle 6 DES, Prompt 12.3, Process Archaeology begins ✓

### Missing file
- **Week 14**: i_week14/ folder exists but is empty. Presentations week has no overview file.

### Issues found (by file)

**Week 5 (week05-overview-course-v101.md)**
- TERMINOLOGY: SPQ expanded as "Summarize, Praise, Question" — should be "Sayback, Pointing, Questioning"

**Week 6 (week06-overview-course-v101.md)**
- ERROR: Forward Links section says "Difficulty Pair B completes" for Week 7 — should be Pair A (Salvatori W3 + Alexander W7). Pair B is Meadows W5 + Star W10.
- TERMINOLOGY: SPQ expanded as "Summarize, Point to Potential, Question"

**Week 8 (week08-overview-course-v101.md)**
- ERROR: Backward Links says "Difficulty Pair B completes" for Week 7 — same Pair A/B confusion as Week 6.

**Week 9 (week09-overview-course-v101.md)**
- INCONSISTENCY: Info box says "Threshold between M2 (Naming) and M3 (Operating at Scale)" but metadata says movement: M3 and Week 8 already opened M3. Schedule has Weeks 8-11 as M3.
- DATA: fragment-target-cumulative: 25-35 is a lower floor than Week 8's 28-35. Cumulative targets shouldn't decrease. Conference week produces no new fragments; should be 28-35 or unchanged.

**Week 10 (week10-overview-course-v101.md)**
- ERROR: "Previously Released" prompt inventory lists wrong prompt numbers/names:
  - Lists Prompt 5.4 "Leverage Points" — Week 5 released no prompts
  - Lists 6.5 "Classification Exercise" — Week 6 released 6.2 "Pop Culture Constraints"
  - Lists 7.4 "Constraint Reflection" — Week 7 released 7.5 "Experimental Form"
  - Lists 8.3 "Mill and Store" — Week 8 released 8.3 "Concept Tracing" (number matches, name wrong)
- TERMINOLOGY: SPQ expanded as "Strengths, Potential, Questions"

**Week 13 (week13-overview-course-v101.md)**
- OMISSION: Metadata attention-flag says "Prompt 13.3 available" but no Prompt 13.3 appears in block plan or assignments section.

**Week 15 (week15-overview-course-v101.md)**
- OMISSION: Metadata attention-flag says "Prompt 15.2 available" but no Prompt 15.2 appears in block plan or assignments section.

### Systemic issue: SPQ protocol terminology

Four different expansions found across weekly overviews:
1. Week 5: "Summarize, Praise, Question"
2. Week 6: "Summarize, Point to Potential, Question"
3. Week 7: "Summarize, Praise, Question" (in synthesis text describing SPQ history)
4. Week 10: "Strengths, Potential, Questions"

Authoritative source (peer review cycle criteria files in f_assignments/peer_review_cycles/): "Sayback, Pointing, Questioning"

**Decision:** Standardize all to "Sayback, Pointing, Questioning" per cycle criteria files.

## Corrections Made This Segment

### f_assignments (from prior segment work)
| File | Change |
|------|--------|
| annotated-bibliography-assignment-course-v101.md | 3 fixes: Week 9→Week 8 for Cycle 4 |
| annotated-bibliography-assignment-reasons-v101.md | Substantive rewrite of pacing narrative + Week 9→Week 8 |
| peer-review-protocol-assignment-course-v101.md | Table row Week 9→Week 8 |
| eli-review-student-guide-course-v101.md | List item Week 9→Week 8 |

### Weekly overviews (pending — identified but not yet corrected)
SPQ terminology standardization: queued for immediate execution after this digest.

## Current Verification State

| Area | Status |
|------|--------|
| g_studentreadings (30 files) | ✅ All verified and corrected |
| f_assignments (main + peer_review_cycles) | ✅ Cycle 4 timing corrected |
| f_assignments/instructor_prompts | ⚠️ Not yet audited |
| i_week overviews (14 files read) | ⚠️ Issues identified, corrections pending |
| i_week14 (missing file) | ❌ No overview file exists |

## Open Questions

### Prompt inventory discrepancy (Week 10)
The "Previously Released" list in Week 10 contains phantom prompts (5.4, 6.5, 7.4) that don't match what earlier weeks actually released. Either (a) the prompts were renamed/renumbered after Week 10 was generated, or (b) Week 10 was generated from a different prompt inventory. Needs decision on correct prompt list before fixing.

### Missing prompts (Weeks 13, 15)
Metadata flags Prompt 13.3 and Prompt 15.2 as available but neither appears in block plans. Either the prompts need to be created, or the attention-flags need correction.

### Week 14 overview
Presentations week has no overview file. Needs creation or explicit decision to skip.

### Week 9 movement framing
Info box says "Threshold between M2 and M3" but schedule places Week 9 firmly in M3. Needs correction to M3 framing (conference week within M3, not a threshold).

### Week 9 fragment target
Cumulative floor dropped from 28 (Week 8) to 25 (Week 9). Should be 28-35 since conference week adds no new fragments.

## Next Steps

- [x] Save this session digest
- [ ] **SPQ terminology standardization** — replace all variants with "Sayback, Pointing, Questioning" (immediate next task)
- [ ] Fix Difficulty Pair A/B confusion in Week 6 forward links and Week 8 backward links
- [ ] Fix Week 9 movement framing and fragment target
- [ ] Fix Week 10 prompt inventory
- [ ] Address Week 13/15 prompt omissions
- [ ] Create Week 14 overview (or decide to skip)
- [ ] Audit f_assignments/instructor_prompts

## Cross-References

- Prior digests: [[session-2026-02-13d-assignments-cycle4-fix]]
- Authoritative schedule: [[virens-101-semester-schedule-consolidated]]
- Peer review cycle criteria (SPQ authority): f_assignments/peer_review_cycles/
