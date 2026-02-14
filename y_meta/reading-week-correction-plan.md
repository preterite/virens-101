# Reading Week Assignment Correction Plan

**Created:** 2026-02-12
**Purpose:** Systematic plan for correcting 12 of 15 reading files with wrong week assignments
**Status:** Decision point — awaiting correction strategy approval

---

## Executive Summary

**Scope:** 12 reading files in `g_studentreadings/` have incorrect week assignments in their Context sections.

**Impact:**
- 80% of reading files show wrong weeks (12 of 15 files)
- 3 files cross movement boundaries (major pedagogical disruption)
- 4 files affect difficulty pair documentation
- All misalignments affect how students understand reading→assignment connections

**Root cause:** Files written during iterative development before final schedule consolidation. Week assignments reflect logical placement, not finalized calendar.

---

## Correction Tiers

### TIER 1: Critical Cross-Movement Errors (3 files)

These corrections affect foundational pedagogical sequencing and must be fixed first.

#### 1. Bernstein "Blood on the Cutting Room Floor" 🚨

**Current state:**
```
File: bernstein-blood-course-v101.md
Context section says: "Week 6 of Movement 2 (Naming)"
Should say: "Week 13 of Movement 4 (Synthesis)"
```

**Correction required:**
- Change "Week 6" → "Week 13"
- Change "Movement 2 (Naming)" → "Movement 4 (Synthesis)"
- Update context: revision during BEAM work → revision during Process Archaeology
- Verify "cutting room floor" metaphor still works in M4 context

**Why critical:**
- 7-week offset (largest error)
- Crosses two movement boundaries (M2→M4)
- Changes entire pedagogical meaning of revision concepts
- File discusses discarded material — context determines what's being discarded

**Verification after fix:**
- Check if description still mentions "source integration" (M2 language)
- Verify guiding questions don't assume BEAM work context
- Confirm assignment connection updated (Constraint Audit → Process Archaeology)

---

#### 2. Kirschenbaum "Prepare for the Textpocalypse"

**Current state:**
```
File: kirschenbaum-textpocalypse-course-v101.md
Context section says: "Week 4 at the start of Movement 2 (Naming)"
Should say: "Week 1 of Movement 1 (Surfacing)"
```

**Correction required:**
- Change "Week 4" → "Week 1"
- Change "Movement 2 (Naming)" → "Movement 1 (Surfacing)"
- Update context: constraint work → orientation/foundation
- Verify "writing as technology" framing appropriate for W1

**Why critical:**
- Foundation reading appears 3 weeks late
- Currently in M2 (naming/classification), should be M1 (orientation)
- Students experience tech setup (W2) before conceptual frame (W4)
- Affects entire semester's theoretical grounding

**Verification after fix:**
- Confirm description establishes orientation (not assumes prior knowledge)
- Check guiding questions don't reference work students haven't done yet
- Verify tone appropriate for Week 1 (welcoming, foundational)

---

#### 3. Bush "As We May Think"

**Current state:**
```
File: bush-memex-course-v101.md
Context section says: "Week 13 of Movement 4 (Synthesis)"
Should say: "Week 10 of Movement 3 (Operating at Scale)"
```

**Correction required:**
- Change "Week 13" → "Week 10"
- Change "Movement 4 (Synthesis)" → "Movement 3 (Operating at Scale)"
- Update context: Process Archaeology → BEAM Portfolio Framing
- Verify pairing with Star reading (both W10) is documented

**Why critical:**
- Part of Difficulty Pair A completion (with Star)
- Currently shows 3-week offset, placing in wrong movement
- Students need historical context DURING portfolio assembly, not after
- Breaks pedagogical echo structure (Salvatori W3 → Star+Bush W10)

**Verification after fix:**
- Confirm Difficulty Pair A completion marker present
- Verify pairing with Star is explicit
- Check related notes link to star-ethnography-infrastructure-course-v101

---

### TIER 2: High Priority (Difficulty Pairs + Tech) (4 files)

These affect difficulty pair pedagogy and tech setup sequencing.

#### 4. Salvatori "Conversations with Texts"

**File:** `salvatori-conversations-texts-course-v101.md`
**Change:** Week 2 → Week 3
**Context update:** Tech setup week → Difficulty Pair A beginning
**Difficulty pair:** Mark as "Pair A begins" (pairs with Star+Bush W10)
**Verification:** Confirm Related Notes links to star-ethnography-infrastructure-course-v101

---

#### 5. Star "The Ethnography of Infrastructure"

**File:** `star-ethnography-infrastructure-course-v101.md`
**Change:** Week 11 → Week 10
**Context update:** Post-BEAM Portfolio → During BEAM Portfolio Framing
**Difficulty pair:** Mark as "Pair A completes" (pairs with Salvatori W3 and Bush W10)
**Verification:** Confirm pairing with Bush is explicit, Related Notes updated

---

#### 6. Alexander "Notes on the Synthesis of Form"

**File:** `alexander-goodness-fit-course-v101.md`
**Change:** Week 6 → Week 7
**Context update:** During Spec Document → During Constraint Audit
**Difficulty pair:** Mark as "Pair B completes" (pairs with Meadows W5)
**Verification:** Confirm guiding questions reference Constraint Audit due W7

---

#### 7. README Examples Composite

**File:** `readme-examples-composite-course-v101.md`
**Change:** Week 4-5 → Week 2
**Context update:** During naming → Tech setup week
**Reason:** Documentation models needed DURING tech instruction, not after
**Verification:** Confirm context references tech setup (T1-T2), not constraint work

---

### TIER 3: Medium Priority (Within-Movement Shifts) (5 files)

These are smaller shifts within single movements.

#### 8. Downs "Rhetoric and Writing"

**File:** `downs-rhetoric-course-v101.md`
**Change:** Week 3 → Week 4
**Reason:** SEAR framework needed when Literacy Narrative due (W4)
**Verification:** Confirm assignment connection mentions Literacy Narrative

---

#### 9. Library of Babel Composite (Borges/Quine)

**File:** `library-babel-composite-course-v101.md`
**Change:** Week 8 → Week 6
**Reason:** BEAM framework introduction timing (Spec Document due W6)
**Verification:** Check context mentions Spec Document, classification work

---

#### 10. Jackson "My Body—A Wunderkammer"

**File:** `jackson-body-palimpsest-course-v101.md`
**Change:** Week 7 → Week 6
**Reason:** Accumulation models before M2→M3 transition
**Verification:** Confirm context appropriate for W6 (end of M2, not W7 which is Constraint Audit due)

---

#### 11. Brooks "No Silver Bullet"

**File:** `brooks-silver-bullet-course-v101.md`
**Change:** Week 9 → Week 8
**Reason:** Complexity vocabulary before conference week
**Verification:** Check context doesn't reference conference (W9), references M2→M3 transition

---

#### 12. Ribes & Jackson "Data Bite Man"

**File:** `ribes-jackson-databite-course-v101.md`
**Change:** Week 10 → Week 11
**Reason:** Maintenance labor reading when BEAM Portfolio complete (W11)
**Verification:** Confirm timing aligns with "corpus maintenance" context

---

## Correction Strategies

### Option A: Scripted Batch Correction

**Process:**
1. Write Python/bash script with 12 find-replace operations
2. For each file:
   - Locate Context section
   - Replace "Week X" with "Week Y"
   - Replace movement references if needed
3. Run script, generate diff for review
4. Apply changes in single commit

**Advantages:**
- Fast (minutes not hours)
- Consistent formatting
- Auditable (git diff shows all changes)
- Reversible

**Disadvantages:**
- Might miss context-specific language adjustments
- Won't catch cascade effects (related notes, assignment refs)
- Requires careful script validation

**Script structure:**
```bash
# For each tier, in order:
for file in tier1_files; do
    sed -i '' 's/Week X/Week Y/g' "$file"
    sed -i '' 's/Movement A/Movement B/g' "$file"
done
```

---

### Option B: Manual Tier-by-Tier Correction

**Process:**
1. Fix Tier 1 files (3 files) manually
   - Update week assignments
   - Adjust context descriptions
   - Verify guiding questions
   - Update related notes
   - Check for language assuming wrong context
2. Verify Tier 1 effects before proceeding
3. Repeat for Tier 2 (4 files)
4. Repeat for Tier 3 (5 files)

**Advantages:**
- Can adjust related language context-sensitively
- Catches cascade effects (assignment refs, difficulty pair docs)
- Opportunity to improve clarity during correction
- Careful review of each file

**Disadvantages:**
- Time-consuming (12 files × careful edits)
- Potential for inconsistency across files
- Risk of introducing new errors

---

### Option C: Hybrid Approach (RECOMMENDED)

**Process:**
1. **Script generates correction manifest:**
   - Lists all required changes
   - Shows context before/after
   - Identifies files needing manual review
2. **Human review by tier:**
   - Tier 1: Full manual review + correction
   - Tier 2: Review context, approve changes
   - Tier 3: Spot-check, bulk approve
3. **Script applies approved changes:**
   - Executes find-replace operations
   - Creates git commit with detailed message
   - Generates verification checklist

**Advantages:**
- Speed + care balanced
- Catches high-impact issues through manual review
- Efficiency for low-risk corrections
- Auditable trail

**Implementation:**
1. Generate manifest (30 minutes)
2. Review Tier 1 files manually (1 hour)
3. Review Tier 2 manifest (30 minutes)
4. Approve Tier 3 bulk (15 minutes)
5. Execute script, verify (15 minutes)
**Total time:** ~2.5 hours

---

## Cascade Effect Checklist

After correcting week assignments, verify these potential cascade effects:

### 1. Paired -reasons- Files
- [ ] Do -reasons- files also have week assignments that need updating?
- [ ] Check all 15 files in `g_studentreadings/` ending in `-reasons-v101.md`
- [ ] Verify week assignments match corrected -course- files

### 2. Assignment References
- [ ] Do reading files correctly reference assignments they support?
- [ ] Example: Downs should reference Literacy Narrative (due W4)
- [ ] Example: Alexander should reference Constraint Audit (due W7)
- [ ] Extract and verify all assignment mentions

### 3. Difficulty Pair Documentation
- [ ] Salvatori: Document "Difficulty Pair A begins"
- [ ] Star: Document "Difficulty Pair A completes" with Bush
- [ ] Bush: Document "Difficulty Pair A completes" with Star
- [ ] Meadows: Verify "Difficulty Pair B begins" (should be correct)
- [ ] Alexander: Document "Difficulty Pair B completes"

### 4. Related Notes Links
- [ ] Verify internal links between paired readings
- [ ] Example: Salvatori → Star linkage
- [ ] Example: Meadows → Alexander linkage
- [ ] Check movement context links

### 5. Assignment Files Reciprocal Check
- [ ] Do assignment files in `f_assignments/` correctly reference readings?
- [ ] Literacy Narrative → Kirschenbaum, Ong, Salvatori, Downs
- [ ] Spec Document → Meadows, Library/Quine/Jackson
- [ ] Constraint Audit → Meadows, Alexander
- [ ] BEAM Portfolio → Library, Brooks, Star, Bush, Ribes
- [ ] Documented Inquiry → Norman
- [ ] Process Archaeology → Norman, Bernstein, Ribes

---

## Verification Workflow

### Phase 1: Pre-Correction Baseline
- [x] Document current state (12 files need correction)
- [x] Identify all discrepancies
- [x] Categorize by severity (Tier 1-3)
- [ ] Create git branch: `fix/reading-week-assignments`

### Phase 2: Execute Corrections
- [ ] Tier 1: Manual review + correction (3 files)
- [ ] Tier 2: Review + approve (4 files)
- [ ] Tier 3: Spot-check + approve (5 files)
- [ ] Generate correction manifest
- [ ] Execute approved changes

### Phase 3: Verification
- [ ] Re-run week assignment check (all 15 files should be ✅)
- [ ] Verify difficulty pair documentation
- [ ] Check -reasons- files for parallel updates needed
- [ ] Extract and verify assignment references
- [ ] Cross-check against assignment files (Step 2B)

### Phase 4: Documentation
- [ ] Update schedule-alignment-audit.md
- [ ] Update reading-assignment-alignment-map.md
- [ ] Git commit with detailed message
- [ ] Create verification summary document

---

## Decision Points

**Michael needs to decide:**

1. **Correction strategy:** Script (A), Manual (B), or Hybrid (C)?
2. **Timing:** Fix all 12 now, or Tier 1 first then reassess?
3. **Scope expansion:** Include -reasons- files in same operation?
4. **Verification depth:** Full cascade check, or week assignments only?

**Recommended path:**
- Use Hybrid approach (C)
- Fix Tier 1 immediately (critical cross-movement errors)
- Reassess after Tier 1 verification
- Expand to -reasons- files after -course- files verified

---

*Created: 2026-02-12*
*Status: Awaiting correction strategy decision*
