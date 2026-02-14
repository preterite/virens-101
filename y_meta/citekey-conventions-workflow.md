---
created: 2026-02-13
type: process-documentation
status: ready-for-review
project: virens-101
tags: [citekey-conventions, citation-workflow, library-bib, canonical-source]
---

# Citekey Conventions and Citation Workflow

**Purpose:** Establish canonical citation practices for VIRENS 101 project based on library.bib source of truth

**Date:** 2026-02-13  
**Scope:** All markdown files in 600_teaching/virens_101/

---

## Concern 1: Library.bib as Canonical Source of Truth

### Principle

**ALL citekeys must match entries in `/Users/preterite/Local/virens/user1/Scholar/references/library.bib`**

Any citekey used in VIRENS 101 materials must:
1. Exist in library.bib as a valid BibTeX entry
2. Use the exact citekey from that entry (e.g., `@kirschenbaum2007mecha`, not a variant)
3. Not invent citekeys that don't exist in library.bib

### Current Canonical Citekeys (Key Authors)

#### Kirschenbaum
- `@kirschenbaum2007mecha` — *Mechanisms. New Media and the Forensic Imagination* (MIT Press, 2007)
- `@kirschenbaum2023prepa` — "Prepare for the Textpocalypse" (*The Atlantic Online*, 2023)

**No other Kirschenbaum citekeys exist in library.bib**

#### Elbow
- `@elbow1983embra` — "Embracing Contraries in the Teaching Process" (*College English*, 1983)
- `@elbow1991some` — "Some Thoughts on 'Expressive Discourse': A Review Essay" (*JAC*, 1991)
- `@elbow1987closj` — "Closing My Eyes As I Speak: An Argument for Ignoring Audience" (*College English*, 1987)
- `@elbow1973writi` — *Writing without teachers* (Oxford UP, 1973)
- `@elbow2001labor` — "A Laboratory in the Reading Process" (in *The Original Text-Wrestling Book*, 2001)

**Note:** No *Writing With Power* (1981) or *Embracing Contraries* (book, 1986) entries in library.bib currently

#### Salvatori
- `@salvatori1996conve` — "Conversations with Texts: Reading in the Teaching of Composition" (*College English*, 1996)

**Note:** Only ONE Salvatori entry in library.bib. No Donahue co-authored *Elements and Pleasures of Difficulty* entry.

#### Kline
- `@kline1985what` — "What Is Technology?" (*Bulletin of Science, Technology & Society*, 1985)

**Confirmed:** Stephen J. Kline (not Ronald Kline)

---

## Concern 2: Citation Placement Conventions

### Rule 1: Link on First Mention Only

**Citekeys appear ONLY on first author mention in body text of each document**

#### Correct Pattern
```markdown
Salvatori [[@salvatori1996conve]] argues that difficulty is diagnostic rather than deficiency. 
This framework helps students see struggle as informative...

Later in the document, Salvatori's approach connects to...  ← NO citekey here
```

#### Incorrect Pattern
```markdown
Salvatori [[@salvatori1996conve]] argues that difficulty is diagnostic.

Later, Salvatori [[@salvatori1996conve]] also discusses...  ← WRONG - already linked above
```

### Rule 2: Exception for Reference Lists

**Citekeys MAY appear a second time ONLY in end-of-document reference sections**

These sections have titles like:
- "Scholarly Sources"
- "Direct Citations"
- "Works Cited"  
- "References"
- "Related Readings"

#### Correct Pattern
```markdown
## Theoretical Grounding

Salvatori [[@salvatori1996conve]] argues that difficulty is diagnostic...  ← First mention, linked

[body of document continues...]

---

## Scholarly Sources

### Direct Citations

Salvatori [[@salvatori1996conve]], Mariolina. "Conversations with Texts: Reading in the Teaching of Composition." *College English* 58.4 (1996): 440-454.  ← Second mention OK in references section
```

### Rule 3: Never in Headings or Tables

**Citekeys NEVER appear in:**
- Markdown headings (any level)
- Table cells
- Image captions  
- Front matter YAML

#### Exception: Reference Tables

**Citekeys MAY appear in tables ONLY if the table itself is a references list at end of document**

#### Correct Pattern - Body Table
```markdown
| Scholar | Key Contribution | Key Text |
|---------|------------------|----------|
| Salvatori | Difficulty pedagogy | "Conversations with Texts" |  ← NO citekey
| Alexander | Misfits, pattern language | *Notes on Synthesis of Form* |  ← NO citekey
```

#### Correct Pattern - Reference Table (end of document)
```markdown
## Works Cited

| Author | Citation |
|--------|----------|
| Salvatori [[@salvatori1996conve]] | "Conversations with Texts: Reading..." |  ← OK in reference table
| Alexander [[@alexander1964notet]] | *Notes on the Synthesis of Form*... |  ← OK in reference table
```

#### Incorrect Patterns
```markdown
### Salvatori [[@salvatori1996conve]] on Difficulty  ← WRONG - citekey in heading

> **Reading Strategy**: Alexander [[@alexander1964notet]]  ← WRONG - citekey in heading
```

---

## Reconciling Scholar Registry vs. Library.bib

### Current Discrepancy

**vault-conventions.md and scholar-registry-v101.md use SHORT NAMES in controlled vocabulary:**
```yaml
cites-scholars: [Salvatori, Alexander, Meadows]
```

**These short names do NOT match library.bib citekeys:**
- "Salvatori" (registry) ≠ `@salvatori1996conve` (library.bib)
- "Kirschenbaum" (registry) ≠ `@kirschenbaum2007mecha` or `@kirschenbaum2023prepa` (library.bib)

### Resolution Strategy

**The scholar registry short names serve a DIFFERENT function than citekeys:**

1. **Short names** → For YAML metadata `cites-scholars` arrays (Dataview queries, filtering)
2. **Citekeys** → For inline prose citations with bibliographic specificity

Both vocabularies are needed but serve different purposes.

#### Metadata (YAML frontmatter)
```yaml
cites-scholars: [Salvatori, Alexander, Kirschenbaum]  ← Short names for Dataview
```

#### Body Text (First mention)
```markdown
Salvatori [[@salvatori1996conve]] argues...  ← Full citekey for bibliography

Kirschenbaum [[@kirschenbaum2023prepa]] warns...  ← Specific work cited
```

### Mapping Short Names to Citekeys

When a short name in `cites-scholars` maps to MULTIPLE possible citekeys, the context determines which citekey to use in prose:

**Example: "Kirschenbaum" →**
- AI/LLM/textpocalypse context → `@kirschenbaum2023prepa`
- Materiality/forensics/mechanisms context → `@kirschenbaum2007mecha`

**Example: "Elbow" →**
- Process pedagogy/freewriting context → `@elbow1973writi`
- Contraries/dialectic context → `@elbow1983embra`
- Audience/ignoring readers context → `@elbow1987closj`

---

## Decision Rules for Citekey Assignment

### Kirschenbaum

| Context Clues | Citekey | Work |
|---------------|---------|------|
| AI, LLM, ChatGPT, GPT, generative text, "textpocalypse" | `@kirschenbaum2023prepa` | "Prepare for the Textpocalypse" |
| Materiality, forensics, digital preservation, storage, hard drives, "mechanisms" | `@kirschenbaum2007mecha` | *Mechanisms* |

### Elbow

| Context Clues | Citekey | Work |
|---------------|---------|------|
| Freewriting, no editing, generative writing, teacherless | `@elbow1973writi` | *Writing without teachers* |
| Contraries, dialectic, belief/doubt, methodological believing | `@elbow1983embra` | "Embracing Contraries" |
| Ignoring audience, voice, expressivism | `@elbow1987closj` | "Closing My Eyes" |
| Expressive discourse (review/critique) | `@elbow1991some` | "Expressive Discourse" essay |

### Salvatori

| Context Clues | Citekey | Work |
|---------------|---------|------|
| ANY mention of Salvatori | `@salvatori1996conve` | "Conversations with Texts" |

**Reason:** Only one Salvatori entry in library.bib currently

**Note:** If *Elements and Pleasures of Difficulty* (with Donahue) is cited, it must first be added to library.bib

---

## Correction Workflow

### Phase 1: Verify Against Library.bib

For each file with citekey errors:

1. Extract all `[[@author]]` patterns
2. Check each against library.bib
3. Flag any that don't exist in library.bib
4. Flag any that use wrong citekey variant

### Phase 2: Apply First-Mention Rule

For each file with citation placement errors:

1. Find first author mention in body text
2. Ensure citekey is present: `Author [[@citekey]]`
3. Find subsequent mentions of same author
4. Remove citekeys from subsequent mentions
5. Check for reference section at end
6. If reference section exists, citekey MAY appear there

### Phase 3: Remove from Headings/Tables

For each file with structural placement errors:

1. Search all headings for `[[@` patterns
2. Remove citekeys from headings
3. Search all tables for `[[@` patterns  
4. If table is NOT a reference list, remove citekeys
5. If table IS a reference list at document end, citekeys OK

---

## Common Errors to Flag

### Error Type 1: Invented Citekeys

**Pattern:** `[[@author20XX]]` where entry doesn't exist in library.bib

**Example:**
```markdown
Kirschenbaum [[@kirschenbaum2008]]  ← WRONG - no such entry in library.bib
```

**Fix:** Use actual citekey `@kirschenbaum2007mecha` (note year is 2007, not 2008)

### Error Type 2: Multiple Links

**Pattern:** Same author linked twice in body text

**Example:**
```markdown
Salvatori [[@salvatori1996conve]] argues difficulty is diagnostic...

[50 lines later]

Salvatori [[@salvatori1996conve]] also emphasizes...  ← WRONG - second link
```

**Fix:** Remove second citekey
```markdown
Salvatori also emphasizes...  ← Just author name, no citekey
```

### Error Type 3: Citekeys in Headings

**Pattern:** `[[@citekey]]` inside heading markup

**Example:**
```markdown
### Salvatori [[@salvatori1996conve]] on Difficulty  ← WRONG
```

**Fix:** Remove citekey from heading
```markdown
### Salvatori on Difficulty  ← Just author name
```

### Error Type 4: Metadata vs. Prose Confusion

**Pattern:** Using full citekey in YAML frontmatter

**Example:**
```yaml
cites-scholars: [@salvatori1996conve, @alexander1964notet]  ← WRONG format
```

**Fix:** Use short names in metadata
```yaml
cites-scholars: [Salvatori, Alexander]  ← Correct - short names
```

---

## Systematic Audit Checklist

For a complete citekey audit of VIRENS 101 materials:

### Step 1: Extract All Citekeys
```bash
# Find all [[@...]] patterns in markdown files
grep -r "\[\[@" 600_teaching/virens_101/ | sort | uniq
```

### Step 2: Verify Against Library.bib
- [ ] Every extracted citekey exists in library.bib
- [ ] Citekey spellings match exactly (including year)
- [ ] No invented or variant citekeys

### Step 3: Check First-Mention Compliance
For each file:
- [ ] First author mention has citekey
- [ ] Subsequent mentions lack citekeys
- [ ] Exception: reference sections may repeat citekey

### Step 4: Check Structural Placement
- [ ] No citekeys in headings
- [ ] No citekeys in body-text tables
- [ ] Citekeys in reference tables only if end-of-document

### Step 5: Verify Context-Appropriate Citekeys
- [ ] Kirschenbaum citations use correct work (2007 vs 2023)
- [ ] Elbow citations use appropriate article/book
- [ ] All Salvatori → `@salvatori1996conve`

---

## Questions for Michael

1. **Missing entries in library.bib:** Should I flag when VIRENS 101 materials reference works not yet in library.bib (e.g., Donahue/Salvatori *Elements and Pleasures*)?

2. **Adding entries:** If a work is cited in VIRENS 101 but missing from library.bib, should I:
   - (A) Draft a BibTeX entry for you to add to library.bib?
   - (B) Flag the citation as needing bibliographic work?
   - (C) Remove the citation until library.bib is updated?

3. **Metadata short names:** Should the scholar registry be updated to explicitly map short names to available citekeys? Example:
   ```yaml
   Kirschenbaum:
     available-citekeys: [kirschenbaum2007mecha, kirschenbaum2023prepa]
     primary: kirschenbaum2023prepa
   ```

4. **Reference section format:** In end-of-document reference sections, is the current mixed format OK (some with citekeys, some without), or should ALL references in those sections include citekeys?

---

*Created: 2026-02-13*  
*Canonical source: library.bib*  
*Convention owner: Michael Edwards*
