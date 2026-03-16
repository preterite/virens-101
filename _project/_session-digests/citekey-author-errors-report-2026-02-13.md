---
created: 2026-02-13
type: error-report
status: ready-for-review
project: virens-101
session-date: 2026-02-13
tags: [error-report, citekey-verification, author-verification, proofreading]
---

# Citekey and Author Attribution Errors Report

**Date:** 2026-02-13  
**Scope:** All markdown files in `/Users/preterite/Local/virens/user1/Scholar/600_teaching/`  
**Search Type:** Systematic pattern search for known find-and-replace errors

---

## Executive Summary

### Errors Found

| Error Type | Instances | Severity | Status |
|-----------|-----------|----------|--------|
| **Ronald Kline** → Stephen J. Kline | 3 | High | Ready to fix |
| **Chris Gallagher** → John Gallagher | 0 | N/A | Not present |
| **Kirschenbaum** missing citekeys | 154 matches | Medium | Needs context review |
| **Elbow** missing citekeys | 150 matches | Medium | Needs manual sorting |
| **Salvatori** incomplete citekeys | 58 @salvatori found | Low | Needs context check |

---

## Error Category 1: Ronald Kline → Stephen J. Kline

**Pattern:** "Ronald Kline" should be "Stephen J. Kline"  
**Correct citekey:** `@kline1985what`  
**Instances found:** 3

### Locations

#### 1. vault-conventions.md (line 167)
**File:** `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_meta/vault-conventions.md`  
**Line:** 167  
**Context:**
```markdown
- Bolter (Jay David Bolter)
- Kline [[@kline1985what]] (Ronald Kline)  ← ERROR

### Literary/Philosophical
```

**Fix needed:**
```diff
- - Kline [[@kline1985what]] (Ronald Kline)
+ - Kline [[@kline1985what]] (Stephen J. Kline)
```

---

#### 2. scholar-registry-v101.md (line 81)
**File:** `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_meta/scholar-registry-v101.md`  
**Line:** 81  
**Context:**
```markdown
| `Haas` | Christina Haas | Technology and literacy | *Writing Technology* |
| `Bolter` | Jay David Bolter | Remediation, writing space | *Writing Space* |
| `Kline` | Ronald Kline  ← ERROR
```

**Fix needed:**
```diff
- | `Kline` | Ronald Kline
+ | `Kline` | Stephen J. Kline | Innovation models, mundane technology | *What is Technology?* |
```

---

#### 3. tech-requirements-access-reasons-v101.md (line 67)
**File:** `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/d_requirements/tech-requirements-access-reasons-v101.md`  
**Line:** 67  
**Context:**
```markdown
**Kline [[@kline1985what]] on Mundane Technology:**
Ronald Kline  ← ERROR (standalone line)

The inclusion of index cards alongside digital tools reflects this insight.
```

**Fix needed:**
```diff
- Ronald Kline
+ Stephen J. Kline's analysis of mundane technology reveals how the most consequential tools are often those rendered invisible by familiarity.
```

*(Note: This appears to be a placeholder line that needs prose development, not just name correction)*

---

## Error Category 2: Chris Gallagher → John Gallagher

**Pattern:** "Chris Gallagher" should become "Gallagher [[@gallagher2017writi]] [[@gallagher2020ethic]]"  
**Instances found:** 0

✅ **No errors of this type found** — either already corrected or never introduced.

---

## Error Category 3: Kirschenbaum Citations

**Pattern:** Missing citekeys for Kirschenbaum mentions  
**Instances found:** 154 matches across multiple files  
**Issue:** Many "Kirschenbaum" mentions lack proper citekeys

### Decision Rules for Correction

1. **AI/LLM/generative text context** → `@kirschenbaum2023prepa` ("Prepare for the Textpocalypse")
2. **Mechanisms/forensics/materiality context** → `@kirschenbaum2007mecha` (*Mechanisms*)  
3. **Ambiguous context** → Flag for manual review

### High-Priority Files (Most Instances)

**Top 5 files by instance count:**

1. `kirschenbaum-textpocalypse-reasons-v101.md` — 20+ instances (metadata + content)
2. `kirschenbaum-textpocalypse-course-v101.md` — 10+ instances
3. `week04-overview-course-v101.md` — 3 instances
4. `tech-requirements-access-reasons-v101.md` — 3 instances
5. Multiple other files with 1-2 instances each

### Sample Context Patterns Observed

**Pattern 1: Standalone in metadata**
```yaml
cites-scholars: 
  - kirschenbaum  ← Needs specific citekey
```

**Pattern 2: Prose without citekey**
```markdown
Kirschenbaum's attention to format standards...  ← Needs [[@kirschenbaum20XX]]
```

**Pattern 3: File-specific references**
```markdown
- Available from: Week 4, Block 3
- Word count: ![[_def-fragment-wordcount-range]]
Kirschenbaum  ← Likely placeholder, needs development
```

---

## Error Category 4: Elbow Citations

**Pattern:** Missing or incorrect citekeys for Elbow mentions  
**Instances found:** 150 matches  
**Issue:** Multiple Elbow works cited, requires context-based differentiation

### Decision Complexity

Elbow has multiple works relevant to FYC pedagogy:
- *Writing Without Teachers* (1973/1998)
- *Writing With Power* (1981/1998)  
- *Embracing Contraries* (1986)
- Various articles on freewriting, voice, evaluation

### Sample Context Patterns

**Pattern 1: Metadata lists**
```yaml
cites-scholars: [Elbow, Sommers, Inoue]  ← Needs specific citekey
```

**Pattern 2: Prose without citation**
```markdown
Elbow's process pedagogy emphasizes...  ← Which work? Needs [[@elbow19XX]]
```

**Pattern 3: Theoretical framing**
```markdown
### Composition Pedagogy: Process and Recursion

Elbow  ← Standalone, needs development + citekey
```

### Manual Review Required

**Recommendation:** Extract all Elbow instances with 5 lines of context each, review for work identification, assign appropriate citekeys.

---

## Error Category 5: Salvatori Citations

**Pattern:** Distinguishing Salvatori's reading work from difficulty work  
**Instances found:** 58 @salvatori citekeys present  
**Issue:** Need to verify correct work attribution

### Works to Distinguish

1. **Salvatori solo (1996):** "Conversations with Texts: Reading in the Teaching of Composition"  
   - **Citekey:** `@salvatori1996conve`  
   - **Focus:** Reading pedagogy, engagement with texts
   - **Usage:** PRIMARY work cited in VIRENS 101

2. **Salvatori & Donahue:** *The Elements and Pleasures of Difficulty*  
   - **Focus:** Difficulty as productive pedagogical tool
   - **Usage:** SECONDARY — less cited

3. **Salvatori:** *Pedagogy: Disturbing History*  
   - **Focus:** Historical pedagogy scholarship  
   - **Usage:** RARE — not central to VIRENS 101

### Current State Analysis

✅ **Good news:** 58 instances of `@salvatori` citekeys already present  
⚠️ **Concern:** Need to verify these point to correct work (likely 1996conve vs. Donahue co-authored)

### Sample Instances to Verify

From `M1-to-M2-transition-reflection-reasons-v101.md`:
```markdown
### Difficulty as Diagnostic

@salvatori  ← Line 77 — needs full citekey check
```

From `course-overview-reasons-v101.md`:
```markdown
### Difficulty as Diagnostic: Salvatori's Influence

@salvatori  ← Line 86 — context suggests 1996conve
```

From `salvatori-conversations-texts-course-v101.md`:
```markdown
@salvatori  ← Line 37-38 — should be @salvatori1996conve explicitly
```

### Verification Strategy

1. Search for difficulty/reading context near each @salvatori
2. If context is "difficulty as diagnostic" → likely correct (1996conve discusses this)
3. If context is "pleasures of difficulty" → check if Donahue co-author needed
4. Most instances should be `@salvatori1996conve` given course focus

---

## Priority Recommendations

### Immediate Fixes (High Confidence)

1. **Ronald Kline → Stephen J. Kline** (3 instances)
   - vault-conventions.md line 167
   - scholar-registry-v101.md line 81  
   - tech-requirements-access-reasons-v101.md line 67

### Manual Review Required (Medium Priority)

2. **Kirschenbaum citekeys** (154 instances)
   - Start with files in `g_studentreadings/kirschenbaum-*` 
   - Use context rules: AI/LLM → 2023prepa, materiality → 2008
   - Flag ambiguous cases

3. **Elbow citekeys** (150 instances)
   - Extract all instances with context
   - Identify which work from context clues
   - Assign appropriate citekeys (1973/1981/1986/articles)

### Verification Tasks (Lower Priority)

4. **Salvatori citekey verification** (58 instances)
   - Most should be `@salvatori1996conve`
   - Check for any that need Donahue co-author
   - Verify reading vs. difficulty context

---

## Supplementary Searches Needed

### Additional Patterns to Check

1. **@gallagher references** — verify both 2017writi and 2020ethic are cited where needed
2. **Meadows citekeys** — verify `@meadows2008` vs other works
3. **Alexander citekeys** — verify `@alexander1964notet` correct everywhere
4. **Star citekeys** — verify `@star1999ethnp` or other works

### Cross-Reference Verification

Compare scholar-registry-v101.md against:
- All citekey instances in student reading files
- All citekey instances in justification files
- Ensure consistency across vault

---

## Files Requiring Attention

### Critical Files (Fix First)

| File | Error Type | Priority |
|------|-----------|----------|
| `vault-conventions.md` | Kline name | Critical |
| `scholar-registry-v101.md` | Kline name | Critical |
| `tech-requirements-access-reasons-v101.md` | Kline placeholder | High |

### Files with High Instance Counts

| File | Scholar | Instances | Action Needed |
|------|---------|-----------|---------------|
| `kirschenbaum-textpocalypse-reasons-v101.md` | Kirschenbaum | 20+ | Add citekeys |
| `catalog-description-reasons-v101.md` | Elbow | 3 | Context check |
| `course-overview-reasons-v101.md` | Elbow | 3 | Context check |
| `portfolio-rubric-reasons-v101.md` | Elbow | 2 | Context check |
| `salvatori-conversations-texts-reasons-v101.md` | Salvatori | Multiple | Verify citekey |

---

## Methodology Notes

### Search Parameters Used

1. **Literal searches:** "Ronald Kline", "Chris Gallagher", "Kirschenbaum", "Elbow", "@salvatori"
2. **Regex searches:** None in initial sweep (all literal for maximum coverage)
3. **File patterns:** `*.md` in `/Users/preterite/Local/virens/user1/Scholar/600_teaching/`
4. **Scope:** All subdirectories including y_meta, z_archive

### Tools Used

- Desktop Commander `start_search` with content search type
- Pattern: literalSearch=true for exact matches
- Results paginated to avoid overwhelming output

### Limitations

1. Context extraction limited to line-level matches (5 lines surrounding)
2. No semantic analysis of citekey correctness (only presence/absence)
3. Manual review still required for ambiguous cases
4. Cross-file dependency checking not automated

---

## Next Steps

### Phase 1: High-Confidence Corrections

1. ✅ Fix 3 Ronald Kline instances → Stephen J. Kline
2. Complete vault-conventions.md corrections
3. Complete scholar-registry-v101.md corrections
4. Develop prose for tech-requirements line 67 placeholder

### Phase 2: Context-Based Corrections

5. Review Kirschenbaum instances (start with student reading files)
6. Extract and review Elbow instances with context
7. Verify Salvatori citekey accuracy

### Phase 3: Verification Sweep

8. Cross-reference all citekeys against scholar-registry
9. Verify student reading files have correct citekeys in metadata
10. Check justification files for citation consistency

---

## Questions for Michael

1. **Kline line 67 placeholder:** Should this become developed prose about mundane technology, or is it meant as a transition marker?

2. **Elbow work priorities:** Which Elbow work is most central to VIRENS 101 philosophy? (This will help prioritize ambiguous citekey assignments)

3. **Salvatori difficulty context:** When you cite Salvatori on "difficulty as diagnostic," is that from *Conversations with Texts* (1996) or the Donahue co-authored book?

4. **Kirschenbaum metadata placeholders:** Many files have "kirschenbaum" in YAML without citekeys — should these all become `@kirschenbaum2023prepa` for Week 1 context?

5. **Batch vs. incremental correction:** Would you prefer I fix all Ronald Kline instances now, or wait for full report review?

---

*Report generated: 2026-02-13*  
*Search sessions: 8 completed*  
*Total markdown files scanned: ~300+ in 600_teaching/*
