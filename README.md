# VIRENS 101

**First-Year Composition Through Systems Thinking and Design**

An open-source course design for English 101 that integrates composition pedagogy with systems thinking, constraint sequencing, and material hermeneutics.

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](LICENSE-DOCS)

---

## What This Is

VIRENS 101 is a complete, openly documented first-year composition course built on a premise that composition pedagogy's best instincts—iterative drafting, process awareness, metacognitive reflection—have structural analogues in systems engineering, design thinking, and infrastructure studies. The course treats writing as both labor (a verb: composing, revising, responding to feedback) and capital (a noun: an accumulated corpus of textual fragments that appreciate in value through connection and revision). Students produce 40–50 fragments of 150–400 words across a 15-week semester, accumulating a body of material that they learn to classify, connect, revise, and ultimately curate into a portfolio.

The repository contains approximately 170 paired Obsidian notes organized into student-facing content and scholarly justification for every design choice, from major assignment sequences to individual course policies. It is designed to be adopted, adapted, or studied as a contribution to composition pedagogy scholarship.

This work grows out of 25 years of composition teaching at the university level and draws on research traditions in rhetoric and composition (Salvatori, Bartholomae, Sommers, Yancey), systems thinking (Meadows, Alexander), design (Schön, Norman, Brooks), and infrastructure studies (Star, Bowker). It also draws on practices from software development—version control, specification documents, development logs, iterative releases—not as metaphors but as operational frameworks translated into low-cost, accessible classroom tools.

---

## Project History

This course design began in **July 2025** as an effort to reimagine first-year composition through the lens of process design and systems engineering. Early development explored how core composition pedagogy principles—recursive invention, peer review cycles, portfolio assessment—might be operationalized through vocabulary and methods borrowed from adjacent fields.

In **October 2025**, the project was reorganized and renamed as part of the VIRENS framework (Verdant Inquiry REsearch Notes System), an open-source academic workflow system for humanities scholars. VIRENS 101 became a demonstration of how the framework's design principles—human-readable file organization, single source of truth, value accumulation, graceful degradation—could be instantiated in a teaching context using zero-cost, low-tech tools rather than the macOS application suite that powers the research framework.

Intensive vault population occurred in **January 2026**, producing the current body of approximately 170 files across 30+ directories. Those files currently comprise about 339,000 words of human-readable prose and about 53,000 words of machine-readable code and structured data. Development continues as the course approaches its first classroom pilot.

---

## Theoretical Foundations

The course is organized around four productive juxtapositions between composition theory and systems/design thinking:

**Salvatori ↔ Alexander: Difficulty and Misfits.** Salvatori's pedagogy of difficulty—treating resistance in reading and writing as diagnostic information rather than failure—finds a structural analogue in Christopher Alexander's theory of misfits, where identifying points of poor fit between form and context drives design improvement. Both frameworks privilege surfacing problems over smoothing them away.

**Meadows ↔ Constraint Sequencing: Leverage and Timing.** Donella Meadows's work on leverage points in systems—the insight that small interventions at the right location produce outsized effects—informs the course's central structural innovation: constraint sequencing, the principle that *when* limits arrive matters as much as *what* they are. Students encounter expansive generative work before evaluative constraints, and the course introduces concepts, tools, and requirements at moments of maximum pedagogical leverage.

**Brooks ↔ Threshold Concepts: Essential and Accidental Complexity.** Fred Brooks's distinction between essential complexity (inherent to the problem) and accidental complexity (artifact of the solution) maps onto threshold concept theory in writing studies. The course explicitly names which difficulties are intrinsic to writing (essential) and which are artifacts of poorly designed assignments or tools (accidental), and works to reduce the latter while honoring the former.

**Star & Bowker ↔ Invisible Curriculum: Infrastructure and Visibility.** Susan Leigh Star's infrastructure studies—the insight that infrastructure is invisible until it breaks—grounds the course's emphasis on making the invisible labor of writing visible. Development logs, system maps, and process documentation transform tacit workflow knowledge into inspectable artifacts, paralleling how infrastructure scholars make invisible systems legible.

---

## Course Architecture

### Four Movements

The semester follows a narrative arc from expansion through classification to synthesis:

| Movement | Weeks | Focus | Guiding Metaphor |
|----------|-------|-------|-----------------|
| **M1: Surfacing** | 1–3 | Expansion, capture, freewriting, campus observation | Mining raw material |
| **M2: Naming** | 4–7 | Source engagement, classification, structured feedback | Sorting and routing |
| **M3: Operating at Scale** | 8–11 | Corpus management, consolidation, concept tracing | Managing the collection |
| **M4: Synthesis** | 12–15 | Portfolio selection, infrastructure analysis, transfer | Composing the garden |

This structure follows a "corpse to compost to garden" transformation: students accumulate seemingly inert fragments (corpse), learn to transform them through connection and revision (compost), and ultimately cultivate living portfolios (garden).

### Time Structure

The course is built on 25-minute instructional blocks, six per week (150 minutes total), configurable as 1×150, 2×75, or 3×50 meeting patterns. Of 90 possible blocks, approximately 62 are available for instruction after accounting for holidays, conferences, and administrative time. Most writing happens in class (flipped classroom model); readings are homework.

### W/P/R Rhythm

Each week follows a Write/Peer Review/Revise rhythm: generative work in early blocks, structured peer feedback in middle blocks, and revision in later blocks. This rhythm creates predictable patterns students can internalize while ensuring that peer response is embedded in the composing process rather than appended to it.

### Tech Stack

The course uses five tools, chosen for accessibility and cost:

| Tool | Cost | Function |
|------|------|----------|
| Index cards | ~$10–15 | Analog capture, sorting, spatial thinking |
| OneDrive + Word | Free (institutional) | Digital composition, version history |
| Zotero | Free | Citation management, bibliography |
| Eli Review | ~$20/student | Structured peer review |
| Canvas | Free (institutional) | Course management, submission |

**Total student cost: $30–35.** Technology is introduced following a "familiarize before stakes" principle—students encounter each tool in low-pressure contexts before it matters for assessment.

### Assessment

The course splits assessment evenly between accumulated labor and curated product:

- **50% Formative**: Fragment accumulation (15%), revision and peer review (20%), process documentation (10%), participation (5%)
- **50% Portfolio**: Polished selections from the semester's corpus, accompanied by process evidence and a 1,500–2,000 word reflective cover letter demonstrating growth across all seven course outcomes

Late work follows graduated penalties (20%/30%/50%) rather than zero tolerance. The assessment philosophy targets B-range grades for complete, competent work while maintaining meaningful quality distinctions.

---

## Design Principles

VIRENS 101 instantiates several principles from the VIRENS framework using low-cost analogues:

| VIRENS Principle | Course Implementation |
|------------------|----------------------|
| **A2. Human-Readable Organization** | Student folder structure mirrors vault architecture; plain naming conventions |
| **B10. Manual Trigger Points** | Index card → digital transfer is human-initiated; AI tools require instructor approval |
| **B11. Capture with Structure** | Multiple entry points (cards, Word, freewriting) with classification from the start |
| **B13. Graceful Degradation** | Course functions without any single tool; index cards work if technology fails |
| **C19. Value Accumulation** | Fragment corpus grows across the semester; writing appreciates through connection |
| **C20. Documentation as Practice** | Development logs, system maps, and process archaeology make invisible labor visible |

For the full set of 22 VIRENS design principles, see the [VIRENS framework documentation](https://github.com/preterite/virens).

---

## Vault Structure

This repository is an [Obsidian](https://obsidian.md/) vault. You can open it directly in Obsidian to navigate wikilinks, view transclusions, and explore the dependency graph. It also reads as plain markdown files in any text editor or on GitHub.

### Dual-Track Architecture

Nearly every substantive topic exists as two paired files:

- **Content notes** (`*-course-v101.md`): What students encounter. Clear, direct prose in second person. Assignment prompts, policy language, reading guides.
- **Justification notes** (`*-reasons-v101.md`): Why these choices. Scholarly register with explicit citations. Theoretical grounding, evidence base, anticipated challenges.

This separation serves dual audiences without compromise: instructors adopting the course need only the content track; scholars evaluating the design engage the justification track; both tracks cross-reference each other via wikilinks.

### Directory Map

```
virens_101/
├── a_description/       # Course catalog description and overview
├── b_overview/          # Movement overviews, tech guides, time structure
├── c_rationale/         # Theoretical rationales (justification-only)
├── d_requirements/      # Prerequisites, technology, time commitment
├── e_outcomes/          # Seven course outcomes with alignment matrix
├── f_assignments/       # All assignment prompts, peer review protocols,
│   ├── instructor_prompts/    instructor prompts
│   └── peer_review_cycles/
├── g_studentreadings/   # 15 scholarly readings with paired guides
├── h_policies/          # Complete policy set (10 paired topics)
├── i_schedule/          # Consolidated semester schedule
├── i_week01–15/         # Weekly overview with synthesis narrative
├── i_weekexam/          # Finals week
├── j_assessment/        # Portfolio rubric, formative grading, revision credit
├── k_reflection/        # Movement transitions, evidence-based reflection,
│                        #   mid-semester checkpoint, portfolio cover letter
├── l_gratitude/         # Acknowledgments
├── m_workscited/        # Bibliography
├── n_vocabulary/        # Term definitions
├── x_todevelop/         # Parking lot for future development
├── y_defs/              # Canonical parameter definitions (_def-*.md)
├── y_meta/              # Development narrative, vault conventions,
│                        #   dependency map, concept coverage matrix
├── z_templates/         # File templates for new content
└── z_uncategorized/     # Unsorted materials
```

### Parameter Definitions

Canonical values (fragment counts, assessment weights, block durations, etc.) live in `y_defs/_def-*.md` files and are transcluded throughout the vault using Obsidian's `![[_def-name]]` syntax. Changing a parameter in one place propagates everywhere it appears—a single-source-of-truth approach to course design that prevents the inconsistencies typical of large syllabi.

---

## Development Status

VIRENS 101 is **actively under development** and has not yet been piloted in a classroom. The vault represents a complete first-draft course design: all major components exist and are cross-referenced, but refinement continues.

| Component | Status |
|-----------|--------|
| Course description, overview, outcomes | Complete |
| Four movement overviews | Complete |
| All major assignments with paired justification | Complete |
| 15 scholarly readings with paired guides | Complete |
| 10 course policies with paired justification | Complete |
| Weekly overviews (Weeks 1–13) | Complete |
| Weekly overviews (Weeks 14–15, exam) | Planned |
| Assessment rubrics and grading documentation | Complete |
| Reflection scaffolding (transitions, portfolio letter) | Complete |
| Tech stack documentation | Complete |
| Vocabulary and definition files | In progress |
| Works cited / bibliography | In progress |

Contributions, questions, and criticism are welcome via [Issues](https://github.com/preterite/virens-101/issues).

---

## Relationship to the VIRENS Framework

VIRENS 101 is an independent repository that demonstrates how [VIRENS](https://github.com/preterite/virens) design principles can operate in a teaching context. The relationship is conceptual, not technical: VIRENS 101 does not depend on the VIRENS application suite (Obsidian, DEVONthink, Bookends, Things, Hazel, etc.) and runs entirely on free or low-cost tools accessible to first-year undergraduates.

The separation follows VIRENS Principle A3 (Framework/User Separation): the reusable framework lives in one repository; specific instantiations live in their own. VIRENS 101 can be understood, adopted, and adapted without any knowledge of the broader VIRENS system.

---

## Companion Scholarly Project

A companion webtext is in development for submission to [Kairos: A Journal of Rhetoric, Technology, and Pedagogy](https://kairos.technorhetoric.net/). The webtext will present the theoretical argument and design rationale in a multimedia scholarly format. This repository stands independently as the complete course implementation; the webtext provides the scholarly narrative.

---

## Core Bibliography

The course draws on these primary sources (for the complete bibliography, see `m_workscited/`):

### Composition and Rhetoric

- Bartholomae, David. "Inventing the University." 1985.
- Downs, Doug and Elizabeth Wardle. "Teaching about Writing, Righting Misconceptions." 2007.
- Salvatori, Mariolina. "Conversations with Texts: Reading in the Teaching of Composition." 1996.
- Sommers, Nancy. "Revision Strategies of Student Writers and Experienced Adult Writers." 1980.
- Yancey, Kathleen Blake. "Made Not Only in Words: Composition in a New Key." 2004.

### Technology and Literacy

- Bush, Vannevar. "As We May Think." 1945.
- Kirschenbaum, Matthew. "Prepare for the Textpocalypse." 2023.
- Ong, Walter. "Writing Restructures Consciousness." In *Orality and Literacy*, 1982.

### Systems and Design

- Alexander, Christopher. *Notes on the Synthesis of Form*. 1964.
- Brooks, Frederick. "No Silver Bullet: Essence and Accident in Software Engineering." 1986.
- Meadows, Donella. "Leverage Points: Places to Intervene in a System." 1999.
- Norman, Don. *The Design of Everyday Things*. 1988.
- Schön, Donald. *The Reflective Practitioner*. 1983.

### Infrastructure and Classification

- Star, Susan Leigh and Geoffrey Bowker. *Sorting Things Out: Classification and Its Consequences*. 1999.

### Creative and Experimental

- Bernstein, Charles. "Blood on the Cutting Room Floor." In *A Poetics*, 1992.
- Jackson, Shelley. *My Body—A Wunderkammer*. 1997.

---

## License

VIRENS 101 is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](LICENSE-DOCS).

**You can:**
- ✅ Use these materials for your own teaching (free, forever)
- ✅ Adopt the course at your institution (no fees)
- ✅ Modify, adapt, and remix for your context
- ✅ Share your adaptations with others

**You must:**
- 📖 Provide attribution to the original project
- 🔄 Share adaptations under the same or compatible license

**You cannot:**
- ❌ Remove attribution or license information
- ❌ Apply additional restrictions to shared adaptations

If this repository later includes automation scripts or executable code, those components will be licensed separately under [AGPL-3.0](https://www.gnu.org/licenses/agpl-3.0.en.html), following the [VIRENS framework licensing pattern](https://github.com/preterite/virens).

---

## Using This Repository

### As an Obsidian Vault

1. Install [Obsidian](https://obsidian.md/) (free for personal use)
2. Clone this repository: `git clone https://github.com/preterite/virens-101`
3. Open the cloned folder as a vault in Obsidian
4. Navigate via wikilinks, graph view, or folder structure

### As Plain Markdown

All files are standard markdown with YAML frontmatter. Browse on GitHub or read with any text editor. Wikilinks (`[[like-this]]`) and transclusions (`![[like-this]]`) won't resolve outside Obsidian but the content remains fully readable.

### For Course Adoption

Start with `a_description/course-overview-course-v101.md` for the student-facing overview, then explore `b_overview/` for the structural architecture. Assignment prompts in `f_assignments/` are designed to be copy-pasteable into an LMS with minimal adaptation. Consult `y_meta/vault-conventions.md` for the full file naming and metadata schema.

---

## Citation

```bibtex
@software{virens101_2026,
  author = {Mike Edwards},
  title = {VIRENS 101: First-Year Composition Through Systems Thinking and Design},
  year = {2026},
  url = {https://github.com/preterite/virens-101},
  note = {Obsidian vault containing paired course content and pedagogical justification}
}
```

---

## Acknowledgments

This course design is indebted to the composition scholars and systems thinkers whose work it draws on, to the graduate teaching associates who will help refine it in practice, and to the students who will encounter it first.

Development was supported by conversation with Claude (Anthropic), used as a collaborator in articulating, systematizing, and grounding pedagogical instincts in research. The process of that collaboration—its methods, limitations, and productive tensions—is documented in `y_meta/development-narrative-meta-v101.md` and will be discussed in the companion webtext.

---

**Built for the classroom, documented for the discipline.**
