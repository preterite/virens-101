---
title: VIRENS 101 Vault Conventions Reference
aliases: [VIRENS 101 Vault Conventions Reference]
linter-yaml-title-alias: VIRENS 101 Vault Conventions Reference
created: 2026-01-31 14:12
modified: 2026-02-13 18:35
---

# VIRENS 101 Vault Conventions Reference

**Purpose**: This document provides the canonical identifiers, controlled vocabularies, and linking conventions for the VIRENS 101 Obsidian vault. Consult this when generating new notes to ensure consistency.

**Status**: Living document, updated as vault evolves

**Last Updated**: 2026-01-22

---

## Outcome Identifiers

Use these exact identifiers when linking to outcomes with `[[identifier]]` syntax:

| Outcome | Identifier | Usage Example |
|---------|-----------|---------------|
| 1. Composing Processes | `outcome-composing-processes` | `[[outcome-composing-processes]]` |
| 2. Critical Thinking & Difficulty-as-Diagnostic | `outcome-critical-thinking` | `[[outcome-critical-thinking]]` |
| 3. Rhetorical Awareness | `outcome-rhetorical-awareness` | `[[outcome-rhetorical-awareness]]` |
| 4. Constraint Literacy | `outcome-constraint-literacy` | `[[outcome-constraint-literacy]]` |
| 5. Textual Accumulation & Intellectual Capital | `outcome-textual-accumulation` | `[[outcome-textual-accumulation]]` |
| 6. Workflow Technologies & Collaboration | `outcome-workflow-technologies` | `[[outcome-workflow-technologies]]` |
| 7. Process Documentation & Metacognition | `outcome-process-documentation` | `[[outcome-process-documentation]]` |

**Linking to specific bullets**: Use heading anchors:

```markdown
[[outcome-critical-thinking#Difficulty as diagnostic]]
[[outcome-constraint-literacy#Constraint timing matters]]
```

---

## Vocabulary Terms (n_vocabulary/)

Core terms requiring definition files:

### Threshold Concepts
- `threshold-concept-recursion`
- `threshold-concept-genre`
- `threshold-concept-discourse-community`
- `threshold-concept-authorial-agency`

### Course-Specific Terminology
- `fragment` — Basic unit of textual production (150-400 words)
- `corpus` — Accumulated collection of fragments
- `constraint-sequencing` — Strategic timing of when constraints arrive
- `permission-flags` — Visible/Readable/Writable/Owner framework
- `graph` — Knowledge structure emphasizing connections over hierarchies
- `writing-as-verb` — Composing labor, process, action
- `writing-as-noun` — Textual capital, product, accumulated value
- `difficulty-as-diagnostic` — Resistance as informational signal
- `six-moves` — Capture/Classify/Route/Distill/Connect/Publish framework

### Composition Theory Terms
- `invention` — Rhetorical canon of idea generation
- `arrangement` — Rhetorical canon of organization
- `style` — Rhetorical canon of language choices
- `memory` — Rhetorical canon of retention/recall
- `delivery` — Rhetorical canon of presentation/format
- `exigency` — Rhetorical situation's call to action
- `kairos` — Rhetorical timing, opportune moment
- `ethos` — Rhetorical appeal to credibility
- `pathos` — Rhetorical appeal to emotion
- `logos` — Rhetorical appeal to logic

### Technical/Workflow Terms
- `version-control` — Tracking changes across drafts
- `dev-log` — Development log documenting process
- `spec-document` — Specification document articulating intentions
- `system-map` — Visualization of personal workflow infrastructure
- `BEAM-framework` — Background/Exhibit/Argument/Method citation taxonomy
- `SEAR-procedure` — Situate/Embed/Analyze/Relate citation protocol

**Linking convention**: `[[vocab-fragment]]` or `[[vocab-constraint-sequencing]]`

---

## Definition Transclusions (y_defs/)

Available `_def-*.md` files for transclusion with `![[_def-name]]`:

### Fragment Model
- `_def-fragment-definition` → "one claim with supporting evidence"
- `_def-fragment-wordcount-range` → 150-400 words
- `_def-fragment-target-total` → 40-50 fragments
- `_def-fragment-production-rate` → 3-4 fragments per week

### Assessment Structure
- `_def-portfolio-weight` → 50%
- `_def-formative-weight` → 50%
- `_def-late-penalty-schedule` → 20%/30%/50% graduated penalties

### Time Structure
- `_def-semester-weeks` → 15 weeks
- `_def-blocks-per-week` → 6 blocks
- `_def-block-duration` → 25 minutes
- `_def-available-blocks` → 62 blocks (after subtractions)

### Movement Boundaries
- `_def-M1-weeks` → Weeks 1-3
- `_def-M2-weeks` → Weeks 4-7
- `_def-M3-weeks` → Weeks 8-11
- `_def-M4-weeks` → Weeks 12-15

### Process Documentation
- `_def-dev-log-frequency` → 2× per week
- `_def-dev-log-format` → "What I did / What happened / What I learned"

### Tech Stack
- `_def-eli-review-cost` → $20/student
- `_def-total-student-cost` → $30-35 (includes index cards)
- `_def-reading-load-max` → 40-60 pages per week

**Usage example**:

```markdown
Students produce ![[_def-fragment-target-total]] over ![[_def-semester-weeks]], 
each containing ![[_def-fragment-definition]] in ![[_def-fragment-wordcount-range]].
```

---

## Scholar Registry (Controlled Vocabulary)

Use these exact short names in `cites-scholars` arrays:

### Composition Pedagogy
- Salvatori [[@salvatori1996conve]] (Mariolina Salvatori)
- Bartholomae (David Bartholomae)
- Sommers (Nancy Sommers)
- Elbow (Peter Elbow)
- Inoue [[@inoue2019labos]] (Asao Inoue)
- Yancey [[@yancey1998refle]] (Kathleen Blake Yancey)
- Rose [[@rose1989livet]] (Mike Rose)
- Shaughnessy [[@shaughnessy1977error]] (Mina Shaughnessy)
- Perl [[@perl1979compp]] (Sondra Perl)
- Flower [[@flower1981cogni]] (Linda Flower)
- Graff (Gerald Graff)
- Melzer (Dan Melzer)
- Downs [[@downs2007teaci]] (Doug Downs)

### Systems/Design Thinking
- Alexander [[@alexander1964notet]] (Christopher Alexander)
- Meadows [[@meadows2008lever]] (Donella Meadows)
- Schön (Donald Schön)
- Brooks [[@brooks1986silve]] (Fred Brooks)
- Norman [[@norman2013desig]] (Don Norman)
- Star [[@star1999ethnp]] (Susan Leigh Star)
- Bowker (Geoffrey Bowker)
- Simon (Herbert Simon)

### Technology Studies
- Ong [[@ong2012writi]] (Walter Ong)
- Kirschenbaum (Matthew Kirschenbaum)
- Selber [[@selber2004multi]] (Stuart Selber)
- Haas (Christina Haas)
- Bolter (Jay David Bolter)
- Kline [[@kline1985what]] (Stephen J. Kline)

### Literary/Philosophical
- Bernstein (Charles Bernstein)
- Borges [[@borges1962labyr]] (Jorge Luis Borges)
- Bush [[@bush1945thinl]] (Vannevar Bush)
- Quine (Willard Van Orman Quine)
- Jackson (Shelley Jackson)

**Usage in reasons notes**:

```yaml
cites-scholars: [Salvatori, Alexander, Meadows]
primary-theorist: Salvatori
```

---

## Sync Groups

Notes sharing parameters should declare sync groups. Available groups:

| Group | Parameters | Use When |
|-------|-----------|----------|
| `assessment-weights` | Portfolio/formative split (50/50) | Discussing assessment structure |
| `fragment-model` | Fragment definitions, targets, rates | Discussing corpus building |
| `time-structure` | Blocks, weeks, durations | Discussing schedule/time |
| `movement-schedule` | M1-M4 week assignments | Discussing movements |
| `tech-stack` | Tools, costs | Discussing technology |
| `dev-log-specs` | Frequency, format | Discussing process docs |
| `peer-review-specs` | Eli Review parameters | Discussing peer feedback |
| `late-policy` | Penalty schedule | Discussing deadlines |
| `reading-load` | Pages per week | Discussing readings |

**Usage in frontmatter**:

```yaml
sync-group: [fragment-model, assessment-weights]
```

---

## Assignment Structure Templates

### For f_assignments/ Files (Course Track)

All assignment files must include these four sections:

#### 1. Context (Paragraph)
Background, principles, prose explanation of why students are doing this assignment. Should connect to course outcomes and pedagogical philosophy.

**Length**: 4-8 sentences

**Tone**: Conversational but purposeful; helps students understand significance

**Example opening**: "This assignment asks you to..."

#### 2. Task (One Sentence)
Crystal-clear statement of what to produce, do, or learn.

**Format**: Single declarative sentence

**Must specify**: Deliverable type, approximate scope

**Example**: "Produce 5 fragments of 200-300 words each that extract claims from this week's readings."

#### 3. Standards (Ordered List)
Success criteria with hyperlinked outcomes.

**Format**: Numbered list

**Each item**: Links to `[[outcome-identifier]]` or specific bullets

**Example**:

```markdown
1. Demonstrates [[outcome-critical-thinking#Reading in multiple modes]]
2. Shows [[outcome-textual-accumulation]] through corpus building
3. Applies [[outcome-workflow-technologies#Six-move framework]]
```

#### 4. Guidance (Paragraph)
Practical tips for doing well.

**Length**: 4-6 sentences

**Should include**: Concrete suggestions, common pitfalls to avoid, time management tips

**Tone**: Supportive, specific

---

## Reading Guide Structure (g_studentreadings/)

All reading guide course files must include these 9 elements:

### 1. Summary (2-3 sentences)
Main argument/purpose of the text

### 2. Course Placement
When it appears (week and movement)

### 3. Connections
Hyperlinks to `[[outcomes]]`, `[[vocab-terms]]`, related readings

### 4. Difficulty Level
Estimated time + complexity note (accessible/moderate/challenging)

### 5. Key Concepts
3-5 terms or ideas introduced

### 6. Guiding Questions
2-3 questions to orient reading

### 7. Link to Current Work
How this reading supports that week's writing tasks

### 8. Reading Protocol Suggestion
Recommended approach (e.g., "Read once for gist, annotate on second pass")

### 9. Common Stumbling Blocks
Concepts students typically struggle with

### 10. Classroom Application Note
What we'll do with this reading in class

---

## Movement Metadata

### Movement 1: Surfacing
- **Weeks**: 1-3
- **Blocks**: ~18
- **Focus**: Expansion, capture, freewriting
- **Metaphor**: Mining raw material
- **W/P/R character**: W-heavy

### Movement 2: Naming
- **Weeks**: 4-7
- **Blocks**: ~22
- **Focus**: Source engagement, structured feedback, categorization
- **Metaphor**: Classifying and routing
- **W/P/R character**: Balanced

### Movement 3: Operating at Scale
- **Weeks**: 8-11
- **Blocks**: ~25
- **Focus**: Corpus management, consolidation
- **Metaphor**: Managing the growing collection
- **W/P/R character**: W+R heavy

### Movement 4: Synthesis
- **Weeks**: 12-15
- **Blocks**: ~23
- **Focus**: Portfolio assembly, polish, selection
- **Metaphor**: Composing the final product
- **W/P/R character**: R-heavy

---

## File Naming Patterns

### Content (Student-Facing)

```
{topic-identifier}-course-v101.md
{topic-identifier}-week{NN}-course-v101.md
```

### Justification (Pedagogical Rationale)

```
{topic-identifier}-reasons-v101.md
{topic-identifier}-week{NN}-reasons-v101.md
```

### Definitions

```
_def-{parameter-name}.md
```

### Meta/Administrative

```
{topic-identifier}-meta-v101.md
```

**Identifier format**: kebab-case (lowercase, hyphens, no spaces)

**Examples**:
- `constraint-sequencing-course-v101.md`
- `literacy-narrative-assignment-course-v101.md`
- `week01-overview-course-v101.md`

---

## Component Directory Map

| Code | Directory | Purpose |
|------|-----------|---------|
| a_ | a_description | Course catalog description |
| b_ | b_overview | Movement overviews, tool guides |
| c_ | c_rationale | Theoretical justifications (reasons only) |
| d_ | d_requirements | Prerequisites, materials |
| e_ | e_outcomes | Learning outcomes |
| f_ | f_assignments | Assignment prompts and guides |
| g_ | g_studentreadings | Reading documentation |
| h_ | h_policies | Course policies (paired) |
| i_ | i_schedule | Master schedule |
| i_week | i_week01–15 | Week-specific materials |
| i_weekexam | i_weekexam | Finals week |
| j_ | j_assessment | Grading, rubrics, portfolio |
| k_ | k_reflection | Reflection prompts |
| l_ | l_gratitude | Acknowledgments |
| m_ | m_workscited | Bibliography |
| n_ | n_vocabulary | Term definitions |
| x_ | x_todevelop | Parking lot for future development |
| y_defs | y_defs | Parameter definitions (_def-*.md) |
| y_meta | y_meta | Meta-documentation, registries |
| z_ | z_uncategorized | Unsorted materials |

---

## Status Values

Use these in `status` frontmatter field:

| Status | Meaning |
|--------|---------|
| `draft` | Initial creation, incomplete |
| `ready` | Complete and ready for use |
| `needs-sync-review` | Parameters may be out of sync with definitions |
| `archived` | No longer current, preserved for reference |

---

## Common Wikilink Patterns

### Cross-References Between Paired Notes

**In course notes**:

```markdown
For the pedagogical rationale, see [[topic-reasons-v101]].
```

**In reasons notes**:

```markdown
This principle is implemented in [[topic-course-v101]].
```

### Linking to Specific Sections

```markdown
[[filename#Section Heading]]
[[filename#Section Heading|Display Text]]
```

### Outcome Links with Context

```markdown
This assignment addresses [[outcome-composing-processes]], particularly the 
bullets on [[outcome-composing-processes#Daily writing practice]] and 
[[outcome-composing-processes#Building corpus]].
```

### Vocabulary Links on First Use

```markdown
Students create [[vocab-fragment|fragments]] that accumulate into a 
[[vocab-corpus]]. Each fragment should demonstrate [[vocab-constraint-literacy]].
```

---

## YAML Frontmatter Quick Reference

### Content Notes

```yaml
---
created: YYYY-MM-DD
type: teaching-course-content
course: virens-101
component: [directory name]
track: content
identifier: [kebab-case-topic]
paired-justification: [[topic-reasons-v101]]
status: draft | ready | needs-sync-review | archived
outcomes-addressed: [outcome-composing-processes, outcome-critical-thinking]
outcomes-primary: outcome-composing-processes
sync-group: [fragment-model, assessment-weights]
depends-on: []
uses-defs: [fragment-target-total, fragment-wordcount-range]
tags: [teaching, virens-101, course-content, component-tag]
---
```

### Reasons Notes

```yaml
---
created: YYYY-MM-DD
type: teaching-course-justification
course: virens-101
component: [directory name]
track: justification
identifier: [kebab-case-topic]
paired-content: [[topic-course-v101]]
status: draft | ready | needs-sync-review | archived
cites-scholars: [Salvatori, Alexander, Meadows]
primary-theorist: Salvatori
sync-group: [fragment-model, assessment-weights]
depends-on: []
tags: [teaching, virens-101, justification, pedagogy, component-tag]
---
```

---

## Generation Quality Checklist

Use this checklist when generating notes:

### Content Track
- [ ] Second-person "you" throughout
- [ ] Concrete examples before abstractions
- [ ] All structural requirements met (Context/Task/Standards/Guidance for assignments)
- [ ] Outcome links use valid identifiers from this document
- [ ] Vocabulary terms linked on first use
- [ ] `paired-justification` link correct
- [ ] `outcomes-addressed` and `outcomes-primary` populated
- [ ] Appropriate `sync-group` tags
- [ ] Complete YAML frontmatter

### Justification Track
- [ ] Scholarly register (third person or first-person plural)
- [ ] Explicit theoretical citations
- [ ] `cites-scholars` uses controlled vocabulary from this document
- [ ] `primary-theorist` identified
- [ ] `paired-content` link correct
- [ ] Appropriate `sync-group` tags
- [ ] Complete YAML frontmatter

### Cross-References
- [ ] All `[[wikilinks]]` syntactically correct
- [ ] All `[[outcome-*]]` links use identifiers from this document
- [ ] All `[[vocab-*]]` links point to terms that exist or will exist
- [ ] Bidirectional links between pairs work
- [ ] Definition transclusions use `![[_def-*]]` syntax

---

_Version: 1.0_<br/>
_Created: 2026-01-22_<br/>
_Maintained by: Michael Edwards_<br/>
_For: VIRENS 101 Course Design Project_
