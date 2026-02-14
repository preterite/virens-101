---
created: 2026-02-14 04:10
type: session-digest
status: current
project: kairos-virens-101-webtext
session-date: 2026-02-14
threads-touched: [init-page-design, supporting-page-architecture, visual-design-system]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural, generative]
breakthrough-level: minor
outputs-created:
  fragments: []
  content-modified:
    - _design/css/working_mockups/init-B-refined.html
    - _design/css/working_mockups/init-splash-exploration.html
    - _design/css/working_mockups/init-ghost-animation.html
    - _design/css/working_mockups/bitmap-cursor-refinement.html
    - _design/css/working_mockups/unix-heading-prefix-exploration.html
  tracking-docs-modified:
    - _design/design-visual-v4.1.md
    - _design/design-navigation.md
    - _planning/_project/_immediate-tasks.md
priority-changes: []
title: "Session Digest: Init Splash Page Design and Unix Heading Prefix"
aliases: ["Session Digest: Init Splash Page Design and Unix Heading Prefix"]
linter-yaml-title-alias: "Session Digest: Init Splash Page Design and Unix Heading Prefix"
modified: 2026-02-14 04:24
---

# Session Digest: Init Splash Page Design and Unix Heading Prefix

**Date:** 2026-02-14<br/>
**Project:** Kairos VIRENS 101 Webtext<br/>
**Session character:** Visual design session that solved two discrete problems — how to mark Unix-vocabulary headings on supporting pages, and how to design the init/landing splash page. Both solutions locked in through iterative exploration and refinement. The init page design synthesizes broadside typography, CMYK misregistration metaphor, and breathing opacity animation into a splash page unlike anything Kairos has published before.

---

## Executive Summary

**For dashboard "Recent Changes":**
- [x] Init splash page design locked in: dark field, broadside Fraunces 900 title with four-color misregistered ghost layers, breathing opacity animation, pinstripe tile background, bottom-right navigation block
- [x] Unix heading prefix design locked in: 5×7 blinking bitmap cursor at 40% opacity in track primary color, creating three reading layers (decorative mark → terminal cursor → pixel construction)
- [x] design-visual-v4.1.md updated with Init Page section, Unix Heading Prefix section, ghost breathing animation spec, and expanded file structure
- [x] design-navigation.md updated to reflect init as entry point with env as interpretive gate

**Substantive file changes:**

| File | Change Type | Description |
|------|-------------|-------------|
| `init-B-refined.html` | created | Locked-in init splash design with breathing animation |
| `init-splash-exploration.html` | created | Three-variation comparison (Light+Tight, Dark+Wide, Split Register) — archived |
| `init-ghost-animation.html` | created | Drift/breathe/combined animation comparison — archived |
| `bitmap-cursor-refinement.html` | created | Four grid densities (3×5, 5×7, 5×9, 7×11) at multiple scales |
| `unix-heading-prefix-exploration.html` | created | Eight prefix options compared |
| `design-visual-v4.1.md` | updated | Added Init Page, Unix Heading Prefix, and ghost animation sections |
| `design-navigation.md` | updated | Entry points now document init → env architecture |
| `_immediate-tasks.md` | updated | Checked off CSS, init design, heading prefix tasks |

---

## Architectural Decisions

### Init Page Uses Distinct Layout — No Track Template

**Decision:** The init page breaks entirely from the three-column track template. No tie sidebar, no right nav, no header bar. Full-viewport dark field with flexbox column layout, 4rem padding.

**Rationale:** Init exists _before_ any track context. It's the space where the four tracks haven't differentiated yet — the misregistered ghost layers show all four colors overlapping. Using a track template would assign it to a track prematurely.

**Implications:**
- Init is one custom HTML page, not generated from any template
- The dark field (`#0C0C0C` with blinds.png tile) creates strong visual break from all subsequent pages (which use light backgrounds)
- This break is intentional: entering the webtext = crossing a threshold

### Broadside + Superposition Synthesis

**Decision:** Init combines Design Approach #2 (The Broadside — big screamy typography) with Design Approach #4 (The Superposition — misregistered CMYK-style overlays). The title fills the viewport width at display scale; four color-separated ghost layers create vibrating composite.

**Rationale:** The broadside energy gives Kairos something it hasn't seen. The superposition layers do theoretical work — the unified title is visually revealed as four separate perspectives layered together, which is what the webtext's structure actually does (student/designer/nexus/vault views of the same course).

**Alternatives considered:**
- Approach #1 (Boot Sequence): Too terminal-specific, loses academic approachability
- Approach #3 (Threshold): Restraint reads as underdesign, loses brutalist vocabulary
- Pure Broadside without ghosts: Big type without theoretical commitment
- Pure Superposition without broadside scale: Interesting but not screamy enough

### Breathing Opacity (Not Drift) for Ghost Animation

**Decision:** Ghost layers animate opacity only, not position. Each layer breathes on an independent sine wave at a prime-number period (11s, 13s, 17s, 19s) with ±0.12–0.15 amplitude.

**Rationale:** Positional drift (layers sliding left/right) was elegant but created visual conflict with the blinking bitmap cursor on the init label. The cursor's hard on/off blink and the ghosts' soft drift operated in the same visual register — both were "things moving" — and competed. Opacity-only breathing operates in a different register: the cursor blinks mechanically while the colors wax and wane organically. One is digital, one is analog.

**Design physics:** All periods are prime numbers, so the combined pattern takes effectively centuries to exactly repeat. The amplitude is wide enough that the eye catches shifts after a few seconds (colors visibly warming or cooling) without the effect being immediately obvious on page load.

### Init Label Placement — Top-Right, Above Title

**Decision:** The init label sits top-right, right-aligned with the bottom navigation block but spatially separated above the title. It contains the 5×7 blinking bitmap cursor.

**Rationale:** Multiple placements were tested:
- Top-left absolute: Read as page chrome, not metadata
- Inside bottom nav block: Read as a nav element (button among buttons)
- Top-right above title: Reads as page-type indicator. The cursor blinks there while the title breathes below — two different rhythms establishing that this page is alive and waiting.

### 5×7 Bitmap Cursor for Unix Heading Prefix

**Decision:** Supporting page h3 headings (Unix commands like `cat`, `pipe`, `trap`) are prefixed with a 5×7 blinking bitmap cursor in checkerboard pattern at 40% opacity.

**Rationale:** Without a visual marker, Unix command names read as literal English words. The cursor creates three reading layers: (1) comp studies readers see a blinking green decorative mark signaling technology; (2) terminal users immediately recognize a cursor and read headings as commands; (3) close inspection reveals pixel construction — denaturalization of the interface element itself. The 5:7 aspect ratio matches both index card dimensions and classic terminal character cells.

**Grid density selection:** Four options tested (3×5, 5×7, 5×9, 7×11). 5×7 chosen because: odd×odd means all four corners are filled (framing effect); individual pixels remain visible at heading scale (0.5em × 0.92em) without competing with Fraunces 700 letterforms; degrades gracefully at nav scale where finer grids collapse to lighter-toned solid blocks.

**Implementation:** On the env.md page, the character ˘ has been used as a placeholder for bitmap cursors in the headings.

---

## Formulation Candidates

1. **[init-design]** "Init exists before any track context — the misregistered ghost layers show all four colors overlapping in a space where they haven't yet differentiated." — For env page or manifest, explaining navigation architecture.

2. **[visual-design]** "The cursor blinks mechanically while the colors wax and wane organically. One is digital, one is analog." — Possible for spec page discussing design decisions.

3. **[visual-design]** "A printing press with slight vibration — plates that don't quite hold still." — Describes the misregistration effect; possible for design rationale documentation.

---

## Open Questions

- **Tertiary links on init — keep or remove?** Spec, references, contributing, changelog are available from right-nav on every subsequent page. Removing them would make init sparser — title, subtitle, author, env, manifest, index, done. Currently included but flagged as optional. — Urgency: low; Blocking: no; For: init finalization

- **Background tile final choice?** Started with necksplash.png (composite neckties, too jumbled), switched to pinstripe.png (vertical), then blinds.png (horizontal). The horizontal lines work. But should the tile be even more subtle? Currently locked in but worth revisiting during integration testing. — Urgency: low; Blocking: no; For: init finalization
  
  -**Implementation — what to do for blinking cursor placeholders?** On the env.md page, the character ˘ has been used as a placeholder for bitmap cursors in the headings. When does this need to be replaced in webtext production?

---

## Discarded Directions

- **Necksplash.png as full-bleed background**: Composite image of all neckties with gray pixel grid overlay. At 700KB+ and visually jumbled, competed with the title rather than supporting it. The repeating 16×16 tile approach is both lighter (~2.7KB) and cleaner.

- **Positional drift animation**: Each ghost drifting on two sine waves (X and Y). Elegant press-vibration effect but created visual competition with the blinking cursor. Both were "things moving in space" — too much simultaneous motion for a page that should feel still-but-alive.

- **Split Register ghost assignment** (Variation C): CONSTRAINT gets warm ghosts (student + vault), STRUCTURE gets cool ghosts (designer + nexus), mapping the two words to experiential vs. theoretical modes. Too clever for a first-time reader with zero context — the mapping requires knowledge of the webtext's structure to decode.

- **Subtitle/author right-aligned**: Tested during layout iteration. Created a right-side vertical stack (init label → subtitle → author → nav block) that was compositionally interesting but made the title feel disconnected from its subtitle. Left-alignment under the title reads as a tighter typographic unit.

---

## Cross-References

- Prior digest: [[2026-02-12e-scene-week-alignment-audit]]
- Content modified: `_design/css/working_mockups/init-B-refined.html` (locked-in design)
- Tracking docs updated: `design-visual-v4.1.md`, `design-navigation.md`, `_immediate-tasks.md`
- Compaction transcript: `/mnt/transcripts/2026-02-14-11-37-42-kairos-webtext-init-page-design.txt`

---

## Flagged Updates

### Completed This Session
- [x] Init splash page design explored, refined, and locked in
- [x] Unix heading prefix design explored, refined, and locked in
- [x] design-visual-v4.1.md updated with both new sections
- [x] design-navigation.md updated with init entry point
- [x] _immediate-tasks.md items checked off

### Still Pending
- [ ] Integrate init page design into actual content/init.md when Quartz/build system is ready
- [ ] Integrate bitmap cursor prefix into supporting page CSS template
- [ ] Consider removing tertiary links from init for sparser design
- [ ] Background tile (blinds.png) — verify during integration testing
