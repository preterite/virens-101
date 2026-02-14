---
created: 2026-02-13
type: audit-report
status: in-progress
project: virens-101
tags: [citekey-audit, library-bib-verification, systematic-check]
---

# Citekey Audit: Library.bib Verification

**Purpose:** Systematic verification of all citekeys in VIRENS 101 materials against canonical library.bib  
**Date:** 2026-02-13  
**Total citekey instances found:** 570 across virens_101 directory

---

## Audit Methodology

### Step 1: Extract All Citekey Patterns

Search pattern: `\[\[@[a-z]` (finds all `[[@...]]` patterns)

**Result:** 570 instances found across multiple files

### Step 2: Pattern Analysis

**Observed patterns include:**
- Complete citekeys: `[[@salvatori1996conve]]`
- Incomplete citekeys: `[[@m`, `[[@y`, `[[@s`, `[[@b]` 
- Potentially invalid: `[[@inoue2019labos]]` (need to verify spelling)

**Critical finding:** Many citekeys appear TRUNCATED or CORRUPTED

---

## Known Valid Citekeys (from library.bib)

### Composition Pedagogy
- `@salvatori1996conve` — Salvatori, "Conversations with Texts" (1996)
- `@bartholomae1986inven` — Bartholomae, "Inventing the University" (1986)
- `@sommers1980revis` — Sommers, "Revision Strategies" (1980)
- `@sommers1982respo` — Sommers, "Responding to Student Writing" (1982)
- `@sommers2004novid` — Sommers & Saltz, "Novice as Expert" (2004)
- `@elbow1973writi` — Elbow, *Writing without teachers* (1973)
- `@elbow1983embra` — Elbow, "Embracing Contraries" (1983)
- `@elbow1987closj` — Elbow, "Closing My Eyes" (1987)
- `@elbow1991some` — Elbow, "Expressive Discourse" (1991)
- `@elbow2001labor` — Elbow, "Laboratory in Reading Process" (2001)
- `@inoue2019labos` — Inoue, *Labor-Based Grading Contracts* (2019) ✓
- `@yancey1998refle` — Yancey, *Reflection in the writing classroom* (1998)
- `@rose1989livet` — Rose, *Lives on the boundary* (1989)
- `@shaughnessy1977error` — Shaughnessy, *Errors and expectations* (1977)
- `@perl1979compp` — Perl, "Composing processes of unskilled writers" (1979)
- `@flower1981cogni` — Flower & Hayes, "Cognitive Process Theory" (1981)
- `@downs2007teaci` — Downs & Wardle, "Teaching about writing" (2007)
- `@beaufort2007colle` — Beaufort, *College writing and beyond* (2007)

### Systems/Design
- `@alexander1964notet` — Alexander, *Notes on the Synthesis of Form* (1964)
- `@meadows2008lever` — Meadows, "Leverage points" (2008)
- `@brooks1986silve` — Brooks, "No Silver Bullet" (1986)
- `@norman2013desig` — Norman, *The design of everyday things* (2013)
- `@star1999ethnp` — Star, "Ethnography of Infrastructure" (1999)

### Technology Studies
- `@ong2012writi` — Ong, "Writing Restructures Consciousness" (2012)
- `@kirschenbaum2007mecha` — Kirschenbaum, *Mechanisms* (2007)
- `@kirschenbaum2023prepa` — Kirschenbaum, "Prepare for Textpocalypse" (2023)
- `@selber2004multi` — Selber, *Multiliteracies for a digital age* (2004)
- `@wysocki2004writi` — Wysocki, *Writing new media* (2004)
- `@kline1985what` — Kline, "What Is Technology?" (1985)

### Literary/Philosophical
- `@bernstein1987blood` — Bernstein, "Blood on the Cutting Room Floor" (1987)
- `@borges1962labyr` — Borges, *Labyrinths* (1962)
- `@bush1945thinl` — Bush, "As we may think" (1945)

---

## Priority Actions

### Action 1: Fix Truncated Citekeys

**Problem:** Many citekeys appear as single letters: `[[@m`, `[[@y`, `[[@s`, `[[@b]`

**Likely cause:** Find-and-replace corruption or incomplete edits

**Solution needed:** Manual inspection to determine:
- What these SHOULD be (context clues)
- Correct citekey from library.bib

### Action 2: Verify Spelling Variants

**Check:** `@inoue2019labos` — Is this correct or should it be `@inoue2019labor`?

**Library.bib says:** `@inoue2019labos` ✓ (correct - "labos" not "labor")

### Action 3: Map Scholar Names to Available Citekeys

Update scholar-registry-v101.md to explicitly show which citekeys are available:

```yaml
Salvatori:
  available-citekeys: [salvatori1996conve]
  primary: salvatori1996conve
  
Kirschenbaum:
  available-citekeys: [kirschenbaum2007mecha, kirschenbaum2023prepa]
  primary: kirschenbaum2023prepa  # VIRENS 101 emphasis on AI/generative text
  
Elbow:
  available-citekeys: [elbow1973writi, elbow1983embra, elbow1987closj, elbow1991some, elbow2001labor]
  primary: elbow1973writi  # Foundational freewriting text
  context-map:
    freewriting: elbow1973writi
    contraries: elbow1983embra
    audience: elbow1987closj
```

---

## Sample Files with Issues

### Files with Truncated Citekeys

From search results, these files show `[[@` followed by single letter:

1. `k_reflection/M3-to-M4-transition-reflection-reasons-v101.md`
   - Line 55: `[[@m` (likely Meadows)
   - Line 65: `[[@y` (likely Yancey)
   - Line 67: `[[@s` (likely Sommers or Salvatori)
   - Line 77: `[[@b` (likely Beaufort)

2. `k_reflection/portfolio-cover-letter-prompt-reasons-v101.md`
   - Line 55: `[[@y` (likely Yancey)
   - Line 57: `[[@s` (likely Sommers)
   - Line 59: `[[@b` (likely Beaufort)
   - Line 61: `[[@d` (likely Downs)
   - Line 80: `[[@i` (likely Inoue)

3. `k_reflection/evidence-based-reflection-guide-reasons-v101.md`
   - Line 39: `[[@y` (likely Yancey)
   - Line 63: `[[@s` (likely Sommers)
   - Line 77: `[[@b` (likely Beaufort)

---

## Next Steps

### Immediate: Sample File Inspection

Read one complete file with truncated citekeys to understand context and determine correct full citekeys.

**Target file:** `k_reflection/M3-to-M4-transition-reflection-reasons-v101.md`

### After Sample: Systematic Correction

1. Create mapping from truncated patterns to full citekeys based on context
2. Apply corrections file-by-file
3. Verify against library.bib
4. Check for first-mention compliance
5. Remove from headings/tables where needed

---

*Status: Ready for sample file inspection*  
*Next action: Read M3-to-M4-transition-reflection-reasons-v101.md to analyze truncation pattern*
