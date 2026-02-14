---
created: 2026-02-13
type: final-audit-summary
status: ready-for-corrections
project: virens-101
tags: [citekey-verification, correction-priorities, workflow]
---

# Final Citekey Audit Summary & Correction Priorities

**Date:** 2026-02-13  
**Finding:** Initial concern about truncated citekeys was SEARCH DISPLAY artifact, not actual file corruption  
**Verified:** Sample file M3-to-M4-transition-reflection-reasons-v101.md has complete, valid citekeys

---

## Key Finding: Citekeys Are Complete

**Initial alarm:** Search results showed patterns like `[[@m`, `[[@y`, `[[@s]`

**Actual reality:** These are COMPLETE citekeys, search tool truncated display

**Example from M3-to-M4 file:**
- Line 55: `Donella Meadows [[@meadows2008lever]]'` ✓ Complete and correct
- Line 65: `Kathleen Blake Yancey's [[@yancey1998refle]]` ✓ Complete and correct  
- Line 67: `Nancy Sommers and Laura Saltz's [[@sommers2004novid]]` ✓ Complete and correct
- Line 77: `Anne Beaufort's [[@beaufort2007colle]]` ✓ Complete and correct

All citekeys verified against library.bib: **ALL VALID** ✓

---

## Remaining Work: Three Priority Categories

### Priority 1: Missing Citekeys (Kirschenbaum, Elbow, Others)

**Issue:** Many prose mentions lack citekeys entirely

**Examples we know about:**
- "Kirschenbaum" without `[[@kirschenbaum20XX]]` in 154 locations
- "Elbow" without `[[@elbow19XX]]` in 150 locations
- Likely others in metadata/prose

**Action needed:** Add appropriate citekey on first mention

### Priority 2: Multiple Citekey Links (First-Mention Violations)

**Issue:** Same author linked more than once in body text

**Rule violated:** Citekey appears on first mention only (exception: reference sections)

**Action needed:** Remove citekeys from second/subsequent mentions

### Priority 3: Citekeys in Headings/Tables

**Issue:** Citekeys appearing in structural elements where they shouldn't

**Rule violated:** Never in headings, never in body-text tables

**Action needed:** Remove citekeys from headings/tables

---

## Systematic Correction Workflow

### Phase 1: Kirschenbaum Additions (154 instances)

**Decision rules established:**
- AI/LLM/textpocalypse context → `[[@kirschenbaum2023prepa]]`
- Materiality/forensics/mechanisms context → `[[@kirschenbaum2007mecha]]`

**Files to prioritize:**
1. `g_studentreadings/kirschenbaum-textpocalypse-*` (20+ instances)
2. Week overviews mentioning Kirschenbaum
3. Technical requirements files

**Process:**
1. Read file for context
2. Identify first "Kirschenbaum" mention in body
3. Add appropriate citekey: `Kirschenbaum [[@kirschenbaum20XX]]`
4. Verify subsequent mentions have NO citekey
5. Check reference sections (citekey OK there)

### Phase 2: Elbow Additions (150 instances)

**Decision rules:**
- Freewriting/process context → `[[@elbow1973writi]]` (most common)
- Contraries/dialectic context → `[[@elbow1983embra]]`
- Audience/voice context → `[[@elbow1987closj]]`
- Review essay context → `[[@elbow1991some]]`

**Process:**
1. Read context around "Elbow" mention
2. Determine which work from context clues
3. Add citekey on first mention
4. Remove from subsequent mentions

### Phase 3: Other Missing Citekeys

**Check for:**
- Standalone "Salvatori" (should be `[[@salvatori1996conve]]`)
- Standalone scholar names in metadata lists
- Prose mentions without links

### Phase 4: First-Mention Compliance

**For each file:**
1. Search for `[[@` patterns
2. Group by author
3. Verify first instance has citekey
4. Remove citekey from subsequent instances
5. Preserve citekeys in reference sections

### Phase 5: Structural Cleanup

**Remove citekeys from:**
1. All heading levels (`#`, `##`, `###`, etc.)
2. Body-text tables
3. Preserve in end-of-document reference tables

---

## Updated Scholar Registry Mapping

Per Michael's guidance (Question 3), update scholar-registry-v101.md to map short names to available citekeys:

```yaml
Salvatori:
  short-name: Salvatori
  available-citekeys:
    - salvatori1996conve
  primary-citekey: salvatori1996conve
  full-name: Mariolina Rizzi Salvatori
  key-work: "Conversations with Texts: Reading in the Teaching of Composition"

Kirschenbaum:
  short-name: Kirschenbaum
  available-citekeys:
    - kirschenbaum2007mecha
    - kirschenbaum2023prepa
  primary-citekey: kirschenbaum2023prepa
  context-map:
    AI-LLM-generative: kirschenbaum2023prepa
    materiality-forensics: kirschenbaum2007mecha
  full-name: Matthew G. Kirschenbaum
  key-works:
    - "Prepare for the Textpocalypse" (2023)
    - "Mechanisms: New Media and the Forensic Imagination" (2007)

Elbow:
  short-name: Elbow
  available-citekeys:
    - elbow1973writi
    - elbow1983embra
    - elbow1987closj
    - elbow1991some
    - elbow2001labor
  primary-citekey: elbow1973writi
  context-map:
    freewriting-process: elbow1973writi
    contraries-dialectic: elbow1983embra
    audience-voice: elbow1987closj
    expressive-review: elbow1991some
    reading-process: elbow2001labor
  full-name: Peter Elbow
  key-work: "Writing without teachers" (1973)

Meadows:
  short-name: Meadows
  available-citekeys:
    - meadows2008lever
  primary-citekey: meadows2008lever
  full-name: Donella H. Meadows
  key-work: "Leverage points: places to intervene in a system" (2008)

Yancey:
  short-name: Yancey
  available-citekeys:
    - yancey1998refle
  primary-citekey: yancey1998refle
  full-name: Kathleen Blake Yancey
  key-work: "Reflection in the writing classroom" (1998)

Alexander:
  short-name: Alexander
  available-citekeys:
    - alexander1964notet
  primary-citekey: alexander1964notet
  full-name: Christopher Alexander
  key-work: "Notes on the Synthesis of Form" (1964)

Sommers:
  short-name: Sommers
  available-citekeys:
    - sommers1980revis
    - sommers1982respo
    - sommers2004novid
  primary-citekey: sommers1980revis
  context-map:
    revision-strategies: sommers1980revis
    responding-writing: sommers1982respo
    novice-expert: sommers2004novid
  full-name: Nancy Sommers
  key-work: "Revision Strategies of Student Writers" (1980)
```

---

## Works Cited in VIRENS 101 But Missing from Library.bib

**Action per Michael's guidance:** Flag for later addition

### Flagged Works Needing BibTeX Entries

1. **Salvatori & Donahue** — *The Elements and Pleasures of Difficulty*
   - Currently no entry in library.bib
   - If cited in VIRENS 101 materials, needs addition

2. **Gallagher** — Verify both works present:
   - `@gallagher2017writi` ✓ EXISTS
   - `@gallagher2020ethic` ✓ EXISTS

3. **Kline disambiguation** — Verify it's Stephen J. not Ronald:
   - `@kline1985what` ✓ EXISTS, confirmed Stephen J. Kline

### Verification Needed

Check if any VIRENS 101 materials cite:
- Elbow's *Writing With Power* (1981) — NOT in library.bib
- Elbow's *Embracing Contraries* book (1986) — NOT in library.bib
- Salvatori's *Pedagogy: Disturbing History* — NOT in library.bib

If cited, flag for BibTeX addition.

---

## Next Immediate Steps

### 1. Create Scholar Registry Update

Add citekey mapping to scholar-registry-v101.md per structure above

### 2. Begin Kirschenbaum Corrections

Start with highest-concentration files:
- `g_studentreadings/kirschenbaum-textpocalypse-reasons-v101.md`
- `g_studentreadings/kirschenbaum-textpocalypse-course-v101.md`

### 3. Sample First-Mention Audit

Pick 3-5 representative files and verify first-mention compliance

### 4. Heading/Table Scan

Systematic scan for citekeys in structural elements

---

## Success Criteria

**Phase complete when:**
- [ ] All Kirschenbaum mentions have appropriate citekey on first mention
- [ ] All Elbow mentions have appropriate citekey on first mention
- [ ] All first-mention rules followed (no duplicate citekeys in body)
- [ ] No citekeys in headings
- [ ] No citekeys in body-text tables (OK in reference tables)
- [ ] Scholar registry updated with citekey mapping
- [ ] Missing works flagged for future library.bib addition

---

*Status: Ready to begin corrections*  
*Next action: Create scholar registry update, then begin Kirschenbaum file corrections*
