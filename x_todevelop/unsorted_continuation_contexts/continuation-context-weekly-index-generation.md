# VIRENS 101 Continuation Context

**Purpose**: Comprehensive handoff document for continuing weekly index note generation in a fresh conversation

**Date**: 2026-01-23  
**Status**: Ready for handoff  
**Next Task**: Generate 15 weekly index notes (`i_week01/` through `i_week15/`) one-by-one with guided brainstorming

---

## Quick Start for New Conversation

**Immediate task**: Generate weekly index notes using guided brainstorming approach:

1. **Read this document** for context and key files
2. **Read the template**: `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_meta/weekly-index-template.md`
3. **Read the consolidated schedule**: `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_schedule/virens-101-semester-schedule-consolidated.md`
4. **Generate Week 1 first**, using the synthesis area for brainstorming before locking in

**Workflow per week**:
- Present synthesis area brainstorming
- Discuss with Michael
- Lock in decisions
- Generate full weekly index note
- Write to `i_weekNN/weekNN-overview-course-v101.md`
- Move to next week

---

## Project Summary

### What This Is

VIRENS 101 is an innovative first-year composition course integrating:
- Traditional composition pedagogy (Salvatori, Bartholomae, Sommers)
- Systems thinking (Meadows, Alexander, Star)
- Design processes and constraint sequencing
- Process documentation and material hermeneutics

### Core Innovations

1. **Textual Accumulation**: Students build corpus of 40-50 fragments rather than completing discrete assignments
2. **Constraint Sequencing**: When constraints arrive matters as much as what they are
3. **Difficulty-as-Diagnostic**: Struggle is informational signal, not problem to eliminate
4. **Six-Move Framework**: Capture → Classify → Route → Distill → Connect → Publish
5. **Writing as Labor and Capital**: Process work (labor) builds reusable intellectual infrastructure (capital)

### Course Architecture

| Movement | Weeks | Focus | W/P/R Emphasis |
|----------|-------|-------|----------------|
| M1: Surfacing | 1-3 | Expansion, capture, freewriting | W-heavy |
| M2: Naming | 4-7 | Sources, structured feedback, categorization | Balanced |
| M3: Operating at Scale | 8-11 | Corpus management, consolidation | W+R heavy |
| M4: Synthesis | 12-15 | Portfolio assembly, polish, selection | R-heavy |

### Time Structure

- 15 weeks
- 6 blocks/week × 25 minutes = 150 minutes/week
- 90 total blocks, 62 available for instruction
- Configurable as 1×150, 2×75, or 3×50 meeting patterns

---

## Current State: What's Complete

### ✅ Fully Completed

| Category | Files/Items | Location |
|----------|-------------|----------|
| **Consolidated Schedule** | 1 master document with all weeks, blocks, readings, assignments | `i_schedule/` |
| **Student Reading Notes** | 15 readings, paired content + reasons | `g_studentreadings/` |
| **Peer Review Criteria** | 6 cycles, each with criteria file | `f_assignments/peer_review_cycles/` |
| **Instructor Prompts** | 11 prompts with content notes | `f_assignments/instructor_prompts/` |
| **Outcomes** | 7 outcomes, paired content + reasons | `e_outcomes/` |
| **Assessment** | Grading + policy, paired | `j_assessment/` |
| **Policies** | Late work, participation, etc. | `h_policies/` |
| **Tech Stack** | Tool guides and integration map | `b_overview/` + `y_meta/` |
| **Definition Files** | 18 canonical parameters | `y_defs/` |
| **Vault Conventions** | Style guide, voice guide, conventions | `y_meta/` |
| **Weekly Index Template** | Template with synthesis area | `y_meta/` |

### ✅ Recently Corrected (This Session)

| File | Change |
|------|--------|
| `peer-review-cycle4-beam-source-entries-criteria-course-v101.md` | Week 9 → Week 8 |
| `instructor-prompt-block9-4-conference-questions-course-v101.md` | Added homework-TO-conference clarification |
| `salvatori-conversations-texts-reasons-v101.md` | Week 2 → Week 3, added Difficulty Pair A docs |
| `star-ethnography-infrastructure-reasons-v101.md` | Week 11 → Week 10, added Difficulty Pair A docs |
| `meadows-leverage-points-reasons-v101.md` | Added Difficulty Pair B docs |
| `alexander-goodness-fit-reasons-v101.md` | Week 6 → Week 7, added Difficulty Pair B docs |

### ⏳ Next Up

| Task | Status |
|------|--------|
| Weekly index notes (15 files) | **READY TO BEGIN** |
| Reasons pairs for weekly notes (15 files) | After content notes |
| Movement overview reasons notes | Future |
| Vocabulary term definitions | Future |

---

## Key Files & Locations

### Essential Reference Files

```
/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/

├── i_schedule/
│   └── virens-101-semester-schedule-consolidated.md  ← AUTHORITATIVE SCHEDULE

├── y_meta/
│   ├── vault-conventions.md        ← Outcome IDs, scholar names, sync groups
│   ├── lessons-assignments-voice-guide-meta-v101.md  ← Voice for student materials
│   ├── weekly-index-template.md    ← Template with synthesis area
│   ├── scholar-registry-v101.md    ← Controlled vocabulary for citations
│   └── tech-wpr-integration-meta-v101.md  ← Block matrix reference

├── y_defs/
│   ├── _def-fragment-*.md          ← Fragment model parameters
│   ├── _def-M*-weeks.md            ← Movement boundaries
│   └── [18 total definition files]

├── e_outcomes/
│   └── [7 outcome pairs]           ← Link targets for outcomes-addressed

├── f_assignments/
│   ├── instructor_prompts/         ← 11 prompt files
│   └── peer_review_cycles/         ← 6 cycle criteria files

└── g_studentreadings/
    └── [15 reading pairs]          ← Reading notes to link from weekly
```

### Obsidian Skill File

```
/mnt/skills/user/obsidian-virens-101/SKILL.md
```

Contains wikilink preservation rules, YAML schema, file naming conventions.

---

## Weekly Generation Workflow

### Approach: Guided Brainstorming

For each week, use this process:

**Step 1: Present Synthesis Area**
Claude presents the synthesis area with:
- Big picture questions for the week
- Activity alternatives for each block
- Open questions needing resolution
- What the consolidated schedule already specifies

**Step 2: Discuss with Michael**
- Michael responds with preferences, clarifications
- Additional questions may surface
- Alternatives are evaluated

**Step 3: Lock In Decisions**
- Document decisions with brief rationale
- Clear what's fixed vs. flexible

**Step 4: Generate Full Note**
- Fill all template sections
- Include block details with Opening/Main/Closing
- Document connections and links

**Step 5: Write File**
- Save to `i_weekNN/weekNN-overview-course-v101.md`
- Move to next week

### Speed Adjustments

If Michael wants to move faster:
- "Go ahead with your best judgment for blocks"
- "Just generate the note, I'll review after"
- "Do weeks X-Y in batch"

If Michael wants more discussion:
- "Let's pause on block 3"
- "What alternatives did you consider?"
- "I'm not sure about the reading connection"

---

## Key Principles to Honor

### From Composition Pedagogy

1. **Writing is rewriting** — revision is not correction but re-seeing
2. **Difficulty is generative** — struggle produces insight (Salvatori)
3. **Genre awareness matters** — students learn to read/write conventions
4. **Metacognition enables transfer** — reflection builds portable skills

### From Systems Thinking

1. **Constraint sequencing** — when limits arrive matters (timing as pedagogy)
2. **Leverage points** — small interventions at right places produce change (Meadows)
3. **Goodness of fit** — design succeeds when form fits context (Alexander)
4. **Infrastructure becomes invisible** — success makes systems disappear (Star)

### From Course Design

1. **Accumulation over episodes** — corpus > discrete assignments
2. **Familiarize before stakes** — touch tools before performance matters
3. **Tech follows content** — tools arrive when needed for real work
4. **Difficulty pairs** — challenging readings paired for productive contrast

---

## Reference Tables

### Difficulty Reading Pairs

| Pair | Readings | Weeks | Theme |
|------|----------|-------|-------|
| **A** | Salvatori + Star | 3 and 10 | Visibility/Surfacing |
| **B** | Meadows + Alexander | 5 and 7 | Intervention/Fit |

### Peer Review Cycles

| Cycle | Week | Assignment | Protocol |
|-------|------|------------|----------|
| 1 | 5 | Literacy Narrative | Generous (SPQ) |
| 2 | 6 | Spec Document | Generous (SPQ) |
| 3 | 7 | Constraint Audit | Evaluative (DES) |
| 4 | 8 | BEAM Source Entries | Evaluative (DES) |
| 5 | 10 | BEAM Portfolio Framing | Generous (SPQ) |
| 6 | 12 | Documented Inquiry | Evaluative (DES) |

### Instructor Prompts

| Prompt | Week.Block | Title |
|--------|------------|-------|
| 1.2 | 1.2 | Technological Literacy |
| 1.4 | 1.4 | Campus Observation |
| 3.5 | 3.5 | Ong Revision |
| 4.3 | 4.3 | Materiality Circulation |
| 6.2 | 6.2 | Pop Culture Constraints |
| 7.5 | 7.5 | Experimental Form |
| 8.3 | 8.3 | Concept Tracing |
| 9.4 | 9.4 | Conference Questions (homework TO) |
| 12.3 | 12.3 | Portfolio Selection |
| 13.3 | 13.3 | Infrastructure Analysis |
| 15.2 | 15.2 | Transfer Celebration |

### Tech Instruction Blocks

| Block | Week | Activity |
|-------|------|----------|
| T1 | 2 | Index cards + OneDrive folder setup |
| T2 | 2 | Eli Review quick intro (ungraded) |
| T3 | 5 | Zotero basics (library, part 1) |
| T4 | 5 | Zotero practice (library, part 2) |
| T5 | 8 | "What You're Automating" |
| T6 | 13 | Optional: Advanced tools demo |

### Special Weeks

| Week | Type | Notes |
|------|------|-------|
| 9 | Conference Week | No class meetings; 30-min individual conferences |
| 14 | Presentations | All 6 blocks = student presentations |
| 15 | Final Week | 4 blocks + submission (may be shortened) |

---

## Vault File Path Conventions

### Weekly Index Notes

```
i_weekNN/weekNN-overview-course-v101.md
i_weekNN/weekNN-overview-reasons-v101.md (later)
```

### Wikilinks to Use

```markdown
[[outcome-composing-processes]]
[[outcome-critical-thinking]]
[[vocab-fragment]]
[[_def-fragment-wordcount-range]]
[[instructor-prompt-blockN-N-slug-course-v101]]
[[peer-review-cycleN-assignment-criteria-course-v101]]
[[reading-slug-course-v101]]
```

### YAML Frontmatter

Use the template in `y_meta/weekly-index-template.md`. Key fields:

```yaml
week-number: NN
movement: M1 | M2 | M3 | M4
movement-name: Surfacing | Naming | Operating at Scale | Synthesis
fragment-target-cumulative: [range]
```

---

## Session History Summary

### Session 1: Schedule Consolidation (2026-01-23 early)

- Consolidated tech-wpr-integration.md with readings and assignments
- Created authoritative schedule document
- Established difficulty pair structure
- Confirmed peer review cycle placements
- Resolved reading schedule for all 15 weeks

### Session 2: File Corrections (2026-01-23 later)

- Fixed 6 files with week number and difficulty pair documentation
- Created weekly index template with synthesis area
- Created this continuation context document
- Ready for weekly index generation

---

## Beginning Week 1 Generation

When starting the new conversation:

1. Read this document
2. Read `weekly-index-template.md`
3. Read consolidated schedule, Week 1 section
4. Present synthesis area for Week 1:
   - Movement context (M1: Surfacing)
   - Reading (Kirschenbaum)
   - What's special about week 1 (envelope exercise, course intro)
   - Block-by-block brainstorming
5. Discuss and lock in
6. Generate full note
7. Save to `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/i_week01/week01-overview-course-v101.md`

---

## Michael's Working Preferences (from memory)

- **Ask before assuming** — clarifying questions welcome
- **Surface alternatives proactively** — flag tradeoffs without being asked
- **Think in both vocabularies** — composition pedagogy AND systems/design
- **Prefer practical over theoretical** — solutions other instructors can adopt
- **Batch processing with pause management** — systematic work through items
- **Token-conscious** — request files individually vs. bulk
- **Direct and task-focused** — efficient progress while maintaining quality

---

*Continuation Context Version: 1.0*
*Created: 2026-01-23*
*Ready for: Weekly Index Note Generation (15 weeks)*
