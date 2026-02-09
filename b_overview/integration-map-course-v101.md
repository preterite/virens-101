---
created: 2026-01-31 14:12
type: teaching-course-content
course: virens-101
component: b_overview
track: content
identifier: integration-map
paired-justification: [[tech-stack-rationale-reasons-v101]]
status: ready

# === OUTCOMES ALIGNMENT ===
outcomes-addressed: []
outcomes-primary: ""

# === DEPENDENCY MANAGEMENT ===
sync-group: []
depends-on: []
affects: []
uses-defs: []
last-sync-check: 
attention-flag: ""
tags: [course-content, integration, system-architecture, teaching, tech-stack, virens-101]
title: Tech Stack Integration Map
aliases: [Tech Stack Integration Map]
linter-yaml-title-alias: Tech Stack Integration Map
modified: 2026-02-04 01:06
---

# Tech Stack Integration Map

> [!info] Tech Stack Guide<br/>
> **Component**: Overview<br/>
> **Track**: Content (both students and instructors)<br/>
> **Related**: [[tech-stack-rationale-reasons-v101|Why These Tools?]]<br/>
> **When Used**: Week 2 (reference), Week 8 (revisit during digital transfer)

---

## How the Five Components Connect

This document shows how index cards, OneDrive/Word, Zotero, Eli Review, and Canvas work together as a system.

---

## The Five Components

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          ENGL 101 TECH STACK                                │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│   ┌─────────────┐     ┌─────────────┐     ┌─────────────┐                  │
│   │             │     │             │     │             │                  │
│   │   INDEX     │────▶│  ONEDRIVE   │────▶│   CANVAS    │                  │
│   │   CARDS     │     │   + WORD    │     │             │                  │
│   │             │     │             │     │             │                  │
│   └─────────────┘     └──────┬──────┘     └─────────────┘                  │
│         │                    │                   ▲                          │
│         │                    │                   │                          │
│         │                    ▼                   │                          │
│         │            ┌─────────────┐             │                          │
│         │            │             │             │                          │
│         └───────────▶│   ZOTERO    │─────────────┘                          │
│                      │             │                                        │
│                      └─────────────┘                                        │
│                             │                                               │
│                             ▼                                               │
│                      ┌─────────────┐                                        │
│                      │             │                                        │
│                      │ ELI REVIEW  │                                        │
│                      │             │                                        │
│                      └─────────────┘                                        │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## Component Roles

| Component | Primary Function | What It Stores | Course Concept |
|-----------|------------------|----------------|----------------|
| **Index Cards** | Physical capture and sorting | Active fragments, classification experiments | Capture, Classify, Route |
| **OneDrive + Word** | Digital storage and drafting | All fragments, dev log, submissions | Route, Store, Version |
| **Zotero** | Citation management | Sources, BEAM tags, bibliographic data | Classify (sources), Connect |
| **Eli Review** | Peer feedback | Drafts, comments, ratings, revision plans | Distill, Reflect |
| **Canvas** | Assignment submission | Final submissions, grades | Publish |

---

## Information Flows

### Flow 1: Capture → Digital Storage

```
IDEA/OBSERVATION
      │
      ▼
┌─────────────┐
│ Index Card  │  (physical capture, one idea per card)
└──────┬──────┘
       │
       │ when ready to develop
       ▼
┌─────────────┐
│ Word Doc    │  (expand into full fragment)
│ in OneDrive │
└──────┬──────┘
       │
       │ save with naming convention
       ▼
┌─────────────────────────────────────┐
│ 01-Fragments/                       │
│   2026-01-20-topic-slug-draft.docx  │
└─────────────────────────────────────┘
```

**Key principle**: Index cards are for thinking; Word documents are for storing. Transfer ideas when they're ready to develop, not before.

---

### Flow 2: Source → Citation → Fragment

```
FIND A SOURCE
      │
      ▼
┌─────────────┐
│   Zotero    │  (save bibliographic data)
│   Library   │
└──────┬──────┘
       │
       │ add tags and notes
       ▼
┌─────────────────────────────────────┐
│ Zotero Entry:                       │
│   Title: "The Difficulty Paper"     │
│   Author: Salvatori                 │
│   Tags: BEAM-Argument, difficulty   │
│   Notes: "Key quote about..."       │
└──────┬──────────────────────────────┘
       │
       │ cite in your fragment
       ▼
┌─────────────────────────────────────┐
│ Word Document (fragment):           │
│   "Salvatori argues that..." (p.12) │
│   [Insert citation via Zotero]      │
└─────────────────────────────────────┘
```

**Key principle**: Sources live in Zotero. Fragments live in OneDrive. They connect via citation.

---

### Flow 3: Draft → Feedback → Revision

```
┌─────────────────────────────────────┐
│ Word Document (draft):              │
│   01-Fragments/topic-draft.docx     │
└──────┬──────────────────────────────┘
       │
       │ upload to Eli Review
       ▼
┌─────────────┐
│ Eli Review  │  (peer feedback cycle)
│   Task      │
└──────┬──────┘
       │
       │ receive comments, rate helpfulness
       ▼
┌─────────────────────────────────────┐
│ Feedback Summary:                   │
│   - "Claim unclear" (helpful)       │
│   - "Add example" (helpful)         │
│   - "Good intro" (not helpful)      │
└──────┬──────────────────────────────┘
       │
       │ plan revision, incorporate feedback
       ▼
┌─────────────────────────────────────┐
│ Word Document (revision):           │
│   01-Fragments/topic-revised.docx   │
└──────┬──────────────────────────────┘
       │
       │ note in dev log
       ▼
┌─────────────────────────────────────┐
│ Dev Log Entry:                      │
│   "Revised based on peer feedback.  │
│    Changed claim, added example."   │
└─────────────────────────────────────┘
```

**Key principle**: Eli Review doesn't store your work—it circulates it for feedback. Your OneDrive folder is still the home.

---

### Flow 4: Fragment → Submission → Grade

```
┌─────────────────────────────────────┐
│ Multiple fragments + revisions      │
│ in 01-Fragments/                    │
└──────┬──────────────────────────────┘
       │
       │ select, combine, polish
       ▼
┌─────────────────────────────────────┐
│ Word Document (polished):           │
│   03-Submissions/submitted/         │
│     literacy-narrative-final.docx   │
└──────┬──────────────────────────────┘
       │
       │ upload to Canvas
       ▼
┌─────────────┐
│   Canvas    │  (submission + grading)
│ Assignment  │
└──────┬──────┘
       │
       │ instructor feedback + grade
       ▼
┌─────────────────────────────────────┐
│ Grade + Comments in Canvas          │
└──────┬──────────────────────────────┘
       │
       │ download, save in OneDrive
       ▼
┌─────────────────────────────────────┐
│ 03-Submissions/returned/            │
│     literacy-narrative-graded.docx  │
└─────────────────────────────────────┘
```

**Key principle**: Canvas is for submission only. Keep a local copy in your OneDrive folder structure.

---

## The Six Moves and Where They Happen

| Move | Definition | Primary Tool(s) |
|------|------------|-----------------|
| **Capture** | Get the idea recorded | Index Cards → Word |
| **Classify** | Identify what type of material this is | Index Cards (sorting), Zotero (BEAM tags) |
| **Route** | Send it to the appropriate location | OneDrive folder structure, naming conventions |
| **Distill** | Extract the essential insight | Word (revision), Eli Review (feedback) |
| **Connect** | Link to related items | Zotero (related sources), file naming (topic slugs) |
| **Publish** | Generate outputs | Canvas (submission) |

---

## Weekly Rhythm

| Day | Activity | Tools Used |
|-----|----------|------------|
| **Monday** | Capture ideas from reading | Index cards |
| **Tuesday** | Develop 1-2 cards into fragments | Word, OneDrive |
| **Wednesday** | Add sources to Zotero, tag BEAM | Zotero |
| **Thursday** | Review/revise based on feedback | Eli Review → Word |
| **Friday** | Update dev log, organize cards | OneDrive, Index cards |
| **Weekend** | Reading, freewriting, planning | Index cards, Word |

This is a model, not a mandate. Find your own rhythm.

---

## What Doesn't Connect (By Design)

Some things are intentionally separate:

- **Index cards don't sync anywhere.** They're physical. That's the point.
- **Eli Review doesn't save your documents.** It circulates copies for feedback.
- **Zotero and Eli Review don't talk to each other.** You manually cite sources in drafts.
- **Canvas doesn't know about your folder structure.** You upload manually.

This separation is a feature, not a bug. It keeps each tool focused and prevents vendor lock-in.

---

## Where Things Live

| What | Where | Why There |
|------|-------|-----------|
| Raw ideas | Index cards | Physical manipulation, low friction |
| Developed fragments | OneDrive `01-Fragments/` | Searchable, versioned, backed up |
| Process notes | OneDrive `02-Process/dev-log.docx` | Accumulates over semester |
| Polished submissions | OneDrive `03-Submissions/` + Canvas | Local copy + official submission |
| Source information | Zotero | Citation management is its job |
| Peer feedback | Eli Review | Analytics, helpfulness tracking |
| Grades | Canvas | Institutional record |

Keep this map handy. When you're not sure where something goes, check here.

---

## Troubleshooting Connections

### "I can't find my fragment"

1. Check OneDrive `01-Fragments/` folder
2. Search by topic slug or date
3. Check if it's still on an index card (not yet transferred)
4. Check `03-Submissions/` if you already submitted it

### "My Zotero citation isn't appearing in Word"

1. Is the Zotero Word plugin installed? (Check Add-ins)
2. Is Zotero running? (It must be open)
3. Did you insert via Zotero menu, not copy-paste?
4. Try: Close Word, restart Zotero, reopen Word

### "I submitted to Eli Review but can't see feedback"

1. Has the review period closed? (Feedback appears after deadline)
2. Did you submit before the draft deadline? (Late = no feedback)
3. Check the correct task in Eli Review

### "My folder structure is a mess"

1. Set aside 30 minutes for reorganization
2. Rename files to follow convention
3. Move misplaced files to correct subfolders
4. Update dev log: what happened and what you fixed

### "I have index cards but no digital versions"

1. This is normal early in semester
2. Transfer cards to digital when you want to develop them
3. Not every card needs to become a Word document
4. Cards are for thinking; documents are for developing

---

## What Success Looks Like

By Week 12, you should be able to:

1. **Find any fragment** in under 30 seconds (search + naming convention)
2. **See your corpus** at a glance (folder structure + dev log inventory)
3. **Trace a fragment's history** (version history + status codes in filename)
4. **Connect fragments to sources** (Zotero citation integration)
5. **Review your feedback patterns** (Eli Review analytics)
6. **Reflect on your process** (dev log as evidence)

The system should feel like infrastructure, not obstacles.

---

## Related Content

```dataview
TABLE identifier, status
FROM "600_teaching/virens_101"
WHERE type = "teaching-course-content"
  AND contains(tags, "tech-stack")
  AND file.name != this.file.name
SORT identifier ASC
```

---

## Pedagogical Rationale

**See**: [[tech-stack-rationale-reasons-v101]]

---

_Created: 2026-01-21_<br/>
_Component: Overview_<br/>
_Course: VIRENS 101_
