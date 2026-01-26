#!/bin/zsh
# Kairos Webtext Vault Setup Script
# Generated: 2025-01-25
# Creates folder structure, README, and placeholder files for VIRENS 101 Kairos article

BASE="/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/x_todevelop/kairos_webtext"
DATE="2025-01-25"

# === README ===
cat > "$BASE/README.md" << 'READMEEOF'
---
created: 2025-01-25
type: kairos-webtext-meta
status: active
---

# Constraint Structure: Toward an Economy of Composition

**A Kairos Webtext on VIRENS 101 Course Design**

## Project Overview

This webtext documents the design and theoretical grounding of VIRENS 101, an innovative first-year composition course integrating composition pedagogy with systems thinking. The article uses a dual-narrator documentation fiction structure to present both designer and student perspectives on the course's constraint sequencing approach.

## Structure

### Tracks

| Track | Narrator | Typography | Color Palette |
|-------|----------|------------|---------------|
| Designer | Dr. Vera Green | Fira Sans | Menthol Steel (teal) |
| Student | Grant Miles | Crimson Pro | Spicy Sundae (caramel) |
| Nexus | Academic prose | Mixed | Forest Green |

### Navigation

- **12 Scenes**: 6 Vera (V1-V6), 6 Grant (G1-G6)
- **12 Nexus Nodes**: QUANTITATION tree sequence (Q-U-A-N-T-I-T-A-T-I-O-N)
- **Supporting Pages**: References, spec, acknowledgments, etc.

## Directory Structure

```
kairos_webtext/
├── _planning/           # Development documentation
│   ├── characters/      # Vera and Grant profiles
│   ├── scenes/          # Scene outlines (12)
│   ├── structure/       # Coverage matrix, gap analysis
│   ├── concepts/        # Theoretical concept development
│   ├── sources/         # Bibliography organization
│   └── project-mgmt/    # Tasks, priorities, context
├── _design/             # Visual design documentation
│   ├── css/             # Stylesheets (3 tracks)
│   └── assets/          # Tie images, illustrations
├── content/             # Webtext content files
│   ├── vera-track/      # 6 Vera scenes
│   ├── grant-track/     # 6 Grant scenes
│   ├── nexus/           # 12 nexus concept pages
│   └── supporting/      # References, spec, etc.
└── README.md            # This file
```

## Status Legend

| Status | Meaning |
|--------|---------|
| `placeholder` | File created, no content |
| `outline` | Structure/notes present |
| `draft` | First pass content |
| `revision` | Under revision |
| `complete` | Ready for publication |

## Key Documents

- **Continuation Context**: `_planning/project-mgmt/kairos-continuation-context.md`
- **Visual Design Spec**: `_design/design-visual-v3.2.md`
- **Coverage Matrix**: `_planning/structure/coverage-matrix.md`
- **Nexus Assignments**: `_planning/structure/nexus-concept-assignments.md`

## Building

This webtext is designed for static site generation (Quartz recommended). Configuration pending.

## License

Content © Michael Edwards. Code under MIT license.

---

*Last updated: 2025-01-25*
READMEEOF

echo "✓ Created README.md"

# === PLANNING: Characters ===

cat > "$BASE/_planning/characters/character-vera-green.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
character: vera
connections:
  - "[[character-grant-miles]]"
scenes-appears:
  - "[[vera-01-envelope]]"
  - "[[vera-02-beam]]"
  - "[[vera-03-audits]]"
  - "[[vera-04-conference]]"
  - "[[vera-05-analytics]]"
  - "[[vera-06-permissions]]"
---

# Dr. Vera Green

**Role**: Designer track narrator  
**Source**: Adapted from dr_green_virens.pdf  
**Name meaning**: Vera = truth; Green = growth

## Established Traits

- Teaches VIRENS 101
- Uses VIRENS system for personal productivity
- Has partner and daughter (traveling during story timeframe)
- Music tastes: Algiers, P.O.S.
- Cats
- Walking commute to campus
- Reflective practitioner who thinks in systems terms

## Arc Across Scenes

| Scene | Week | Focus | Arc Beat |
|-------|------|-------|----------|
| V1 | 1 | Envelope planning | Plans |
| V2 | 4-5 | BEAM classification | Observes |
| V3 | 7 | Constraint Audits | Tests |
| V4 | 9 | Conference with Grant | Meets individual |
| V5 | 10 | Eli Review analytics | Analyzes patterns |
| V6 | 13 | Permission Flags | Transfers ownership |

## Voice Notes

- Scholarly but warm
- Systems vocabulary natural to her thinking
- Observational, notices patterns in student behavior
- Self-aware about design choices

## Key Relationships

- Grant: Student she tracks across semester; representative case
- Students generally: Aggregate patterns vs. individual struggles
- Course materials: Designer relationship (she built this)

## Open Questions

1. Does Vera ever break the fourth wall (know she's being theorized)?
2. What's her emotional arc across the 6 scenes?
3. How much of her personal life surfaces?
EOF

cat > "$BASE/_planning/characters/character-grant-miles.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
character: grant
connections:
  - "[[character-vera-green]]"
scenes-appears:
  - "[[grant-01-tech]]"
  - "[[grant-02-peer]]"
  - "[[grant-03-automating]]"
  - "[[grant-04-conference]]"
  - "[[grant-05-milestone]]"
  - "[[grant-06-envelope]]"
---

# Grant Miles

**Role**: Student track narrator  
**Name meaning**: Grant = permission, given; Miles = journey, distance traveled

## Background

- Filipino heritage (American-born father, Filipina mother)
- First-generation college student
- L1/L2 household (Tagalog at home, English dominant academically)
- Works 12-15 hours/week at campus library circulation desk
- Colonial dimension remains largely implicit

## Characteristics

- Intellectually capable but organizationally chaotic
- Struggles are executive function, time management, follow-through—not comprehension
- Smart but doesn't realize it; partially organized but thinks it's worse
- Characteristic teenager qualities: developmental narcissism, labor-saving desire for "easy answer"
- Phone addiction as material constraint

## Library Job Significance

- Works inside information system professionally (shelving, circulation, returns)
- Irony: routes other people's books efficiently while struggling with own fragments
- Physical location near exit and security sensors → constraint visibility
- Returns and reserves carts behind desk → filing/routing made visible
- Creates time pressure: can't do all homework because working

## Arc Across Scenes

| Scene | Week | Focus | Arc Beat |
|-------|------|-------|----------|
| G1 | 2 | Tech setup | Setup |
| G2 | 5-6 | Peer review | Struggles with feedback |
| G3 | 8 | "What You're Automating" | Recognizes infrastructure |
| G4 | 9 | Conference | Receives direction |
| G5 | 11 | M3 Milestone | Consolidates |
| G6 | 15 | Envelope opening | Reflects on transformation |

## Voice Notes

- First-person, present tense (immediacy)
- Casual but increasingly precise vocabulary
- Internal monologue reveals confusion → clarity arc
- Relatable frustrations

## Open Questions

1. How much of Filipino heritage surfaces explicitly vs. remains implicit resonance?
2. How does his library work create specific scene details?
3. What's his relationship with other students (study group? isolation?)
EOF

echo "✓ Created character files"

# === PLANNING: Scene Outlines ===

# Vera scenes
cat > "$BASE/_planning/scenes/scene-outline-v1.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V1
character: vera
week: 1
movement: M1
title: "Envelope Planning"
concepts:
  - constraint-sequencing
  - yolo-up-constrain-down
  - writing-as-labor-capital
connections:
  - "[[character-vera-green]]"
  - "[[nexus-taxus]]"
  - "[[nexus-alnus]]"
  - "[[nexus-quercus]]"
---

# V1: Envelope Planning

**Week**: 1  
**Movement**: M1 (Surfacing)  
**Focus**: Temporal design philosophy; semester as constraint arc

## Conceptual Work

- Introduces the envelope metaphor (sealed predictions, opened at end)
- Establishes constraint sequencing as deliberate design choice
- Shows designer thinking in systems terms
- "YOLO up, constrain down" as pedagogical principle

## Key Moments/Images

- Vera addressing sealed envelopes, writing predictions
- Walking commute, thinking through semester timeline
- Mental model of constraint arrival timing
- Metaphor: "dose and timing" of constraints as medicine/poison

## Setting Details

- Vera's office or home workspace
- Beginning of semester energy
- Course materials being finalized

## Connects To

- **G1** (Week 2): Grant's first encounter with the tech setup
- **Taxus** (Constraint Sequencing): Primary theoretical nexus
- **Alnus** (YOLO Up): Generate-first philosophy
- **Quercus** (Labor/Capital): Economy framing

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-v2.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V2
character: vera
week: 4-5
movement: M2
title: "BEAM Classification"
concepts:
  - beam-framework
  - naming
  - elbow-recovery
connections:
  - "[[character-vera-green]]"
  - "[[nexus-ulmus]]"
  - "[[grant-02-peer]]"
---

# V2: BEAM Classification

**Week**: 4-5  
**Movement**: M2 (Naming)  
**Focus**: Observing students engage with BEAM; classification as intellectual work

## Conceptual Work

- BEAM framework (Background/Exhibit/Argument/Method) as classification tool
- Naming as pedagogical move
- Observation of Grant among other students
- ONESIEs systematic vocabulary introduction

## Key Moments/Images

- Classroom observation during BEAM activity
- Students struggling to categorize sources
- Grant's particular approach (something distinctive)
- Vera noticing patterns across class

## Setting Details

- Classroom during library/research session
- Students with laptops, Zotero open
- Mid-semester energy shift

## Connects To

- **G2** (Week 5-6): Grant's peer review experience
- **V3** (Week 7): Constraint Audits reveal classification results
- **Ulmus** (Elbow Recovery): Social dimension of process pedagogy

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-v3.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V3
character: vera
week: 7
movement: M2
title: "Reading Constraint Audits"
concepts:
  - failure-as-diagnostic
  - difficulty-as-diagnostic
  - alexander-fit
connections:
  - "[[character-vera-green]]"
  - "[[nexus-nyssa]]"
  - "[[nexus-taxus]]"
---

# V3: Reading Constraint Audits

**Week**: 7  
**Movement**: M2 (Naming)  
**Focus**: Failure as diagnostic; design testing through student work

## Conceptual Work

- Constraint Audits as window into student constraint experiences
- Failure as informational signal, not just problem
- Alexander's "fit" vocabulary (misfit reveals structure)
- Designer reading student work for system feedback

## Key Moments/Images

- Vera reading student Constraint Audits
- Recognizing patterns of struggle
- Grant's audit reveals something specific
- Adjusting plans based on evidence

## Setting Details

- Evening grading session
- Stack of student audits
- Notes for course adjustments

## Connects To

- **G2** (Week 5-6): Grant's struggles that audit documents
- **Nyssa** (Difficulty-as-Diagnostic): Salvatori connection
- **Taxus** (Constraint Sequencing): Design testing

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-v4.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V4
character: vera
week: 9
movement: M3
title: "Conference with Grant"
concepts:
  - connection
  - individual-meets-system
connections:
  - "[[character-vera-green]]"
  - "[[character-grant-miles]]"
  - "[[grant-04-conference]]"
  - "[[nexus-olea]]"
---

# V4: Conference with Grant

**Week**: 9  
**Movement**: M3 (Scale)  
**Focus**: Design meets individual; one-on-one as system intervention point

## Conceptual Work

- Conference as connection move
- Designer perspective on individual student
- Seeing Grant's specific constraint profile
- Intervention within system (not abandoning system for individual)

## Key Moments/Images

- Office hours conference
- Vera reviewing Grant's corpus on screen
- Specific diagnosis of Grant's patterns
- Recommendation that addresses root cause

## Setting Details

- Vera's office
- Two people, one screen
- Mid-semester intensity

## Connects To

- **G4** (Week 9): Grant's experience of same conference
- **V5** (Week 10): Analytics show broader patterns
- **Olea** (Circulation): Conference as circulation moment

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-v5.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V5
character: vera
week: 10
movement: M3
title: "Eli Review Analytics"
concepts:
  - quantitation-as-rhetoric
  - archives-give-analytics
  - infrastructure-visibility
connections:
  - "[[character-vera-green]]"
  - "[[nexus-illicium]]"
  - "[[nexus-thuja]]"
  - "[[nexus-tsuga]]"
---

# V5: Eli Review Analytics

**Week**: 10  
**Movement**: M3 (Scale)  
**Focus**: Quantitation as rhetoric; archives give you analytics

## Conceptual Work

- "Archives give you analytics" as key insight
- Eli Review data as analyzable corpus
- Numbers as points for intervention (not just measurement)
- Star connection to Salvatori (infrastructure + difficulty)

## Key Moments/Images

- Vera reviewing Eli Review analytics dashboard
- Patterns in peer review behavior
- Specific numbers that reveal problems
- Planning intervention based on data

## Setting Details

- Computer screen with analytics
- Spreadsheet or dashboard view
- Late semester assessment moment

## Connects To

- **G5** (Week 11): Grant's milestone consolidation
- **V3** (Week 7): Earlier diagnostic reading
- **Illicium** (Quantitation): Primary theoretical nexus
- **Thuja** (Archives/Analytics): Documentation philosophy
- **Tsuga** (Infrastructure): Star's visibility principle

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-v6.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: V6
character: vera
week: 13
movement: M4
title: "Permission Flags"
concepts:
  - permission-flags
  - six-moves
  - ownership-transfer
  - elbow-recovery
connections:
  - "[[character-vera-green]]"
  - "[[nexus-ilex]]"
  - "[[nexus-ulmus]]"
  - "[[nexus-nerium]]"
---

# V6: Permission Flags

**Week**: 13  
**Movement**: M4 (Synthesis)  
**Focus**: Ownership transfer; permission structures; semester reflection

## Conceptual Work

- Permission Flags (VRWO: Visible/Readable/Writable/Owner)
- Progressive ownership transfer across semester
- Publish as sixth move
- Designer releasing control to student

## Key Moments/Images

- Classroom conversation about what students now own
- Students realizing their accumulated capital
- Vera's satisfaction in successful transfer
- Looking back at semester arc

## Setting Details

- Late semester classroom
- Students with substantial corpora
- Reflective mood

## Connects To

- **G6** (Week 15): Grant's envelope opening
- **V1** (Week 1): Envelope predictions
- **Ilex** (Six Moves + Permissions): Primary theoretical nexus
- **Nerium** (Publication): Emergence theme
- **Ulmus** (Elbow Recovery): Social dimension realized

## Draft Notes

<!-- Scene draft content will go here -->
EOF

# Grant scenes
cat > "$BASE/_planning/scenes/scene-outline-g1.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G1
character: grant
week: 2
movement: M1
title: "Tech Setup"
concepts:
  - capture
  - yolo-up-constrain-down
  - six-moves
connections:
  - "[[character-grant-miles]]"
  - "[[nexus-alnus]]"
  - "[[nexus-ilex]]"
  - "[[vera-01-envelope]]"
---

# G1: Tech Setup

**Week**: 2  
**Movement**: M1 (Surfacing)  
**Focus**: Initial tech setup; index cards, folders, Eli orientation

## Conceptual Work

- Capture as first move
- Physical + digital infrastructure setup
- First encounter with course system
- "YOLO up" invitation to generate freely

## Key Moments/Images

- Grant setting up folder structure
- Index cards as physical capture tool
- Eli Review first login
- Confusion about why all this infrastructure

## Setting Details

- Library circulation desk (between tasks)
- Laptop setup
- Index cards spread out
- Phone as distraction

## Connects To

- **V1** (Week 1): Vera's design intentions
- **G2** (Week 5-6): Infrastructure put to use
- **Alnus** (YOLO Up): Generate-first philosophy
- **Ilex** (Six Moves): Capture introduction

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-g2.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G2
character: grant
week: 5-6
movement: M2
title: "Peer Review with BEAM"
concepts:
  - route
  - beam-framework
  - circulation
connections:
  - "[[character-grant-miles]]"
  - "[[nexus-olea]]"
  - "[[vera-02-beam]]"
---

# G2: Peer Review with BEAM

**Week**: 5-6  
**Movement**: M2 (Naming)  
**Focus**: Peer review experience; documentation vs. seeing; library parallel

## Conceptual Work

- Route as move (sending work to others)
- BEAM classification in peer feedback context
- Circulation of student writing
- Library job parallel: routing others' materials

## Key Moments/Images

- Eli Review peer feedback session
- Reading others' work, giving feedback
- Receiving feedback on own work
- Moment at library desk: "I do this all day"

## Setting Details

- Split between classroom and library
- Laptop with Eli Review open
- Library cart parallel

## Connects To

- **V2** (Week 4-5): Vera observing BEAM work
- **G3** (Week 8): Infrastructure recognition deepens
- **Olea** (Circulation): Trimbur connection

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-g3.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G3
character: grant
week: 8
movement: M3
title: "What You're Automating"
concepts:
  - distill
  - infrastructure-visibility
  - automation
  - writing-as-labor-capital
connections:
  - "[[character-grant-miles]]"
  - "[[nexus-tsuga]]"
  - "[[nexus-quercus]]"
---

# G3: "What You're Automating"

**Week**: 8  
**Movement**: M3 (Scale)  
**Focus**: Infrastructure visibility; automation recognition

## Conceptual Work

- "What you're automating is yourself"
- Infrastructure becomes visible through use
- Distill as move (extracting pattern from accumulation)
- Labor/capital substitution recognition

## Key Moments/Images

- Grant realizing his folder system works
- Recognizing patterns in his own fragments
- Library parallel: automation of routing
- "Oh, this is what the system does"

## Setting Details

- Study space or library
- Looking back at accumulated corpus
- Mid-semester organizational moment

## Connects To

- **V3** (Week 7): Vera reading audits
- **G4** (Week 9): Conference builds on recognition
- **Tsuga** (Infrastructure): Star's visibility principle
- **Quercus** (Labor/Capital): Economic frame

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-g4.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G4
character: grant
week: 9
movement: M3
title: "Conference with Vera"
concepts:
  - connection
  - productive-confusion
connections:
  - "[[character-grant-miles]]"
  - "[[character-vera-green]]"
  - "[[vera-04-conference]]"
---

# G4: Conference with Vera

**Week**: 9  
**Movement**: M3 (Scale)  
**Focus**: Receiving direction; productive confusion

## Conceptual Work

- Connection move (student receiving connection help)
- Productive confusion → clarity
- Individual within system
- Direction that addresses root cause

## Key Moments/Images

- Entering Vera's office nervous
- Seeing own work on screen, differently
- Specific advice that clicks
- Leaving with clearer direction

## Setting Details

- Vera's office (from Grant's POV)
- Same screen, different perspective than V4
- Student nervousness → relief arc

## Connects To

- **V4** (Week 9): Vera's perspective on same conference
- **G5** (Week 11): Acting on conference direction
- **G3** (Week 8): Sets up what Grant brings to conference

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-g5.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G5
character: grant
week: 11
movement: M3
title: "M3 Milestone"
concepts:
  - corpse-compost-garden
  - consolidation
  - distill
connections:
  - "[[character-grant-miles]]"
  - "[[nexus-acer]]"
  - "[[nexus-thuja]]"
---

# G5: M3 Milestone (BEAM Portfolio)

**Week**: 11  
**Movement**: M3 (Scale)  
**Focus**: Consolidation; documented inquiry planning

## Conceptual Work

- Corpse → Compost transformation visible
- Consolidation of accumulated fragments
- Distill move at portfolio scale
- Dev log as analyzable corpus

## Key Moments/Images

- Grant organizing BEAM Portfolio
- Seeing connections between fragments
- Dead fragments becoming useful
- Planning documented inquiry

## Setting Details

- Study space
- Fragments spread out (physical or digital)
- Selection and arrangement work

## Connects To

- **V5** (Week 10): Analytics Vera sees
- **G6** (Week 15): Final consolidation
- **Acer** (Corpse→Compost→Garden): Transformation metaphor
- **Thuja** (Archives/Analytics): Documentation philosophy

## Draft Notes

<!-- Scene draft content will go here -->
EOF

cat > "$BASE/_planning/scenes/scene-outline-g6.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: fiction
status: outline
scene-id: G6
character: grant
week: 15
movement: M4
title: "Envelope Opening"
concepts:
  - publish
  - accumulation
  - transformation
  - corpse-compost-garden
connections:
  - "[[character-grant-miles]]"
  - "[[nexus-nerium]]"
  - "[[nexus-acer]]"
  - "[[vera-01-envelope]]"
  - "[[vera-06-permissions]]"
---

# G6: Envelope Opening

**Week**: 15  
**Movement**: M4 (Synthesis)  
**Focus**: Accumulation's arc; transformation evidence

## Conceptual Work

- Publish as sixth move (making work public)
- Envelope reveals predictions → actual outcomes
- Full transformation arc visible
- Garden: cultivated selection from accumulated material

## Key Moments/Images

- Opening sealed envelope from Week 1
- Reading predictions, comparing to reality
- Final portfolio as evidence of transformation
- Recognition of distance traveled

## Setting Details

- Classroom, final day
- Envelope ceremony
- Students comparing predictions to outcomes
- Reflective mood

## Connects To

- **V1** (Week 1): Envelope creation
- **V6** (Week 13): Permission transfer
- **Nerium** (Publication): Emergence theme
- **Acer** (Transformation): Garden stage realized

## Draft Notes

<!-- Scene draft content will go here -->
EOF

echo "✓ Created scene outline files"

# === PLANNING: Structure ===

cat > "$BASE/_planning/structure/coverage-matrix.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
connections:
  - "[[gap-analysis]]"
  - "[[nexus-concept-assignments]]"
---

# 15-Week Coverage Matrix

## Scene Distribution

| Week | Movement | Narrated Scene(s) | Needs Explanation | Vignette Candidate |
|------|----------|-------------------|-------------------|-------------------|
| 1 | M1 | **V1**: Envelope planning | Grant's first day; Kirschenbaum reading | — |
| 2 | M1 | **G1**: Tech setup | — | — |
| 3 | M1 | — | Difficulty-as-diagnostic; Salvatori; M1→M2 transition; Compression; Dev log start | **Grant's Salvatori confusion** |
| 4 | M2 | **V2**: BEAM classification | — | — |
| 5 | M2 | **V2** (cont.) / **G2** begins | Zotero library session (T3-T4) | — |
| 6 | M2 | **G2**: Peer review with BEAM | SEAR methodology; Spec Document process | — |
| 7 | M2 | **V3**: Reading Constraint Audits | Alexander's "fit" vocabulary | — |
| 8 | M3 | **G3**: "What You're Automating" | — | — |
| 9 | M3 | **V4** + **G4**: Dual conference | — | — |
| 10 | M3 | **V5**: Eli Review analytics | Star connection to Salvatori | — |
| 11 | M3 | **G5**: M3 Milestone | Corpse→Compost→Garden | — |
| 12 | M4 | — | Selection as composition; Process Archaeology; M3→M4 transition | **Grant's selection paralysis; Process Archaeology discovery** |
| 13 | M4 | **V6**: Permission Flags | T6 optional tools; instructor feedback | — |
| 14 | M4 | — | Presentations (light treatment) | — |
| 15 | M4 | **G6**: Envelope opening | Transfer Proposal; final submission | — |

## Movement Distribution

| Movement | Weeks | Vera Scenes | Grant Scenes | Total |
|----------|-------|-------------|--------------|-------|
| M1: Surfacing | 1-3 | V1 (W1) | G1 (W2) | 2 |
| M2: Naming | 4-7 | V2 (W4-5), V3 (W7) | G2 (W5-6) | 3 |
| M3: Scale | 8-11 | V4 (W9), V5 (W10) | G3 (W8), G4 (W9), G5 (W11) | 5 |
| M4: Synthesis | 12-15 | V6 (W13) | G6 (W15) | 2 |

## Six Moves Coverage

| Six Move | Primary Scene | Secondary Appearance |
|----------|---------------|---------------------|
| Capture | G1 (W2): Index cards | V1: Envelope as capture |
| Classify | V2 (W4-5): BEAM | V3: Audits show classification results |
| Route | G2 (W5-6): Peer review | G3: Library parallel |
| Distill | G3 (W8): Automation | G5: BEAM Portfolio consolidation |
| Connect | V4/G4 (W9): Conference | V5: Analytics show connection patterns |
| Publish | G6 (W15): Envelope | V6: Permission flags → ownership of publication |
EOF

cat > "$BASE/_planning/structure/gap-analysis.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
connections:
  - "[[coverage-matrix]]"
  - "[[nexus-concept-assignments]]"
---

# Gap Analysis: Development Narrative Concepts

## Underrepresented in Scene Structure

These concepts need Nexus page or prose treatment:

| Concept | Importance | Coverage Method |
|---------|------------|-----------------|
| Difficulty Pairs (Salvatori/Star, Meadows/Alexander) | HIGH | Nexus pages (Nyssa, Tsuga) |
| Corpse→Compost→Garden transformation | HIGH | Nexus page (Acer) + reference in G5, G6 |
| Movement Transition Reflections (W3, W8, W11-12) | HIGH | Prose explanation; W3/W12 vignettes |
| ONESIEs (systematic vocabulary introduction) | MEDIUM | Reference in V2 |
| Evidence-Based Reflection vs. Impressionistic | HIGH | Nexus page (Thuja) |
| Process Documentation Philosophy | MEDIUM | Reference in G3, G5 |

## Weeks Requiring Explanation (Not Narrated)

| Week | Key Content | Coverage Method |
|------|-------------|-----------------|
| 3 | Salvatori; Compression; Dev log; First peer review; Literacy Narrative | Nexus (Nyssa) + vignette |
| 6 | SEAR methodology | Prose or fold into V2/G2 references |
| 12 | Selection as composition; Process Archaeology start | Nexus (Acer, Thuja) + vignette |
| 14 | Presentations | Brief mention in G6 |

## Concepts Well-Covered by Scenes

- Constraint sequencing (V1, V3, G3)
- BEAM framework (V2, G2)
- Six moves (distributed across all scenes)
- Infrastructure visibility (G3, V5)
- Permission/ownership transfer (V6, G6)
- Accumulation arc (G1 → G6)
EOF

cat > "$BASE/_planning/structure/nexus-concept-assignments.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
connections:
  - "[[coverage-matrix]]"
  - "[[gap-analysis]]"
---

# Nexus Concept Assignments: QUANTITATION

## Reading Arc

1. **Foundation** (Q-U): Economic frame, then recovered process pedagogy
2. **Transformation** (A-N): How fragments transform; difficulty as the condition
3. **Mechanism** (T-I-T): Constraint timing, six moves + permission structures, infrastructure
4. **Method** (A-T-I): Generate first, document to analyze, count to see
5. **Movement** (O-N): Circulation and emergence—value moves into public

## Complete Mapping

| Position | Tree | Concept | Difficulty Pair | Vignette Week |
|----------|------|---------|-----------------|---------------|
| Q | Quercus (Oak) | Writing as Labor/Capital | — | — |
| U | Ulmus (Elm) | Elbow Recovery + Failure-as-Diagnostic | — | — |
| A | Acer (Maple) | Corpse→Compost→Garden | — | W12 |
| N | Nyssa (Tupelo) | Difficulty-as-Diagnostic (Salvatori) | Pair A, Part 1 | **W3** |
| T | Taxus (Yew) | Constraint Sequencing | — | — |
| I | Ilex (Holly) | Six Moves Vocabulary + Permission Flags | — | — |
| T | Tsuga (Hemlock) | Infrastructure Visibility (Star) + Citation as Dependency | Pair A, Part 2 | — |
| A | Alnus (Alder) | YOLO Up, Constrain Down | — | — |
| T | Thuja (Cedar) | Archives Give Analytics / Process Documentation | — | **W12** |
| I | Illicium (Star Anise) | Quantitation as Rhetoric | — | — |
| O | Olea (Olive) | Circulation (Trimbur) | — | — |
| N | Nerium (Oleander) | Publication / Emergence | — | — |

## Scene Connections by Nexus

| Nexus | Primary Scenes | Secondary Scenes |
|-------|----------------|------------------|
| Quercus | V1, G3 | — |
| Ulmus | V2, V6 | — |
| Acer | G5, G6 | — |
| Nyssa | V3 | — |
| Taxus | V1, V3, G3 | — |
| Ilex | V6, G6 | G1 |
| Tsuga | G3, V5 | — |
| Alnus | V1, G1 | — |
| Thuja | V5, G5, G6 | — |
| Illicium | V5, G3 | — |
| Olea | G2, V4, G6 | — |
| Nerium | V6, G6 | — |
EOF

cat > "$BASE/_planning/structure/vignette-candidates.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: outline
connections:
  - "[[coverage-matrix]]"
  - "[[gap-analysis]]"
---

# Vignette Candidates

Vignettes are short narrative moments (500-800 words) that supplement full scenes, covering weeks or concepts not narrated in the 12 main scenes.

## Confirmed Vignettes

### Week 3: Grant's Salvatori Confusion

**Placement**: Nexus page Nyssa (Difficulty-as-Diagnostic)  
**Focus**: First encounter with difficult reading; confusion as productive  
**Key moment**: Grant unable to parse Salvatori, wondering if he's "not smart enough"  
**Connects to**: V3 (Vera reading audits that document this struggle)

### Week 12: Grant's Selection Paralysis / Process Archaeology Discovery

**Placement**: Nexus page Acer (Corpse→Compost→Garden) or Thuja (Archives/Analytics)  
**Focus**: Paralysis facing accumulated fragments; discovery through Process Archaeology  
**Key moment**: Grant realizes "dead" fragments contain seeds; archives reveal patterns  
**Connects to**: G5 (consolidation), G6 (final selection)

## Potential Additional Vignettes

### Week 6: Grant's SEAR Moment

**Placement**: Nexus page Olea (Circulation) or within G2  
**Focus**: Learning citation as conversation, not decoration  
**Status**: May fold into G2 instead

### Week 14: Presentation Preparation

**Placement**: Brief mention in G6 or standalone  
**Focus**: Public speaking as publication form  
**Status**: Low priority; probably brief mention only

## Vignette Style Notes

- Grant's first-person voice
- Present tense for immediacy
- Focus on single moment, not span
- End with partial recognition (not full clarity)
- Shorter than full scenes (500-800 words vs. 1200-1500)
EOF

echo "✓ Created structure files"

# === PLANNING: Concepts ===

cat > "$BASE/_planning/concepts/concept-difficulty-as-diagnostic.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: placeholder
nexus-page: "[[nexus-nyssa]]"
scholars:
  - Salvatori
  - Donahue
connections:
  - "[[concept-difficulty-pairs]]"
  - "[[scene-outline-v3]]"
---

# Concept: Difficulty-as-Diagnostic

**Nexus**: Nyssa (Tupelo)  
**Difficulty Pair**: Part 1 of Pair A (with Tsuga/Infrastructure)

## Core Claim

<!-- Develop the central argument about difficulty as informational signal -->

## Salvatori's Framework

<!-- "Conversations with Texts" reading methodology -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this -->

## Scholarly Grounding

<!-- Citations, engagement with literature -->

## Draft Notes

<!-- Working notes -->
EOF

cat > "$BASE/_planning/concepts/concept-difficulty-pairs.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: placeholder
connections:
  - "[[concept-difficulty-as-diagnostic]]"
  - "[[nexus-nyssa]]"
  - "[[nexus-tsuga]]"
---

# Concept: Difficulty Pairs

## The Pairing Principle

The webtext uses "difficulty pairs" — two readings that illuminate each other through shared concern with difficulty/resistance as informational.

## Pair A: Salvatori + Star

| Element | Salvatori | Star |
|---------|-----------|------|
| Nexus | Nyssa | Tsuga |
| Domain | Reading/interpretation | Infrastructure/systems |
| Difficulty reveals | Assumptions, reading strategies | System structure, dependencies |
| Course moment | W3 first difficult reading | W8 infrastructure recognition |

## Why Pairing Matters

<!-- Theoretical argument for pairing -->

## Other Potential Pairs

<!-- Meadows/Alexander? Others? -->
EOF

cat > "$BASE/_planning/concepts/concept-corpse-compost-garden.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: placeholder
nexus-page: "[[nexus-acer]]"
connections:
  - "[[scene-outline-g5]]"
  - "[[scene-outline-g6]]"
---

# Concept: Corpse → Compost → Garden

**Nexus**: Acer (Maple)

## The Transformation Arc

| Stage | Description | Course Equivalent |
|-------|-------------|-------------------|
| Corpse | Dead fragments accumulate | M1-M2: Raw production |
| Compost | Connection and revision transform | M3: Consolidation |
| Garden | Portfolio selection cultivates | M4: Synthesis |

## Theoretical Grounding

<!-- Where does this metaphor come from? Original? -->

## Course Implementation

<!-- How students experience this arc -->

## Key Moments

- G5: Grant recognizing compost stage
- G6: Garden realized in final portfolio
- W12 vignette: Recognizing seeds in "dead" fragments

## Draft Notes

<!-- Working notes -->
EOF

cat > "$BASE/_planning/concepts/concept-selection-as-composition.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: placeholder
connections:
  - "[[concept-corpse-compost-garden]]"
  - "[[nexus-nerium]]"
  - "[[scene-outline-g6]]"
---

# Concept: Selection as Composition

## Core Claim

Selection is not pre-composition or post-composition but *is* composition. The act of choosing what to include, exclude, sequence, and present constitutes a compositional act.

## Theoretical Grounding

<!-- Arrangement as rhetorical canon; curation literature -->

## Course Implementation

<!-- Portfolio selection process; Process Archaeology -->

## Connection to Accumulation Model

<!-- With enough accumulated material, selection becomes primary compositional act -->

## Draft Notes

<!-- Working notes -->
EOF

cat > "$BASE/_planning/concepts/concept-evidence-based-reflection.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: placeholder
nexus-page: "[[nexus-thuja]]"
connections:
  - "[[concept-archives-give-analytics]]"
  - "[[scene-outline-v5]]"
---

# Concept: Evidence-Based Reflection

## The Problem

Traditional reflection is impressionistic: students report feelings about process without evidence. This creates unfalsifiable claims and misses patterns visible only in aggregate.

## The Alternative

Evidence-based reflection uses documented process as data source:
- Dev logs provide timeline
- Fragments provide corpus
- Eli Review provides peer interaction record
- Version history provides revision evidence

## "Archives Give You Analytics"

<!-- Connection to Thuja nexus page -->

## Course Implementation

<!-- Process Archaeology assignment; reflection prompts -->

## Draft Notes

<!-- Working notes -->
EOF

cat > "$BASE/_planning/concepts/concept-quantitation.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: partial
nexus-page: "[[nexus-illicium]]"
scholars:
  - Villanueva
  - Hayles
connections:
  - "[[scene-outline-v5]]"
  - "[[scene-outline-g3]]"
---

# Concept: Quantitation as Rhetoric

**Nexus**: Illicium (Star Anise)

## Core Claim

Numbers in composition pedagogy are not anti-humanistic but rhetorical: they classify, compare, and route attention. The fear of quantitation reflects disciplinary anxiety, not inherent incompatibility.

## Villanueva's Argument

"Toward a political economy of rhetoric" — humanists' fear of numbers limits our ability to analyze material conditions of writing.

## Hayles's Contribution

"How We Read: Close, Hyper, Machine" — machine reading (including quantitative analysis) complements rather than replaces close reading.

## Course Implementation

- Eli Review analytics (V5)
- Fragment counts as progress indicator
- BEAM categorization as classification
- Numbers as "points for intervention"

## Meta-Application: QUANTITATION Puzzle

The article itself uses quantitation (12 trees, letter sequence) as organizing principle, demonstrating the rhetoric it argues for.

## Draft Notes

<!-- Working notes -->
EOF

cat > "$BASE/_planning/concepts/concept-archives-give-analytics.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: academic
status: partial
nexus-page: "[[nexus-thuja]]"
connections:
  - "[[concept-evidence-based-reflection]]"
  - "[[concept-quantitation]]"
  - "[[scene-outline-v5]]"
---

# Concept: Archives Give You Analytics

**Nexus**: Thuja (Cedar)

## The Principle

"Archives give you analytics" — systematic documentation creates analyzable corpus. What students document becomes available for pattern recognition.

## Mechanism

1. Students document process (dev logs, fragments, peer reviews)
2. Documentation accumulates as archive
3. Archive becomes analyzable (by student, instructor, or tools)
4. Analysis reveals patterns invisible in moment
5. Patterns inform intervention and revision

## Hayles Connection

Machine reading as triage — not replacing human interpretation but enabling scale.

## Course Implementation

- Dev logs (2× weekly)
- Process Archaeology assignment
- Eli Review as peer interaction archive
- Portfolio as curated archive

## Key Insight

The same documentation that helps students track their work helps instructors see patterns across students (V5: Eli Review analytics).

## Draft Notes

<!-- Working notes -->
EOF

echo "✓ Created concept files"

# === PLANNING: Sources ===

cat > "$BASE/_planning/sources/sources-foundational.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
---

# Foundational Sources

These sources provide the theoretical foundation everything else builds on.

## Core Economic Frame

- **Trimbur, John**. "Composition and the Circulation of Writing." *College Composition and Communication* 52.2 (2000): 188-219.
  - Circulation as delivery; writing's movement through social spaces

- **Horner, Bruce**. *Terms of Work for Composition: A Materialist Critique*. SUNY Press, 2000.
  - Labor/work distinction; material conditions of composition

- **Gibson-Graham, J.K.** *A Postcapitalist Politics*. U of Minnesota P, 2006.
  - Diverse economies; non-capitalist economic practices

## Technology & Composition History

- **Moran, Charles**. "Computers and Composition 1983–2003: A Twenty-Year History." *Computers and Composition* 20.2 (2003): 129-149.
  - Historical context for technology in composition
EOF

cat > "$BASE/_planning/sources/sources-structural.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
---

# Structural Sources

Key framework sources that shape the article's theoretical architecture.

## Time & Technology

- **Stiegler, Bernard**. *Technics and Time, Vol. 1: The Fault of Epimetheus*. Trans. Richard Beardsworth and George Collins. Stanford UP, 1998.
  - Technology as constitutive of human temporality

- **Adam, Barbara**. *Timewatch: The Social Analysis of Time*. Polity, 1995.
  - Social construction of time; temporal structures

## Writing & Labor

- **Brandt, Deborah**. *The Rise of Writing: Redefining Mass Literacy*. Cambridge UP, 2015.
  - Writing as labor; mass writing economy

- **Strickland, Donna**. *The Managerial Unconscious in Composition Studies*. Southern Illinois UP, 2011.
  - Management discourse in composition

- **Braverman, Harry**. *Labor and Monopoly Capital: The Degradation of Work in the Twentieth Century*. Monthly Review P, 1974.
  - Labor process theory; deskilling

## Gift & Exchange

- **Hyde, Lewis**. *The Gift: Imagination and the Erotic Life of Property*. Vintage, 1983.
  - Gift economy; creative work circulation
EOF

cat > "$BASE/_planning/sources/sources-local.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
---

# Local/Supporting Sources

Sources that support specific arguments or provide additional grounding.

## Composition Theory

- **Watkins, Evan**. "Derivative Literacy." *JAC* 17.1 (1997): 15-31.
  - Derivative relations in literacy

- **Watkins, Evan**. *Work Time: English Departments and the Circulation of Cultural Value*. Stanford UP, 1989.
  - Time, labor, English departments

- **Scott, Tony**. *Dangerous Writing: Understanding the Political Economy of Composition*. Utah State UP, 2009.
  - Political economy of composition instruction

## Economic Theory

- **Resnick, Stephen A., and Richard D. Wolff**. *Knowledge and Class: A Marxian Critique of Political Economy*. U of Chicago P, 1987.
  - Class analysis; surplus labor

## Philosophy

- **Arendt, Hannah**. *The Human Condition*. 2nd ed., U of Chicago P, 1998.
  - Labor/work/action distinction
EOF

cat > "$BASE/_planning/sources/sources-to-add.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
---

# Sources to Add

Sources identified during development that need integration.

## Added This Session

- **Villanueva, Victor**. "Toward a Political Economy of Rhetoric." *Radical Relevance: Toward a Scholarship of the Whole Left*. Ed. Laura Gray-Rosendale and Steven Rosendale. SUNY P, 2005.
  - Humanists' fear of numbers; political economy of rhetoric

- **Hayles, N. Katherine**. "How We Read: Close, Hyper, Machine." *ADE Bulletin* 150 (2010): 62-79.
  - Machine reading; quantitative analysis as complement to close reading

## To Add to Scholar Registry

Update `vault-conventions.md` with these scholars:

Trimbur, Horner, Gibson-Graham, Moran, Stiegler, Adam, Brandt, Strickland, Braverman, Hyde, Watkins, Arendt, Villanueva, Hayles

## Sources to Locate

- [ ] Foley labor chapter (in project files)
- [ ] Edwards unpacking (in project files)
- [ ] Edwards economies (in project files)

## Potential Additions

- Composition transfer literature (Yancey, Nowacek, Beaufort)
- Genre studies (Miller, Bawarshi, Devitt)
- Threshold concepts (Adler-Kassner, Wardle)
EOF

echo "✓ Created sources files"

# === PLANNING: Project Management ===

cat > "$BASE/_planning/project-mgmt/immediate-tasks.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
---

# Immediate Tasks

## Current Session Complete

- [x] Create folder structure
- [x] Generate README
- [x] Generate placeholder files

## Next Steps

### Writing (Priority)

1. [ ] Draft one complete scene as proof-of-concept
   - Recommend: V1 (Envelope) or G3 (Automating) for conceptual density
   
2. [ ] Draft one nexus page as proof-of-concept
   - Recommend: Nyssa (Difficulty-as-Diagnostic) for Difficulty Pair setup

3. [ ] Write W3 vignette (Grant's Salvatori confusion)

4. [ ] Draft abstract (150-250 words)

### Development

5. [ ] Set up Quartz for local preview

6. [ ] Scan 2-3 test ties to establish visual asset workflow

7. [ ] Copy CSS files from previous session outputs
EOF

cat > "$BASE/_planning/project-mgmt/near-term-steps.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
---

# Near-Term Steps (Next 2-3 Sessions)

## Scholarly/Writing

1. Draft one complete scene as proof-of-concept (V1 or G3)
2. Draft one nexus page as proof-of-concept (Nyssa recommended)
3. Write W3 vignette (Grant's Salvatori confusion)
4. Draft abstract (150-250 words) to force compression

## Development

5. Create 12 nexus placeholders with assigned concepts and scene connections
6. Map vignette placement to specific nexus pages
7. Set up Quartz for local preview during development
8. Scan 2-3 test ties to establish visual asset workflow

## Open Questions to Resolve

- How much of Grant's Filipino heritage surfaces explicitly?
- Does Vera break the fourth wall?
- Recommended reading order vs. fully open navigation?
- Toggle between Vera/Grant views of W9 conference?
EOF

cat > "$BASE/_planning/project-mgmt/longer-range-priorities.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
---

# Longer-Range Priorities

## Phase 1: Fiction Drafting

- Complete all 12 scenes (Vera 6, Grant 6)
- Write 4 vignettes (2 for W3, 2 for W12)
- Establish voice consistency across tracks

## Phase 2: Nexus Development

- Write academic prose for all 12 nexus pages
- Integrate vignettes into appropriate pages
- Build cross-linking structure

## Phase 3: Supporting Material

- Bibliography (references.md)
- SPEC.md (AI disclosure, methods, acknowledgments)
- Vault network visualization
- Easter egg implementation (localStorage, guestbook)

## Phase 4: Visual/Technical

- Complete tie scanning and processing
- Implement responsive layouts
- Quartz configuration
- Public repo setup with subtree split

## Phase 5: Polish and Submission

- Full read-through for coherence
- Navigation testing
- Accessibility review
- Kairos submission logistics
EOF

cat > "$BASE/_planning/project-mgmt/kairos-continuation-context.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
note: This is a local copy. Primary continuation context maintained externally.
---

# Kairos Continuation Context

This file serves as a local reference. The primary continuation context document is maintained externally for session continuity.

## Key Information

**Title**: Constraint Structure: Toward an Economy of Composition

**Visual Design**: v3.2 (3:10:3 layout, confirmed palettes)

**Structure**: 12 scenes (6 Vera, 6 Grant) + 12 nexus nodes (QUANTITATION) + supporting pages

**Characters**:
- Dr. Vera Green (designer track)
- Grant Miles (student track)

## Quick Reference

- See `coverage-matrix.md` for scene distribution
- See `nexus-concept-assignments.md` for tree → concept mapping
- See `gap-analysis.md` for what needs prose vs. narration

## Session Notes

Update this section after each working session with key decisions and next steps.

### 2025-01-25 (Session 2)

- Completed folder structure and placeholder generation
- Established Option A frontmatter schema
- Ready for first draft work

---

*For full context, see external continuation document*
EOF

echo "✓ Created project management files"

# === DESIGN FILES ===

cat > "$BASE/_design/design-visual-v3.2.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: complete
---

# Visual Design Specification v3.2

## Layout

**Proportions**: 3:10:3 (tie : content : nav)
- Fixed left tie sidebar (full viewport height)
- Scrolling content + nav
- Header spans content + nav only
- Mobile: tie becomes 80px horizontal banner

## Typography

| Track | Font | Usage |
|-------|------|-------|
| Student (Grant) | Crimson Pro | Throughout |
| Designer (Vera) | Fira Sans | Throughout |
| Nexus | Crimson Pro (headers, nav, lists) + Fira Sans (body) | Mixed |

## Color Palettes

### Student Track: "Spicy Sundae"

| Role | Color | Hex |
|------|-------|-----|
| Primary | Caramel | #C4742A |
| Secondary | Honey gold | #E8A317 |
| Background | Vanilla | #FFFBF5 |

### Designer Track: "Menthol Steel"

| Role | Color | Hex |
|------|-------|-----|
| Primary | Saturated teal | #00868B |
| Secondary | Menthol | #5FB3B3 |
| Background | Cool off-white | #F2F7F8 |

### Nexus Pages: "Forest"

| Role | Color | Hex |
|------|-------|-----|
| Primary | Forest green | #2E9E2E |
| Secondary | Black | #0D0D0D |
| Background | Near-white | #FAFAFA |

## Tie Sidebar

- Processed from personal collection (50+ ties)
- 8-color PNG through Photoshop filters
- Organic patterns for student track
- Geometric patterns for designer track
- Specimen/blueprint hybrid for nexus

## Responsive Behavior

- Desktop: Full 3-column layout
- Tablet: Collapsed nav, tie remains
- Mobile: Tie becomes 80px horizontal banner at top
EOF

cat > "$BASE/_design/design-navigation.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: outline
---

# Navigation Design

## Primary Navigation Layers

1. **Track selector**: Vera / Grant / Nexus
2. **Within-track**: Scene/node list
3. **Cross-references**: Links within content

## Entry Points

- **index.md**: Landing page with track choice
- **nexus-hub.md**: Central nexus navigation (tree list)
- Individual scenes/nodes accessible directly

## Reading Paths

### Recommended Order

1. Start with track preference (Vera or Grant)
2. Read chronologically within track
3. Follow nexus links as encountered
4. Explore other track afterward

### Open Navigation

All pages accessible from any point; no gates or required sequence.

## QUANTITATION Puzzle

- Tree pages contain subtle clues to sequence
- Solving reveals: Q-U-A-N-T-I-T-A-T-I-O-N
- Easter egg acknowledgment on completion

## Open Questions

- Should readers toggle between Vera/Grant views of W9 conference?
- How do nexus pages handle readers arriving without scene context?
- Mobile puzzle experience?
EOF

cat > "$BASE/_design/design-easter-egg.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-planning
track: planning
article-section: meta
status: outline
---

# Easter Egg Design

## QUANTITATION Puzzle

### Mechanism

- 12 tree pages contain clues to their position in sequence
- Reader pieces together: Q-U-A-N-T-I-T-A-T-I-O-N
- Successful sequence unlocks acknowledgment

### Implementation Options

1. **localStorage tracking**: Track visited pages, reveal when complete
2. **Hidden input field**: Reader types sequence
3. **Visual puzzle**: Arrange tree icons

### Clue Design

Each tree page contains subtle hint to its letter:
- Quercus (Q): "Questions begin here..."
- Ulmus (U): "Understanding Elbow anew..."
- etc.

## Guestbook

### Implementation Options

1. **GitHub Issues**: Structured, version-controlled
2. **Utterances**: GitHub Issues-backed comments
3. **Static form**: Collected separately

### Content

Readers can leave:
- Reading path taken
- Discoveries made
- Questions raised

## Acknowledgments Page

Special acknowledgments page accessible after puzzle completion:
- AI collaboration disclosure (Claude)
- Personal acknowledgments
- Development process notes
EOF

echo "✓ Created design files"

# === CONTENT: Navigation ===

cat > "$BASE/content/index.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-navigation
track: supporting
article-section: meta
status: placeholder
---

# Constraint Structure: Toward an Economy of Composition

<!-- Landing page content -->

## Enter the Webtext

Choose your path:

- [[vera-01-envelope|Begin with Dr. Vera Green]] (Designer perspective)
- [[grant-01-tech|Begin with Grant Miles]] (Student perspective)
- [[nexus-hub|Explore the Nexus]] (Theoretical framework)

## About This Webtext

<!-- Brief introduction to the article -->

## Navigation

<!-- How to use this webtext -->
EOF

cat > "$BASE/content/nexus-hub.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-navigation
track: nexus
article-section: academic
status: placeholder
---

# The Nexus: Theoretical Framework

The nexus pages develop the theoretical architecture of VIRENS 101. Each page corresponds to a tree genus and a core concept.

## QUANTITATION

| Tree | Concept | Link |
|------|---------|------|
| Quercus (Oak) | Writing as Labor/Capital | [[nexus-quercus]] |
| Ulmus (Elm) | Elbow Recovery | [[nexus-ulmus]] |
| Acer (Maple) | Transformation | [[nexus-acer]] |
| Nyssa (Tupelo) | Difficulty-as-Diagnostic | [[nexus-nyssa]] |
| Taxus (Yew) | Constraint Sequencing | [[nexus-taxus]] |
| Ilex (Holly) | Six Moves + Permissions | [[nexus-ilex]] |
| Tsuga (Hemlock) | Infrastructure + Citation | [[nexus-tsuga]] |
| Alnus (Alder) | YOLO Up, Constrain Down | [[nexus-alnus]] |
| Thuja (Cedar) | Archives Give Analytics | [[nexus-thuja]] |
| Illicium (Star Anise) | Quantitation as Rhetoric | [[nexus-illicium]] |
| Olea (Olive) | Circulation | [[nexus-olea]] |
| Nerium (Oleander) | Publication / Emergence | [[nexus-nerium]] |

## Reading the Nexus

<!-- Guidance on how to engage with nexus pages -->
EOF

echo "✓ Created navigation files"

# === CONTENT: Vera Track ===

cat > "$BASE/content/vera-track/vera-01-envelope.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V1
week: 1
movement: M1
title: "Envelope Planning"
connections: []
concepts: []
planning-doc: "[[scene-outline-v1]]"
---

# Envelope Planning

**Week 1** | **M1**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

cat > "$BASE/content/vera-track/vera-02-beam.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V2
week: 4-5
movement: M2
title: "BEAM Classification"
connections: []
concepts: []
planning-doc: "[[scene-outline-v2]]"
---

# BEAM Classification

**Week 4-5** | **M2**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

cat > "$BASE/content/vera-track/vera-03-audits.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V3
week: 7
movement: M2
title: "Reading Constraint Audits"
connections: []
concepts: []
planning-doc: "[[scene-outline-v3]]"
---

# Reading Constraint Audits

**Week 7** | **M2**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

cat > "$BASE/content/vera-track/vera-04-conference.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V4
week: 9
movement: M3
title: "Conference with Grant"
connections: []
concepts: []
planning-doc: "[[scene-outline-v4]]"
---

# Conference with Grant

**Week 9** | **M3**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

cat > "$BASE/content/vera-track/vera-05-analytics.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V5
week: 10
movement: M3
title: "Eli Review Analytics"
connections: []
concepts: []
planning-doc: "[[scene-outline-v5]]"
---

# Eli Review Analytics

**Week 10** | **M3**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

cat > "$BASE/content/vera-track/vera-06-permissions.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: vera
article-section: fiction
status: placeholder
scene-id: V6
week: 13
movement: M4
title: "Permission Flags"
connections: []
concepts: []
planning-doc: "[[scene-outline-v6]]"
---

# Permission Flags

**Week 13** | **M4**

<!-- Scene content will go here -->

---

*Dr. Vera Green's perspective*
EOF

echo "✓ Created Vera track files"

# === CONTENT: Grant Track ===

cat > "$BASE/content/grant-track/grant-01-tech.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G1
week: 2
movement: M1
title: "Tech Setup"
connections: []
concepts: []
planning-doc: "[[scene-outline-g1]]"
---

# Tech Setup

**Week 2** | **M1**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

cat > "$BASE/content/grant-track/grant-02-peer.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G2
week: 5-6
movement: M2
title: "Peer Review with BEAM"
connections: []
concepts: []
planning-doc: "[[scene-outline-g2]]"
---

# Peer Review with BEAM

**Week 5-6** | **M2**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

cat > "$BASE/content/grant-track/grant-03-automating.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G3
week: 8
movement: M3
title: "What You're Automating"
connections: []
concepts: []
planning-doc: "[[scene-outline-g3]]"
---

# What You're Automating

**Week 8** | **M3**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

cat > "$BASE/content/grant-track/grant-04-conference.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G4
week: 9
movement: M3
title: "Conference with Vera"
connections: []
concepts: []
planning-doc: "[[scene-outline-g4]]"
---

# Conference with Vera

**Week 9** | **M3**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

cat > "$BASE/content/grant-track/grant-05-milestone.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G5
week: 11
movement: M3
title: "M3 Milestone"
connections: []
concepts: []
planning-doc: "[[scene-outline-g5]]"
---

# M3 Milestone

**Week 11** | **M3**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

cat > "$BASE/content/grant-track/grant-06-envelope.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-scene
track: grant
article-section: fiction
status: placeholder
scene-id: G6
week: 15
movement: M4
title: "Envelope Opening"
connections: []
concepts: []
planning-doc: "[[scene-outline-g6]]"
---

# Envelope Opening

**Week 15** | **M4**

<!-- Scene content will go here -->

---

*Grant Miles's perspective*
EOF

echo "✓ Created Grant track files"

# === CONTENT: Nexus Pages ===

cat > "$BASE/content/nexus/nexus-quercus.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: quercus
tree-common: Oak
concept: "Writing as Labor and Capital"
scenes-linked: [V1, G3]
connections: []
---

# Quercus (Oak)

## Writing as Labor and Capital

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V1, G3

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Quercus*
EOF

cat > "$BASE/content/nexus/nexus-ulmus.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: ulmus
tree-common: Elm
concept: "Elbow Recovery + Failure-as-Diagnostic"
scenes-linked: [V2, V6]
connections: []
---

# Ulmus (Elm)

## Elbow Recovery + Failure-as-Diagnostic

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V2, V6

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Ulmus*
EOF

cat > "$BASE/content/nexus/nexus-acer.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: acer
tree-common: Maple
concept: "Corpse → Compost → Garden"
scenes-linked: [G5, G6]
connections: []
---

# Acer (Maple)

## Corpse → Compost → Garden

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: G5, G6

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Acer*
EOF

cat > "$BASE/content/nexus/nexus-nyssa.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: nyssa
tree-common: Tupelo
concept: "Difficulty-as-Diagnostic"
scenes-linked: [V3]
connections: []
difficulty-pair: "Part 1 of Pair A (with Tsuga)"
---

# Nyssa (Tupelo)

## Difficulty-as-Diagnostic

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V3

<!-- Links to relevant scene moments -->

## Vignette: Week 3

<!-- Grant's Salvatori confusion vignette will go here -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Nyssa*
EOF

cat > "$BASE/content/nexus/nexus-taxus.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: taxus
tree-common: Yew
concept: "Constraint Sequencing"
scenes-linked: [V1, V3, G3]
connections: []
---

# Taxus (Yew)

## Constraint Sequencing

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V1, V3, G3

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Taxus*
EOF

cat > "$BASE/content/nexus/nexus-ilex.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: ilex
tree-common: Holly
concept: "Six Moves Vocabulary + Permission Flags"
scenes-linked: [V6, G6]
connections: []
---

# Ilex (Holly)

## Six Moves Vocabulary + Permission Flags

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V6, G6

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Ilex*
EOF

cat > "$BASE/content/nexus/nexus-tsuga.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: tsuga
tree-common: Hemlock
concept: "Infrastructure Visibility + Citation as Dependency"
scenes-linked: [G3, V5]
connections: []
difficulty-pair: "Part 2 of Pair A (with Nyssa)"
---

# Tsuga (Hemlock)

## Infrastructure Visibility + Citation as Dependency

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: G3, V5

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Tsuga*
EOF

cat > "$BASE/content/nexus/nexus-alnus.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: alnus
tree-common: Alder
concept: "YOLO Up, Constrain Down"
scenes-linked: [V1, G1]
connections: []
---

# Alnus (Alder)

## YOLO Up, Constrain Down

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V1, G1

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Alnus*
EOF

cat > "$BASE/content/nexus/nexus-thuja.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: thuja
tree-common: Cedar
concept: "Archives Give Analytics"
scenes-linked: [V5, G5, G6]
connections: []
---

# Thuja (Cedar)

## Archives Give Analytics

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V5, G5, G6

<!-- Links to relevant scene moments -->

## Vignette: Week 12

<!-- Grant's Process Archaeology discovery vignette will go here -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Thuja*
EOF

cat > "$BASE/content/nexus/nexus-illicium.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: illicium
tree-common: Star Anise
concept: "Quantitation as Rhetoric"
scenes-linked: [V5, G3]
connections: []
---

# Illicium (Star Anise)

## Quantitation as Rhetoric

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V5, G3

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Illicium*
EOF

cat > "$BASE/content/nexus/nexus-olea.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: olea
tree-common: Olive
concept: "Circulation"
scenes-linked: [G2, V4, G6]
connections: []
---

# Olea (Olive)

## Circulation

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: G2, V4, G6

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Olea*
EOF

cat > "$BASE/content/nexus/nexus-nerium.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-nexus
track: nexus
article-section: academic
status: placeholder
tree-genus: nerium
tree-common: Oleander
concept: "Publication / Emergence"
scenes-linked: [V6, G6]
connections: []
---

# Nerium (Oleander)

## Publication / Emergence

<!-- Academic prose developing this concept -->

## Course Implementation

<!-- How VIRENS 101 operationalizes this concept -->

## Scenes

This concept appears in: V6, G6

<!-- Links to relevant scene moments -->

## Scholarly Grounding

<!-- Citations and engagement with literature -->

---

*Nexus node: Nerium*
EOF

echo "✓ Created nexus files"

# === CONTENT: Supporting Pages ===

cat > "$BASE/content/supporting/references.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: academic
status: placeholder
---

# References

<!-- Bibliography will be compiled here -->

## Foundational

## Structural

## Local/Supporting

## Course Materials Referenced
EOF

cat > "$BASE/content/supporting/spec.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# SPEC: Statement of Practices, Ethics, and Collaboration

## AI Collaboration Disclosure

This webtext was developed in collaboration with Claude (Anthropic). The AI assisted with:

<!-- Describe AI's role -->

## Research Methods

<!-- Design-based research, practitioner inquiry -->

## Acknowledgments

<!-- Personal and professional acknowledgments -->

## Technical Specifications

- Static site generator: [Quartz/other]
- Hosted: [location]
- Source: [repository link]
EOF

cat > "$BASE/content/supporting/next-steps.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# Next Steps

## For Instructors

<!-- How to adapt VIRENS 101 for your context -->

## For Researchers

<!-- Research questions this work opens -->

## For Students

<!-- What this approach might mean for you -->
EOF

cat > "$BASE/content/supporting/contributing.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# Contributing

## Feedback Welcome

<!-- How readers can provide feedback -->

## Guestbook

<!-- Link to guestbook or comment system -->

## Repository

<!-- Link to public repository -->
EOF

cat > "$BASE/content/supporting/changelog.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# Changelog

## Version History

### v0.1 (2025-01-25)

- Initial structure and placeholders
- Design specification v3.2

<!-- Future versions will be logged here -->
EOF

cat > "$BASE/content/supporting/vault-network.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# Vault Network

This page will display an interactive visualization of the full VIRENS 101 documentation vault, demonstrating the recursive self-documentation argument.

<!-- Network graph implementation pending -->

## About the Visualization

<!-- Explain what readers are seeing -->

## Explore the Vault

<!-- Links to key vault sections -->
EOF

cat > "$BASE/content/supporting/dev-log-neckties.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
---

# Dev Log: Necktie Processing

This page documents the process of converting personal neckties into visual assets for the webtext, practicing the same process documentation the course teaches.

## Tie Selection

<!-- Criteria and process -->

## Photography

<!-- Setup and workflow -->

## Photoshop Processing

<!-- 8-color palette extraction -->

## Integration

<!-- How ties map to tracks and pages -->
EOF

cat > "$BASE/content/supporting/acknowledgments.md" << 'EOF'
---
created: 2025-01-25
type: kairos-webtext-support
track: supporting
article-section: meta
status: placeholder
easter-egg: true
---

# Acknowledgments

*You found it.*

<!-- Special acknowledgments page accessible after puzzle completion -->

## The QUANTITATION Puzzle

<!-- Explanation of the puzzle -->

## Development Acknowledgments

<!-- Personal thanks -->

## AI Collaboration

<!-- Detailed Claude collaboration notes -->

## The Making Of

<!-- Extended development notes -->
EOF

echo "✓ Created supporting page files"

# === Summary ===

echo ""
echo "=========================================="
echo "Kairos Webtext Vault Setup Complete"
echo "=========================================="
echo ""
echo "Location: $BASE"
echo ""
echo "Files created:"
echo "  - README.md"
echo "  - _planning/characters/ (2 files)"
echo "  - _planning/scenes/ (12 files)"
echo "  - _planning/structure/ (4 files)"
echo "  - _planning/concepts/ (7 files)"
echo "  - _planning/sources/ (4 files)"
echo "  - _planning/project-mgmt/ (4 files)"
echo "  - _design/ (3 files)"
echo "  - content/vera-track/ (6 files)"
echo "  - content/grant-track/ (6 files)"
echo "  - content/nexus/ (12 files)"
echo "  - content/supporting/ (8 files)"
echo "  - content/ navigation (2 files)"
echo ""
echo "Total: 70 files"
echo ""
echo "Next steps:"
echo "  1. Copy CSS files from previous session to _design/css/"
echo "  2. Review placeholder content"
echo "  3. Begin drafting V1 or G3 scene"
echo ""
