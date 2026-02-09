---
created: 2026-02-03
type: teaching-course-justification
course: virens-101
component: f_assignments
track: justification
identifier: ai-spec-test
paired-content: [[ai-spec-test-course-v101]]
status: draft

# === SCHOLARLY GROUNDING ===
cites-scholars: [Fyfe, Kirschenbaum, Meadows, Norman, Downs, Salvatori, Borges]
primary-theorist: Fyfe

# === DEPENDENCY MANAGEMENT ===
sync-group: [fragment-model, time-structure]
depends-on: [arguable-claims, fragment-archive, eli-review-criteria, downs-rhetoric, gigo-principle, constraint-sequencing-pedagogy, failure-as-diagnostic]
affects: [spec-document-assignment, constraint-audit]
uses-defs: [fragment-definition, block-duration, fragment-wordcount-range]
last-sync-check: 
attention-flag: "Schedule integration: W5B4, W6B1, W6B2, W6B6. Requires pre-specified LLM URL."
tags: [teaching, virens-101, assignments, ai, specification, movement-2, pedagogy]
---

# The Spec Test: Pedagogical Rationale and Facilitation Guide

> [!abstract] Pedagogical Rationale
> **Component**: Assignments
> **Track**: Justification (why these choices)
> **Schedule**: Week 5 Block 4 → Week 6 Blocks 1–2 (optional reflection W6B6)

## Overview

This two-session activity uses AI as a diagnostic instrument to make the intellectual labor of specification visible. Students develop the same claim twice—first without a spec, then with one—and compare results. The activity operationalizes five course principles simultaneously: the GIGO problem, specification as intellectual labor, constraint sequencing, failure-as-diagnostic methodology, and textual accumulation. It functions as a lead-in to the Spec Document assignment, providing experiential motivation for why spec-writing matters before students undertake it at assignment scale.

**Primary learning objectives:** (a) Specifications are valuable because they make intentions explicit, and (b) the hard work of writing is specification, not production.

**Secondary objectives:** Students experience the GIGO principle empirically; they practice diagnostic reading of AI output (a transferable skill for evaluating their own drafts); they add material to their fragment archive; they begin to see the CTSG pattern on assignment sheets and Eli Review criteria as instances of specification.

---

## Theoretical Grounding

### Fyfe (2021): Precedent and Departure

Paul Fyfe's "How to Cheat on Your Final Paper" (2021) had students weave GPT-2 output into final essays, then reflect on authorship and plagiarism. Key findings: 87% of students reported it was harder than writing the essay themselves; the AI fabricated sources and produced incoherent prose; some students adapted their style to match the AI (a negative outcome); the assignment ironically reinforced students' commitment to their own voices.

This activity departs from Fyfe in three significant ways:

1. **Mid-course diagnostic vs. final assignment.** Fyfe's was summative. Ours is formative—insights feed forward into the Spec Document and all subsequent work. Students don't just reflect on what happened; they use the experience to build a skill.

2. **Current LLMs vs. GPT-2.** Fyfe's students confronted obviously broken output—incoherent, wandering, nonsensical. GPT-2 couldn't sustain logical subordination across paragraphs (Marcus and Davis 2020; Seabrook 2019; Elkins and Chun 2020). Current models produce fluent, well-organized prose that can pass surface inspection. The diagnostic problem has shifted from "the output is obviously bad" to "the output looks good but may be epistemologically empty"—fabricated sources, plausible-sounding counterarguments with no grounding, evidence that sounds authoritative but can't be verified. This makes diagnostic reading harder and more important.

3. **Structured before/after comparison.** Fyfe had no spec intervention. Students reflected on the experience but had no structured way to identify what would have improved it. The two-round design creates a controlled comparison that Fyfe never attempted, isolating specification as the variable that changes the output.

### GIGO Principle (06_automation_and_process_mechanics.md)

The course framework identifies the GIGO problem as central to understanding human-machine collaboration: "AI without constraint or intention produces slop" (06). Round 1 is designed to demonstrate this empirically. Students experience the principle before it is named—consistent with the course's constraint sequencing pedagogy, where experience precedes theoretical framing.

Round 2 demonstrates the complementary insight: better input produces better output. The spec changes the output quality not because the AI becomes smarter but because the human has done the intellectual work of specifying what the text should accomplish. This makes visible where the cognitive labor actually resides—in invention, constraint-setting, and judgment, not in sentence production.

### Mislocated Drudgery (06_automation_and_process_mechanics.md)

Current AI rhetoric locates drudgery in drafting, summarization, and research—tasks the course framework identifies as genuine intellectual labor. The spec test inverts this: students discover that the "easy" part (telling the AI what to write) is actually the hard part, and the "hard" part (producing 500 words of prose) is what the machine does trivially. This aligns with the course's "right tasks for right actors" framework: machines handle bounded iteration; humans handle specification, intention, and judgment.

### Constraint Sequencing as Pedagogy (04b_operationalized_principles.md)

The activity is itself an instance of constraint sequencing. Both rounds involve the same task (develop this claim into 500 words), but Round 2 front-loads specification work that Round 1 omits. The time allocation makes the principle concrete: in Round 1, all time goes to execution; in Round 2, half the time goes to specification and half to execution. Students experience directly that front-loading constraint work changes the quality of execution—the central claim of constraint sequencing pedagogy.

The session gap between rounds (W5B4 to W6B1) enacts another sequencing principle: experience → reflection → intervention → comparison. The homework annotation converts passive dissatisfaction into articulated diagnosis, priming the spec-writing in Round 2.

### Failure-as-Diagnostic (07_pedagogical_innovations.md)

Round 1 is designed to produce unsatisfying output. This is a controlled failure experience. The pair-share asks the course's core diagnostic questions: "Where did this get hard? What's missing? What would need to be different?" The homework annotation formalizes this diagnosis. The activity treats difficulty not as a problem to eliminate but as an informational signal about what specification does and why it matters.

### Textual Accumulation (05_textual_accumulation_and_value.md)

Both rounds produce fragments that enter the student's archive. The AI output is treated as raw material—like field notes or rough freewriting—that joins the corpus for potential future development. The student's annotations, specs, and comparison notes are the genuine intellectual work. This normalizes the practice of generating material through varied means and then exercising judgment about what to keep, develop, or discard.

### Week 6 Reading Resonance

The activity falls the same week as the Borges/Quine/libraryofbabel.info/Shelley Jackson reading cluster. This is not accidental. Borges's Library of Babel presents infinite text generation without human meaning—every possible book exists, but navigating the library is impossible without a way to identify what you're looking for. The spec test demonstrates the same principle empirically: an AI can produce indefinite text, but without human specification, the output is generic, unmoored, and functionally useless for the writer's actual purposes. The library needs a catalog; the AI needs a spec. This connection can be drawn in the W6B2 debrief or left for students to discover in discussion.

---

## Facilitation Guide

### Pre-Activity Logistics

**Required:**
- Pre-specified LLM URL determined and tested. [DECISION NEEDED: Which tool? Institutional access?]
- Students have fragment archives accessible (OneDrive or physical cards)
- Students have devices with browsers capable of private/incognito windows
- Confirm private/incognito window instructions for major browsers (Chrome: Ctrl+Shift+N / Cmd+Shift+N; Firefox: Ctrl+Shift+P / Cmd+Shift+P; Safari: File → New Private Window; Edge: Ctrl+Shift+N / Cmd+Shift+N)

**Preparation:**
- Post fragment prompts to Canvas before W5B4 so students can reference them during class
- Have the Round 1 framing language ready—the "arguable claim" refresher
- Prepare a backup claim for students who genuinely cannot identify one from their archive (this should be rare by Week 5, but have it available)

---

### Week 5, Block 4: Round 1 — No Spec (~25 minutes)

**Opening (3–4 min):**
Frame the activity. Language along these lines: "Today we're going to test something. You're going to ask an AI to develop one of your claims into 500 words of academic prose. But first: pick your claim."

Brief arguable-claim refresher (this should be familiar from Downs and earlier work):
- Not an observation of fact (you can just check)
- Not purely personal taste (nobody can engage with it)
- Not trivial or vague (too boring to develop)

Students browse fragments and select a claim. Give 60–90 seconds for selection; most should be able to identify one quickly by this point in the semester. If a student is stuck, suggest they look at their literacy narrative compression or their strongest reaction to Meadows or Kirschenbaum.

"Now open a private browser window and go to [URL]. Paste your claim. Ask the AI to develop it into about 500 words with appropriate evidence and at least one counterargument. Don't give it anything else. No context about this course, no background reading, no audience information. Just the claim and the request. Go."

**Main activity (8–10 min):**
Students interact with AI. Circulate. Do not help students improve their prompts—the point is that they get whatever the AI produces from minimal input. If students ask "Can I tell it more?": "Not this time. Just the claim and the basic request."

Watch for: students who get surprisingly good output (their claim may be sharp enough to function as a mini-spec—note this for debrief). Students who get total garbage (their claim may be too vague—also diagnostic). Students who are already sophisticated prompters and instinctively add specification despite instructions (gently redirect: "Try it with just the claim this round").

**Pair-share (7–8 min):**
"Turn to your neighbor. Read their AI output. Quick gut check: thumbs up or thumbs down? Would this pass as a draft in this class? What's missing? What feels wrong? What, if anything, is useful?"

Let pairs discuss for 4–5 minutes, then pull 2–3 observations from the room. Don't over-discuss—this is a first reaction, not the debrief. Common responses will likely include: "It sounds confident but says nothing specific," "It made up a source," "It's technically organized but the argument doesn't go anywhere," "It's fine but it's not what I meant."

**Closing (3–4 min):**
"Save what you got. Don't edit the AI's output. Follow the fragment prompt: paste the claim, the output, and your gut reaction into a new fragment. For homework, you'll annotate this more carefully—three specific places where it's unsatisfactory and why. We're going to try this again next time, differently."

**Key instructor move:** End without explaining what Round 2 will be. The homework annotation does its best work if students are sitting with the problem, not the solution.

---

### Week 5 Homework: Dev Log Annotation

Students annotate their Round 1 output with three specific failure points. The prompt asks them to think about what they would have needed to tell the AI to prevent each problem—this primes the spec-writing in Round 2 without naming it.

**What to check for:** If students submit annotations that are vague ("it was bad") rather than specific ("the second paragraph claims that 'studies have shown' but doesn't cite any study"), the spec-writing in Round 2 will be vague too. Consider a brief check at the start of W6B1: "How many of you found specific problems you could name? Raise your hand if you found a place where the AI fabricated a source." This norming moment clarifies the level of specificity expected.

---

### Week 6, Block 1: Round 2 — With Spec (~25 minutes)

**Note:** The Zotero check-in previously scheduled for this block should migrate to W6B4 or another block with natural pause time.

**Opening (1–2 min):**
Brief recall: "Last session you gave an AI your claim and almost nothing else. You annotated what went wrong. Today: same claim, different approach. Before you open the AI, you're going to write a specification."

**Spec-writing (5 min):**
"Take five minutes. Write down—on paper or in a document—what you want the AI to produce. Think about everything you annotated: every problem you identified is something your spec could address. What should this text do? For whom? Using what evidence? With what structure? In what tone? What should it *not* do? Write it all down before you touch the AI."

Circulate during spec-writing. Watch for: students who default to vague instructions ("make it better")—nudge toward specificity. Students who write extremely detailed specs—these are your exemplars for the debrief. Students who instinctively reach for the CTSG pattern from assignment sheets—note this for the W6B2 discussion.

Do **not** name the CTSG pattern or mention "specification" as a formal concept during spec-writing. Let the structure of the activity reveal the connection. The naming happens in the debrief.

**AI interaction (5–8 min):**
"Open a *new* private browser window—fresh session, no memory of Round 1. Go to [URL]. Paste your spec and your claim. See what happens."

Students interact with AI. Circulate. The energy in the room should be noticeably different from Round 1—students are investing differently because they've done preparatory work.

**Pair-share — Spec Audit (8–10 min):**
"This time, read your partner's *spec first*, then the output. Where did the AI follow the spec? Where did it deviate? What did the spec fail to specify that would have mattered? Is this better than Round 1?"

This pair-share takes longer than Round 1's because students are evaluating two artifacts (spec + output) and their relationship. Let pairs work for 5–6 minutes, then pull observations. Frame the pull-back around the relationship: "What did your spec change? What didn't it fix?"

**Closing (2–3 min):**
"Save your spec and the output—follow the fragment prompt. We're going to debrief this next block. Hold onto everything you noticed."

---

### Week 6, Block 2: Debrief and Discussion (~25 minutes)

This block does the *naming* work. Students have the experience; now they articulate what it means. The instructor's role is to facilitate connections between student observations and course concepts, not to lecture.

**Opening (2–3 min):**
"You've now done the same task twice with different preparation. Let's talk about what happened."

**Structured discussion (18–20 min):**

Move through these question clusters. Don't force all of them—follow the energy in the room—but aim to hit at least the first three:

**Cluster 1: What changed? (5 min)**
- "What was different between Round 1 and Round 2?"
- "Where did the spec make the biggest difference?"
- "Did anyone's Round 2 output actually get *worse* in some way? What happened?"

Expected observations: Structure improved. Tone was more appropriate. Arguments were more focused. Evidence was... still a problem. "It sounded more like what I meant but it still made things up."

**Cluster 2: What didn't the spec fix? (5 min)**
- "What problems persisted even with a good spec?"
- "What can't a spec solve? Why?"

This is where the epistemological limit surfaces. The AI doesn't *know* anything—it can't verify sources, supply real evidence, or engage genuine counterarguments from the discourse. A good spec improves structure and intention but can't solve the knowledge problem. This is the limit of specification and the beginning of the argument for why human intellectual labor (reading, research, judgment) can't be delegated.

**Cluster 3: The cheating question (5 min)**
- "If you had 20 minutes and needed 2,000 words of polished academic prose for a grade, and you could use AI however you wanted—how would you do it? Walk me through your process step by step."

Let students describe their process. Write key steps on the board. They will describe: break the task into sections, write a spec for each section, run the AI, check the output against the spec, fix what's wrong, run it again with a better spec, assemble the pieces.

Then name it: "You just described a writing process. Break into components. Specify what each component should accomplish. Draft. Evaluate against the spec. Revise. Iterate. That's what good writers do—with or without AI. The AI made it visible by forcing you to *externalize* what's usually implicit."

**Cluster 4: Specs are everywhere (3–5 min)**
- "Where else in this course have you been working with specifications?"
- If needed, prompt: "What does the top of every fragment prompt look like? What does an Eli Review task ask you to check for?"

Students should begin to see: the CTSG pattern on assignment sheets is a specification. The Eli Review criteria are specifications. The evaluation rubrics are specifications. Specs aren't a special AI technique—they're a fundamental practice for making intentions explicit. The AI just made the practice *visible* because you had to write the spec down.

**Closing (2 min):**
"Starting next block, you're going to write a full Spec Document for a piece you want to develop. You've just experienced—in miniature—why that matters and what it does. The spec is where the hard work happens. The writing that follows is execution."

Bridge to the Spec Document assignment.

---

### Week 6, Block 6: Optional Reflection (concurrent with other dev log work)

The optional reflection fragment prompt is embedded in the student-facing document. Students who complete it will produce a fragment connecting the spec test experience to their broader writing process. By this point they've had Round 1 (W5B4), annotation homework, Round 2 (W6B1), the debrief (W6B2), Eli Review on Spec Documents (W6B3), and revision (W6B4)—so the reflection draws on a rich set of connections.

No special facilitation required. Students working on dev log updates or reflective writing during this block can choose to complete this prompt or continue other work.

---

## Connections to Course Sequence

### Preceding Context

By Week 5, students have:
- Produced 15–20 fragments (including literacy narrative, source responses, reading reactions)
- Encountered the CTSG pattern on every assignment sheet and fragment prompt
- Completed their first graded Eli Review cycle (W5B5–B6), practicing criterion-based evaluation
- Been introduced to the automation-for-routing-not-invention framework (earlier discussions, Kirschenbaum)
- Studied rhetoric with Downs, sufficient to identify arguable claims

The activity builds on all of this without requiring new conceptual introduction—it asks students to *use* what they already know and then *name* what they did.

### The Eli Review Timing Gift

The first graded Eli Review cycle (W5B5–B6) falls between Round 1 and Round 2. In that cycle, students apply Eli criteria to evaluate a peer's Literacy Narrative draft—criteria that are themselves specifications for what the text should accomplish. When students return for Round 2, they've just practiced the evaluative move of "does this text meet these requirements?" The W6B2 debrief can make this connection explicit: "You used criteria to evaluate your peer's work; you used a spec to direct the AI's work. Both are the same intellectual move."

### Following Context

The activity directly feeds the **Spec Document assignment** (W6B2–B6 and beyond), which asks students to write a full specification for a piece they want to develop. The spec test provides experiential motivation: students know *why* specs matter because they've seen the difference specification makes. They've also practiced spec-writing at micro-scale (5 minutes) and can now extend that practice to assignment scale.

The **Constraint Audit** (Week 7) then asks students to examine how constraints operate in a text—a second-order analysis that builds on the first-order experience of imposing constraints via specification.

### Week 6 Reading Cluster

Borges ("The Library of Babel"), Quine, libraryofbabel.info, and Shelley Jackson are assigned for Week 6. Borges's library contains every possible text but is navigable only with a catalog—a specification for what you're looking for. The spec test enacts this: an AI can produce indefinite text, but production without specification is useless. This connection can be drawn in the debrief ("You experienced the Library of Babel problem this week") or left for students to discover, depending on how the Borges discussion develops.

---

## What to Watch For

### Productive Outcomes
- Students who were already good prompters being asked to articulate their implicit spec-writing in course vocabulary
- Pair-share conversations that move from "this is bad" to "here's specifically what's wrong and what would fix it"
- Students who connect the CTSG pattern to specification without being prompted
- The "aha" moment when students realize the spec is the hard work and the writing is the easy part

### Potential Problems
- **Round 1 output that's genuinely good.** Some claims are sharp enough to function as mini-specs. If a student's Round 1 output is surprisingly competent, use it diagnostically: "What about your claim made this work? What did the AI infer from your claim alone?" This is the "claim itself is a specification" insight.
- **Round 2 specs that are too vague.** If students haven't internalized the CTSG pattern or haven't done the annotation homework carefully, their specs may not be much better than no spec. The pair-share should surface this: "Your spec said 'use good evidence' but didn't name what evidence. The AI interpreted that however it wanted."
- **Students who resist the exercise as pointless.** "I already know AI can't write my paper." Redirect: "This isn't about whether AI can write your paper. It's about what the spec does. What did you learn about specification from this?"
- **Different LLMs producing different results.** Standardizing on one tool eliminates this variable. If students use the wrong tool or forget incognito mode, note it but don't derail the activity—the comparison is still useful.
- **Device/access issues.** Have a plan for students without devices. Pair them with a partner and have them contribute to spec-writing and evaluation verbally. The intellectual work doesn't require individual screen access.

---

## Assessment Notes

This activity generates **two graded fragments** (Round 1 output and Round 2 output + spec) that count toward the generative writing component (14 × 10 pts). The homework annotation counts as a dev log entry. The optional reflection is an additional fragment if completed.

Assessment criteria for the fragments should be **completion-based**, not quality-based. The point is the experience and the diagnosis, not the quality of the AI output (which the student doesn't control) or the sophistication of the spec (which they're learning). Did the student participate in both rounds, save both outputs, write the annotations, include the spec? That's sufficient.

---

## Evidence to Collect

For future revision of this activity and for potential publication:
- Sample specs from Round 2 (anonymized) showing range of specificity
- Student comparison notes (Round 1 vs. Round 2)
- Dev log annotations showing diagnostic reading quality
- Discussion notes from W6B2 debrief, especially the "how would you cheat well" responses
- Any optional reflection fragments, which may contain metacognitive insights about specification
- Student evaluations or informal feedback about the activity

---

## Revision Notes

*Placeholder for post-pilot adjustments. After running this activity once, note:*
- Did the timing work? Where was it too tight?
- Did the homework annotation adequately prime the spec-writing?
- Was the session gap (W5B4 → W6B1) productive or disruptive?
- What did the debrief reveal that should change the facilitation?
- Did the LLM choice affect outcomes?
- How did the activity connect to the Spec Document assignment in practice?

---

**Content**: [[ai-spec-test-course-v101#Overview|Student-facing materials]]
