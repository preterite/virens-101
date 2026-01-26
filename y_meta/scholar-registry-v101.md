---
created: 2026-01-22
type: teaching-meta
course: virens-101
tags: [teaching, virens-101, meta, scholars, controlled-vocabulary]
---

# Scholar Registry

This note defines the controlled vocabulary for the `cites-scholars` field used in reasons/justification notes. Use these exact name forms to enable Dataview queries and citation tracking.

---

## How to Use

In any reasons note, add:

```yaml
# === SCHOLARLY GROUNDING ===
cites-scholars: [Salvatori, Alexander, Meadows]
primary-theorist: Salvatori
```

- **cites-scholars**: List all scholars whose work informs this note
- **primary-theorist**: The single most important theoretical influence (for filtering)

Use the **short name** (usually last name) from the tables below for consistency.

---

## Composition Pedagogy

Core theorists informing writing instruction and assessment:

| Short Name | Full Name | Key Contribution | Key Text |
|------------|-----------|------------------|----------|
| `Salvatori` | Mariolina Rizzi Salvatori | Difficulty pedagogy | "Conversations with Texts" |
| `Bartholomae` | David Bartholomae | Discourse community entry | "Inventing the University" |
| `Sommers` | Nancy Sommers | Revision strategies | "Revision Strategies of Student Writers" |
| `Elbow` | Peter Elbow | Freewriting, low-stakes writing | *Writing Without Teachers* |
| `Inoue` | Asao B. Inoue | Labor-based grading | *Labor-Based Grading Contracts* |
| `Yancey` | Kathleen Blake Yancey | Portfolio theory, transfer | "Postmodernism, Palimpsest, and Portfolios" |
| `Rose` | Mike Rose | Error analysis, remediation critique | "The Language of Exclusion" |
| `Shaughnessy` | Mina Shaughnessy | Basic writing, error patterns | *Errors and Expectations* |
| `Perl` | Sondra Perl | Composing processes | "The Composing Processes of Unskilled Writers" |
| `Flower` | Linda Flower | Cognitive process theory | "A Cognitive Process Theory of Writing" |
| `Graff` | Gerald Graff | "So What? Who Cares?" | *They Say / I Say* |
| `Melzer` | Dan Melzer | Discourse communities | "Understanding Discourse Communities" |
| `Downs` | Douglas Downs | Writing about writing | *Writing About Writing* |

---

## Systems & Design Thinking

Theorists informing process design, constraint analysis, and systems approaches:

| Short Name | Full Name | Key Contribution | Key Text |
|------------|-----------|------------------|----------|
| `Alexander` | Christopher Alexander | Misfits, pattern language | *Notes on the Synthesis of Form* |
| `Meadows` | Donella Meadows | Leverage points, systems dynamics | "Leverage Points" |
| `Schön` | Donald Schön | Reflection-in-action | *The Reflective Practitioner* |
| `Brooks` | Frederick Brooks | Essential/accidental complexity | *The Mythical Man-Month* |
| `Norman` | Donald Norman | Affordances, constraints | *The Design of Everyday Things* |
| `Star` | Susan Leigh Star | Infrastructure, boundary objects | "The Ethnography of Infrastructure" |
| `Bowker` | Geoffrey Bowker | Classification systems | *Sorting Things Out* (with Star) |
| `Simon` | Herbert Simon | Bounded rationality, design science | *The Sciences of the Artificial* |

---

## Technology Studies

Theorists informing understanding of writing technologies and digital literacy:

| Short Name | Full Name | Key Contribution | Key Text |
|------------|-----------|------------------|----------|
| `Ong` | Walter Ong | Writing restructures consciousness | *Orality and Literacy* |
| `Kirschenbaum` | Matthew Kirschenbaum | Digital textuality, AI and writing | "Prepare for the Textpocalypse" |
| `Selber` | Stuart Selber | Multiliteracies | *Multiliteracies for a Digital Age* |
| `Haas` | Christina Haas | Technology and literacy | *Writing Technology* |
| `Bolter` | Jay David Bolter | Remediation, writing space | *Writing Space* |
| `Kline` | Ronald Kline | Technology as system | (technology studies) |

---

## Literary & Philosophical

Writers informing the course's experimental and theoretical dimensions:

| Short Name | Full Name | Key Contribution | Key Text |
|------------|-----------|------------------|----------|
| `Bernstein` | Charles Bernstein | Artifice, procedural writing | "Artifice of Absorption" |
| `Borges` | Jorge Luis Borges | Libraries, labyrinths | "The Library of Babel" |
| `Bush` | Vannevar Bush | Associative trails | "As We May Think" |
| `Quine` | Willard Van Orman Quine | Web of belief | "Two Dogmas of Empiricism" |
| `Jackson` | Shelley Jackson | Hypertextuality | *Patchwork Girl* |

---

## Discipline Balance Query

To check the composition/systems balance across your vault:

```dataviewjs
const comp = ["Salvatori", "Bartholomae", "Sommers", "Elbow", "Inoue", "Yancey", "Rose", "Shaughnessy", "Perl", "Flower", "Graff", "Melzer", "Downs"];
const systems = ["Alexander", "Meadows", "Schön", "Brooks", "Norman", "Star", "Bowker", "Simon"];
const tech = ["Ong", "Kirschenbaum", "Selber", "Haas", "Bolter", "Kline"];
const literary = ["Bernstein", "Borges", "Bush", "Quine", "Jackson"];

const pages = dv.pages('"600_teaching/virens_101"')
  .where(p => p["cites-scholars"]);

let counts = { comp: 0, systems: 0, tech: 0, literary: 0 };

pages.forEach(p => {
  const scholars = p["cites-scholars"] || [];
  scholars.forEach(s => {
    if (comp.includes(s)) counts.comp++;
    if (systems.includes(s)) counts.systems++;
    if (tech.includes(s)) counts.tech++;
    if (literary.includes(s)) counts.literary++;
  });
});

dv.paragraph(`**Composition Pedagogy:** ${counts.comp}`);
dv.paragraph(`**Systems/Design:** ${counts.systems}`);
dv.paragraph(`**Technology Studies:** ${counts.tech}`);
dv.paragraph(`**Literary/Philosophical:** ${counts.literary}`);
```

---

## Most-Cited Scholars Query

```dataview
TABLE WITHOUT ID
  scholar as "Scholar",
  length(rows) as "Citations",
  rows.file.link as "Cited In"
FROM "600_teaching/virens_101"
FLATTEN cites-scholars as scholar
WHERE scholar != null
GROUP BY scholar
SORT length(rows) DESC
LIMIT 15
```

---

## Adding New Scholars

When citing a scholar not yet in this registry:

1. Add them to the appropriate discipline table above
2. Use consistent short name (usually last name)
3. Include key contribution and representative text
4. Update the Dataview JS arrays if using balance queries

---

*Last updated: 2026-01-22*
