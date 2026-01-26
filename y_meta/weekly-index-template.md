# Weekly Index Note Template

**Purpose**: Template for generating weekly index notes in `i_weekNN/` folders

**Usage**: Copy this structure when generating each week's index note. The **Synthesis Area** is for guided brainstorming with Claude before finalizing activities. After brainstorming, lock in decisions and remove synthesis content.

---

## Template

```markdown
---
created: {{date}}
type: teaching-course-content
course: virens-101
component: i_weekNN
track: content
identifier: weekNN-overview
paired-justification: [[weekNN-overview-reasons-v101]]
status: draft

# === WEEK METADATA ===
week-number: NN
movement: M1 | M2 | M3 | M4
movement-name: Surfacing | Naming | Operating at Scale | Synthesis
fragment-target-cumulative: [range, e.g., 8-12]

# === OUTCOMES ALIGNMENT ===
outcomes-addressed: []
outcomes-primary: ""

# === DEPENDENCY MANAGEMENT ===
sync-group: [time-structure, movement-schedule]
depends-on: [week(N-1)-overview-course-v101]
affects: [week(N+1)-overview-course-v101]
uses-defs: [block-duration, blocks-per-week]
last-sync-check: {{date}}
attention-flag: ""
tags: [teaching, virens-101, course-content, weekNN, movement-tag]
---

# Week NN: [Title]

> [!info] Week Overview
> **Movement**: MN — [Movement Name]
> **W/P/R Character**: [e.g., W-heavy, Balanced, R-heavy]
> **Fragment Target**: [cumulative range]
> **Status**: draft

---

## Synthesis Area

> [!note] For Claude & Michael
> This section is for brainstorming before finalizing. Delete before delivery.

### Big Picture Questions

- What's the pedagogical goal of this week?
- How does it connect to last week? Set up next week?
- What constraints are arriving or changing this week?
- What might students struggle with? (difficulty-as-diagnostic)

### Activity Brainstorming

| Block | Current Plan | Alternatives | Questions |
|-------|--------------|--------------|-----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
| 6 | | | |

### Open Questions for This Week

- [ ] Question 1
- [ ] Question 2

### Decisions Made

- Decision 1: [rationale]
- Decision 2: [rationale]

---

## At a Glance

| Element | This Week |
|---------|-----------|
| **Movement** | MN: [Name] |
| **Reading** | [Author, "Title"] (~NN pages) |
| **Writing Focus** | [primary activity type] |
| **Peer Review** | [Cycle N / None] |
| **Tech** | [T block / Touch / None] |
| **Due** | [what's due this week] |
| **Prompts Available** | [N.N: "Title" / None] |

---

## Reading

**This Week**: [[reading-slug-course-v101|Author, "Title"]] (~NN pages)

**Key Concepts**: [list 3-5 concepts from reading]

**Connection to Activities**: [how reading supports this week's work]

**Difficulty Notes**: [if difficulty pair, note pairing]

---

## Block-by-Block Schedule

| Block | Type | Activity | Notes |
|-------|------|----------|-------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
| 4 | | | |
| 5 | | | |
| 6 | | | |

### Block Details

#### Block 1: [Activity Name]

**Type**: W | P | R | T | I | —

**Duration**: 25 minutes

**Materials**: [what students/instructor need]

**Opening** (3-5 min): [how to begin]

**Main Activity** (15-18 min): [core work]

**Closing** (3-5 min): [how to wrap up]

**Connection**: Links to [[relevant-note]] and supports [[outcome-identifier]]

[Repeat for each block with substantive content]

---

## Assignments & Deadlines

### Due This Week

| Item | Due | Submission |
|------|-----|------------|
| [assignment] | [day/time] | [Canvas / Eli / In-class] |

### In Progress

- [Assignment being drafted this week]
- [Assignment receiving peer review]

### Coming Up

- [What this week prepares for]

---

## Instructor Prompts

### Available This Week

**Prompt N.N: "[Title]"** — [[instructor-prompt-blockN-N-slug-course-v101]]

- Movement: MN
- Available from: Week N (now)
- Word count: ![[_def-fragment-wordcount-range]]
- Connection: [how it connects to this week's activities]

### Previously Released (Still Available)

- [[instructor-prompt-blockN-N-slug-course-v101|Prompt N.N: "Title"]]

---

## Peer Review

### Cycle N: [Assignment Name]

**Protocol**: Generous (SPQ) | Evaluative (DES)

**Timeline**:
- Draft due: [day/time]
- Reviews due: [day/time] 
- Revision plan due: [day/time]

**Criteria**: [[peer-review-cycleN-assignment-criteria-course-v101]]

**Points**: 40 (25 reviews + 15 revision plan)

---

## Tech Integration

### This Week

[Describe tech instruction or touch if applicable]

- **Block N**: [T activity or touch]
- **Focus**: [what students learn/practice]
- **Connects to**: [how it supports writing work]

### Reminders

[Brief tech reminders if relevant — folder conventions, Eli features, etc.]

---

## Fragment Production

### This Week's Target

- **Minimum required fragments**: [count]
- **Prompt-based**: [count from instructor prompts]
- **Open-topic**: [count flexible]
- **Total in-class writing blocks**: [count]

### Cumulative Progress

- **Through last week**: [range]
- **After this week**: [range]
- **Semester target**: 40-50 by Week 12

---

## Connections

### Backward Links

- **Last Week**: [[week(N-1)-overview-course-v101]] — [what carries forward]
- **Movement Start**: [[mN-overview-course-v101]] — [movement context]

### Forward Links

- **Next Week**: [[week(N+1)-overview-course-v101]] — [what this prepares]
- **Assignment**: [[assignment-slug-course-v101]] — [if relevant]

### Related Materials

- [[relevant-reading-course-v101]]
- [[relevant-assignment-course-v101]]
- [[relevant-policy-course-v101]]

---

## Instructor Notes

### Facilitation Tips

- [Tip for running this week effectively]
- [Common student questions/confusions to anticipate]

### Flexibility Points

- [What can be adjusted if needed]
- [What's locked in and shouldn't change]

### Evidence to Collect

- [What to observe about whether this week is working]

---

*Generated: {{date}}*
*Status: draft → ready after synthesis complete*
```

---

## Synthesis Area Guidelines

The **Synthesis Area** is where Claude and Michael brainstorm before locking in activities. Here's how to use it:

### Phase 1: Generative (Dream Big)
- List all possible activities for each block
- Propose alternatives without judgment
- Ask "what if" questions
- Don't prematurely constrain

### Phase 2: Constraint (Apply Limits)
- What does the consolidated schedule already specify?
- What peer review cycle, if any?
- What readings must connect?
- What tech instruction is scheduled?
- What assignment deadlines create pressure?

### Phase 3: Analysis (Weigh Tradeoffs)
- Which alternatives best serve learning outcomes?
- What's gained and lost by each option?
- What evidence would help decide?

### Phase 4: Specification (Lock In)
- Make decisions explicit
- Note rationale briefly
- Flag what stays flexible vs. fixed

### Phase 5: Clean Up
- Move decisions to main sections
- Delete synthesis content
- Change status to `ready`

---

## Block Type Key

| Type | Meaning | Typical Duration |
|------|---------|------------------|
| **W** | Writing — composition, freewriting, drafting | Full 25 min |
| **P** | Peer Review — Eli Review cycle, in-class feedback | Full 25 min |
| **R** | Revision — processing feedback, revision work | Full 25 min |
| **T** | Tech — dedicated technology instruction | Full 25 min |
| **I** | Instructor — direct instructor feedback moments | Full 25 min |
| **—** | Other — syllabus, conference, presentations | Varies |
| **(touch)** | Brief tech reminder embedded in another block | 5-10 min |

---

## Quality Checklist

Before marking a weekly index as `ready`:

- [ ] All 6 blocks specified with activities
- [ ] Block details include Opening/Main/Closing structure
- [ ] Reading documented with key concepts and connections
- [ ] Assignments/deadlines accurate per consolidated schedule
- [ ] Instructor prompts listed (available + previously released)
- [ ] Peer review details complete if applicable
- [ ] Tech integration documented if applicable
- [ ] Fragment production targets specified
- [ ] Backward/forward connections in place
- [ ] Synthesis area removed
- [ ] YAML frontmatter complete

---

*Template Version: 1.0*
*Created: 2026-01-23*
*For: VIRENS 101 Weekly Index Note Generation*
