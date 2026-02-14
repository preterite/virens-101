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

## Citekey Mapping Reference

This section maps short names (used in `cites-scholars` arrays) to available citekeys (used in prose citations). All citekeys verified against `/Users/preterite/Local/virens/user1/Scholar/references/library.bib`.

### Purpose

- **Short names** → For YAML metadata and Dataview queries
- **Citekeys** → For inline prose citations with bibliographic specificity

### Usage Pattern

```yaml
# In YAML frontmatter:
cites-scholars: [Salvatori, Kirschenbaum]
```

```markdown
# In prose (first mention only):
Salvatori [[@salvatori1996conve]] argues that difficulty is diagnostic...

Kirschenbaum [[@kirschenbaum2023prepa]] warns of the textpocalypse...
```

### Composition Pedagogy Citekeys

**Salvatori**
- Available: `salvatori1996conve`
- Primary: `salvatori1996conve`
- Work: "Conversations with Texts: Reading in the Teaching of Composition" (*College English*, 1996)

**Sommers**
- Available: `sommers1980revis`, `sommers1982respo`, `sommers2004novid`
- Primary: `sommers1980revis`
- Context map:
  - Revision strategies → `sommers1980revis`
  - Responding to writing → `sommers1982respo`
  - Novice as expert → `sommers2004novid`

**Elbow**
- Available: `elbow1973writi`, `elbow1983embra`, `elbow1987closj`, `elbow1991some`, `elbow2001labor`
- Primary: `elbow1973writi`
- Context map:
  - Freewriting/process → `elbow1973writi`
  - Contraries/dialectic → `elbow1983embra`
  - Audience/voice → `elbow1987closj`
  - Expressive discourse → `elbow1991some`
  - Reading process → `elbow2001labor`

**Yancey**
- Available: `yancey1998refle`
- Primary: `yancey1998refle`
- Work: *Reflection in the writing classroom* (Utah State UP, 1998)

**Inoue**
- Available: `inoue2019labos`
- Primary: `inoue2019labos`
- Work: *Labor-Based Grading Contracts* (University Press of Colorado, 2019)

**Bartholomae**
- Available: `bartholomae1986inven`
- Primary: `bartholomae1986inven`
- Work: "Inventing the University" (*Journal of Basic Writing*, 1986)

**Beaufort**
- Available: `beaufort2007colle`
- Primary: `beaufort2007colle`
- Work: *College writing and beyond* (Utah State UP, 2007)

**Flower**
- Available: `flower1981cogni`
- Primary: `flower1981cogni`
- Work: "A Cognitive Process Theory of Writing" (*CCC*, 1981)

**Rose**
- Available: `rose1989livet`
- Primary: `rose1989livet`
- Work: *Lives on the boundary* (Free Press, 1989)

**Shaughnessy**
- Available: `shaughnessy1977error`
- Primary: `shaughnessy1977error`
- Work: *Errors and expectations* (Oxford UP, 1977)

**Perl**
- Available: `perl1979compp`
- Primary: `perl1979compp`
- Work: "The composing processes of unskilled college writers" (*Research in the Teaching of English*, 1979)

**Downs**
- Available: `downs2007teaci`
- Primary: `downs2007teaci`
- Work: "Teaching about writing, righting misconceptions" (*CCC*, 2007)

### Systems & Design Thinking Citekeys

**Alexander**
- Available: `alexander1964notet`
- Primary: `alexander1964notet`
- Work: *Notes on the Synthesis of Form* (Harvard UP, 1964)

**Meadows**
- Available: `meadows2008lever`
- Primary: `meadows2008lever`
- Work: "Leverage points: places to intervene in a system" in *Thinking in systems* (Chelsea Green, 2008)

**Brooks**
- Available: `brooks1986silve`
- Primary: `brooks1986silve`
- Work: "No Silver Bullet: Essence and Accidents of Software Engineering" in *The mythical man-month* (Addison-Wesley, 1986)

**Norman**
- Available: `norman2013desig`
- Primary: `norman2013desig`
- Work: *The design of everyday things* (Basic Books, 2013)

**Star**
- Available: `star1999ethnp`
- Primary: `star1999ethnp`
- Work: "The Ethnography of Infrastructure" (*American Behavioral Scientist*, 1999)

### Technology Studies Citekeys

**Ong**
- Available: `ong2012writi`
- Primary: `ong2012writi`
- Work: "Writing Restructures Consciousness" in *Orality and Literacy* (2012)

**Kirschenbaum**
- Available: `kirschenbaum2007mecha`, `kirschenbaum2023prepa`
- Primary: `kirschenbaum2023prepa`
- Context map:
  - AI/LLM/generative text → `kirschenbaum2023prepa`
  - Materiality/forensics → `kirschenbaum2007mecha`
- Works:
  - "Prepare for the Textpocalypse" (*The Atlantic Online*, 2023)
  - *Mechanisms: New Media and the Forensic Imagination* (MIT Press, 2007)

**Selber**
- Available: `selber2004multi`
- Primary: `selber2004multi`
- Work: *Multiliteracies for a digital age* (Southern Illinois UP, 2004)

**Kline**
- Available: `kline1985what`
- Primary: `kline1985what`
- Work: "What Is Technology?" (*Bulletin of Science, Technology & Society*, 1985)
- Note: Stephen J. Kline (not Ronald Kline)

**Wysocki**
- Available: `wysocki2004writi`
- Primary: `wysocki2004writi`
- Work: *Writing new media* (Utah State UP, 2004)

### Literary & Philosophical Citekeys

**Bernstein**
- Available: `bernstein1987blood`
- Primary: `bernstein1987blood`
- Work: "Blood on the Cutting Room Floor" in *What Is a Poet?* (1987)

**Borges**
- Available: `borges1962labyr`
- Primary: `borges1962labyr`
- Work: *Labyrinths: selected stories and other writings* (New Directions, 1962)

**Bush**
- Available: `bush1945thinl`
- Primary: `bush1945thinl`
- Work: "As we may think" (*The Atlantic monthly*, 1945)

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
| `Kline` | Stephen J. Kline | Innovation models, mundane technology | "What Is Technology?" |

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
