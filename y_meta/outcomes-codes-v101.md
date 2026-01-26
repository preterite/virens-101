---
created: 2026-01-22
type: teaching-meta
course: virens-101
tags: [teaching, virens-101, meta, outcomes, controlled-vocabulary]
---

# Outcomes Codes Registry

This note defines the controlled vocabulary for the `outcomes-addressed` field used in course content notes. Use these exact codes to enable Dataview queries and alignment tracking.

---

## How to Use

In any course content note (assignments, activities, weekly plans), add:

```yaml
# === OUTCOMES ALIGNMENT ===
outcomes-addressed: [wpa-processes, v101-iteration, ucore-wrtg-3]
outcomes-primary: wpa-processes
```

- **outcomes-addressed**: List all outcomes this component addresses
- **outcomes-primary**: The single most important outcome (for filtering)

---

## WPA Outcomes for First-Year Composition

Framework: [WPA Outcomes Statement for First-Year Composition](https://wpacouncil.org/aws/CWPA/pt/sd/news_article/243055/)

| Code | Outcome | Brief Description |
|------|---------|-------------------|
| `wpa-rhetorical-knowledge` | Rhetorical Knowledge | Understanding how purpose, audience, and context shape writing |
| `wpa-critical-thinking` | Critical Thinking, Reading, Writing | Analysis, synthesis, interpretation of texts |
| `wpa-writing-processes` | Processes | Multiple drafts, revision, collaboration, reflection |
| `wpa-knowledge-conventions` | Knowledge of Conventions | Genre awareness, documentation, format |

---

## WSU UCORE Writing Outcomes

Framework: WSU UCORE [WRTG] Requirements

| Code | Outcome | Brief Description |
|------|---------|-------------------|
| `ucore-wrtg-1` | WRTG 1 | Compose texts in multiple genres and modalities |
| `ucore-wrtg-2` | WRTG 2 | Use writing processes including planning, drafting, revising |
| `ucore-wrtg-3` | WRTG 3 | Adapt writing to different purposes, audiences, contexts |
| `ucore-wrtg-4` | WRTG 4 | Integrate sources ethically and effectively |
| `ucore-wrtg-5` | WRTG 5 | Apply conventions appropriate to genre and discipline |
| `ucore-wrtg-6` | WRTG 6 | Reflect on writing development and transfer |
| `ucore-wrtg-7` | WRTG 7 | Collaborate with others in writing processes |

---

## VIRENS 101 Course-Specific Outcomes

These outcomes capture the course's distinctive pedagogical innovations:

| Code | Outcome | Brief Description |
|------|---------|-------------------|
| `v101-iteration` | Iteration | Embrace recursive, looping writing processes as productive |
| `v101-failure-diagnostic` | Failure as Diagnostic | Treat difficulty as informational signal, not problem |
| `v101-constraint-sequencing` | Constraint Sequencing | Understand that when constraints arrive matters |
| `v101-process-documentation` | Process Documentation | Make invisible labor visible through logs, maps |
| `v101-textual-accumulation` | Textual Accumulation | Build corpus over time; writing as capital |
| `v101-citation-dependency` | Citation as Dependency | Understand citation as intellectual infrastructure |

---

## NCTE Framework for Success Habits of Mind

Framework: [Framework for Success in Postsecondary Writing](https://ncte.org/statement/collwritingframework/)

| Code | Habit of Mind | Brief Description |
|------|---------------|-------------------|
| `ncte-curiosity` | Curiosity | Desire to know more |
| `ncte-openness` | Openness | Willingness to consider new perspectives |
| `ncte-engagement` | Engagement | Investment in learning |
| `ncte-creativity` | Creativity | Using novel approaches |
| `ncte-persistence` | Persistence | Sustaining interest through challenges |
| `ncte-responsibility` | Responsibility | Taking ownership of learning |
| `ncte-flexibility` | Flexibility | Adapting to situations and tasks |
| `ncte-metacognition` | Metacognition | Reflecting on one's own thinking |

---

## Outcome Clusters (for quick tagging)

For notes that address multiple related outcomes, these clusters may help:

**Process Cluster**: `wpa-writing-processes`, `ucore-wrtg-2`, `v101-iteration`, `v101-process-documentation`

**Revision Cluster**: `wpa-writing-processes`, `v101-iteration`, `v101-failure-diagnostic`, `ncte-persistence`

**Source Work Cluster**: `wpa-critical-thinking`, `ucore-wrtg-4`, `v101-citation-dependency`

**Transfer Cluster**: `ucore-wrtg-6`, `v101-constraint-sequencing`, `ncte-metacognition`

**Collaboration Cluster**: `ucore-wrtg-7`, `ncte-openness`, `ncte-flexibility`

---

## Dataview Query: Outcomes Coverage

To see all notes addressing a specific outcome:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(outcomes-addressed, "v101-iteration")
```

To see outcome counts across the vault:

```dataview
TABLE WITHOUT ID
  outcome as "Outcome",
  length(rows) as "Count"
FROM "600_teaching/virens_101"
FLATTEN outcomes-addressed as outcome
WHERE outcome != null
GROUP BY outcome
SORT length(rows) DESC
```

---

*Last updated: 2026-01-22*
