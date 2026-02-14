---
created: 2026-02-12 15:28
type: session-digest
status: current
project: kairos-webtext
session-date: 2026-02-12
threads-touched: [constraint-sequencing, course-design-alignment, denaturalization, scene-architecture]
tags: [session-digest]
title: "Session Digest: Scene-to-Week Alignment Audit"
aliases: ["Session Digest: Scene-to-Week Alignment Audit"]
linter-yaml-title-alias: "Session Digest: Scene-to-Week Alignment Audit"
modified: 2026-02-12 16:12
---

# Session Digest: Scene-to-Week Alignment Audit

**Date:** 2026-02-12<br/>
**Project:** Kairos Webtext / VIRENS 101 Course Design<br/>
**Session character:** Systematic audit reconciling the webtext's 12 narrated scenes against the course design's 15-week consolidated schedule and weekly overviews. Produced a full alignment map, resolved the BEAM timing discrepancy (D1/D2), fixed the Week 9 movement label (D3), identified six backflow requirements, and established next steps for denaturalization framing.

## Theoretical Breakthroughs

### The Constraint Sequence Defense

The session's most significant intellectual contribution was recognizing that the BEAM timing discrepancy (V2/G2 placed at Weeks 4-6 in the webtext, BEAM not introduced until Weeks 6-7 in the course design) should be resolved by moving the _webtext_ rather than the _course design_. The reason: the course design's progression — SEAR (Week 4, sentence-level source integration) → Zotero (Week 5, tool-level source management) → Borges/Quine/Jackson (Week 6, classification as intellectual problem) → BEAM (Weeks 6-7, classification as practical framework) — is a genuine constraint sequence where each layer depends on the prior. Moving BEAM earlier would mean students classify sources before encountering the theoretical problem of classification, which violates the course's own "YOLO up, constrain down" philosophy. Students encounter the Library of Babel (why all classification systems are incomplete) _before_ receiving BEAM (a useful-because-limited classification tool). This is denaturalization in practice: the intellectual problem of classification is visible before the practical tool arrives.

This reasoning also produced a secondary insight: the constraint sequence is itself evidence for the webtext's claims about the course. The sequence SEAR→Zotero→Borges→BEAM demonstrates the VIRENS principle that _when_ constraints arrive matters as much as _what_ they constrain. This could be explicitly narrated in the webtext as an example of constraint sequencing operating in the course design itself — a meta-level illustration.

### G2's Movement Boundary as Narrative Advantage

Moving G2 to Weeks 7-8 means Grant's peer review scene now crosses the M2→M3 boundary. Rather than being a problem, this is a narrative advantage: Grant is doing peer review on BEAM-classified work right as the course transitions from Naming to Operating at Scale. His library parallel ("I do this all day") lands harder because he's classifying and routing simultaneously — the exact combination his library job requires. The scene captures the moment where two operations that seemed separate (classifying sources, routing them to readers) converge in practice.

## Architectural Decisions

### D1/D2: V2 Moved to Weeks 6-7, G2 Moved to Weeks 7-8

**Decision:** Resolve the BEAM timing discrepancy by shifting webtext scenes later rather than introducing BEAM earlier in the course design.

**Rationale:** Preserves the course design's SEAR→Zotero→Borges→BEAM constraint sequence. The course design's sequencing is pedagogically principled and already locked (consolidated schedule finalized 2026-01-23). The webtext scene outlines are still at outline status with no drafted content, so the change is clean.

**Supersedes:** Coverage matrix entries placing V2 at Weeks 4-5 and G2 at Weeks 5-6.

**Consequence:** Weeks 4-5 are now unnarrated in M2. The gap analysis has been updated to flag that SEAR introduction, Zotero setup, and Meadows leverage points need coverage through nexus pages or prose rather than narrated scenes.

**Files updated:**
- `scene-outline-v2.md` — week changed to 6-7
- `scene-outline-g2.md` — week changed to 7-8
- `coverage-matrix.md` — Scene Distribution, Movement Distribution, and Six Moves tables rewritten
- `gap-analysis.md` — Weeks Requiring Explanation updated
- `scene-to-week-alignment-audit.md` — V2 and G2 entries marked RESOLVED

### D3: Week 9 Movement Label Fixed

**Decision:** Update Week 9 overview YAML from `movement: Threshold (M2→M3)` to `movement: M3`.

**Rationale:** Consolidated schedule places M3 at Weeks 8-11. The webtext's coverage matrix places V4/G4 (conference scenes) in M3. The "threshold" label was an earlier framing that didn't survive the schedule consolidation.

**File updated:** `i_week09/week9-overview-course-v101.md`

### "Distill" Must Be Named No Later Than Week 8

**Decision:** The six-move term "distill" needs explicit naming in student-facing materials at Week 8, not Week 11 as currently written. The operation is already happening (corpus inventory at Week 8 Block 2) but lacks the vocabulary. Week 8's corpus inventory is the natural site.

**Status:** Decided but not yet implemented. Requires editing Week 8 overview.

## Formulation Candidates

1. **[Constraint sequencing]** "The course design's progression — SEAR, Zotero, Borges/Quine, BEAM — is itself an instance of the constraint sequencing the webtext claims to theorize. Students encounter the intellectual problem of classification before receiving a practical tool for managing it. BEAM arrives as a response to Borges, not as an arbitrary framework." — Context: Potential passage for the webtext's methodological discussion of how course structure embodies its own principles.

2. **[Denaturalization gap]** "The course overview uses the language of 'accumulation' and 'capital' but treats them as descriptive rather than as explicitly economic operations being named as such. The env.md draft says 'the course names its operations as economic in character' — but this naming doesn't currently appear in student-facing materials." — Context: The central finding of the denaturalization visibility analysis (Q6). Identifies the precise gap between webtext claims and course reality.

3. **[Audit methodology]** "When the webtext's theoretical development implies something the course design doesn't include, the webtext is generally authoritative, and the course design should be updated — unless the course design reflects a practical constraint that the webtext should accommodate." — Context: The authority rule established for reconciliation between the two projects.

## Source Engagement

No new interlocutors introduced. Session worked entirely with existing course design sources (Ong, Salvatori, Meadows, Alexander, Borges, Quine, Jackson, Brooks, Star, Bush, Ribes & Jackson, Norman, Bernstein, Burke) and confirmed their placement across weekly overviews. The audit validated that scene outlines should reference the readings assigned during their corresponding weeks — several scenes occur alongside important readings that the outlines don't foreground (V6/Bernstein, G5/Ribes & Jackson, G3/Brooks).

## Open Questions

### Q6: Where Does Denaturalization Enter Student-Facing Materials?

The audit identified five candidate locations for adding economic/denaturalization framing to student-facing content:

1. **Course overview** (`a_description/course-overview-course-v101.md`) — strongest candidate; already introduces key concepts; first thing students read
2. **Six-moves document** (`b_overview/six-moves-process-pedagogy-course-v101.md`) — currently presents moves as descriptive; could frame them as deliberately imposed operations available for interrogation
3. **M1 movement overview** — "Surfacing" is explicitly about making invisible systems visible; the course's own vocabulary is one such system
4. **Week 1 synthesis** — already has "syllabus as specification" framing; could extend to six-moves as specification
5. **Dev log guide** — could include prompts inviting the denaturalizing question: "What operation did you perform? Who decided that should happen now?"

**Not yet decided.** Tabled for next session.

### Preferred vs. Flexible Sequences

Michael identified the next step as comparing the webtext's preferred and flexible sequences to the course's 15-week sequence. This comparison would reveal which elements of the webtext's narrative depend on specific course timing and which can be narrated flexibly. This should happen _before_ tackling backflow/denaturalization and distill-naming, as the sequence comparison may reveal additional constraints or opportunities.

### B3/B6: Should Students Question the Framework?

Grant's skepticism arc (six-moves ≈ institutional assessment; countable-for-practitioner vs. countable-for-institution) is currently a narratological requirement. Open question: should the course design explicitly create space for students to question the six-moves framework? If yes, this is a significant pedagogical addition. If no, Grant's skepticism remains purely fictional — which may weaken the webtext's denaturalization claims.

## Discarded Directions

### Moving BEAM Earlier in the Course Design

Considered introducing BEAM at Week 5 alongside Zotero (Option 2 in the original audit). Rejected because it would break the Borges/Quine→BEAM constraint sequence — students would classify sources before encountering the theoretical problem of classification. The course design's existing progression is pedagogically stronger and embodies the VIRENS principles the webtext claims to theorize. Could become relevant if a future semester has different timing constraints.

## Cross-References

- **Audit document:** `[[scene-to-week-alignment-audit]]` — full 12-scene comparison with element-by-element tables
- **Coverage matrix:** `[[coverage-matrix]]` — updated with new scene-to-week mapping
- **Gap analysis:** `[[gap-analysis]]` — updated with Weeks 4-5 as unnarrated
- **Prior session digest:** `[[2026-02-11-monograph-pedagogy-tension-resolution]]` — the monograph-pedagogy tension synthesis that generated the backflow requirements (B1-B6) this audit tracks
- **env.md:** `content/supporting/env.md` — the denaturalization framing page whose claims prompted the Q6 analysis

## Flagged Updates

- [ ] Architecture document: No formal architecture doc for the Kairos webtext exists yet; coverage matrix and gap analysis serve this function. Both have been updated.
- [ ] Interlocutor index: No updates needed — no new source engagement.
- [x] Memory: No state changes warranting memory edits.
- [ ] Fragment needed: The constraint-sequence defense (SEAR→Zotero→Borges→BEAM as instance of course's own principles) could become a fragment for the webtext's methods section. Not written this session.
- [ ] Course design update needed: Week 8 overview should name "distill" explicitly in the corpus inventory activity. Not yet implemented.
