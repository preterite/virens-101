---
created: 2025-01-25
updated: 2026-02-16
type: kairos-webtext-planning
track: planning
article-section: meta
status: spec-locked
---

# Easter Egg Design

## QUANTITATION Puzzle

### Concept

The 12 nexus tree pages spell Q-U-A-N-T-I-T-A-T-I-O-N when visited in sequence. The puzzle enacts the webtext's argument: constraint sequencing and textual accumulation produce meaning that couldn't emerge from random access alone. No instructions, no progress bar, no gamification UI — the letters simply appear or they don't.

### Sequence Map

| Position | Letter | Tree | Page |
|----------|--------|------|------|
| 1 | Q | Quercus | quercus.html |
| 2 | U | Ulmus | ulmus.html |
| 3 | A | Alnus | alnus.html |
| 4 | N | Nerium | nerium.html |
| 5 | T | Tsuga | tsuga.html |
| 6 | I | Ilex | ilex.html |
| 7 | T | Taxus | taxus.html |
| 8 | A | Acer | acer.html |
| 9 | T | Thuja | thuja.html |
| 10 | I | Illicium | illicium.html |
| 11 | O | Olea | olea.html |
| 12 | N | Nyssa | nyssa.html |

### Mechanism — LOCKED

**localStorage tracking.** On each tree page load, store that tree's letter/position. On every non-vault, non-init page, read the stored object and render accumulated letters in sequence order.

**Critical constraint:** Letters display only in order. Visiting Nerium (N, position 4) before Alnus (A, position 3) does NOT display the N — the tracker shows only the contiguous sequence from Q. This enforces the project's argument about sequence mattering.

### Tracker Placement — LOCKED

**Location:** Lower-right nav column, just above the horizontal rule that precedes the Kairos 29.2 / Spring 2026 / Michael Edwards / WSU footer block.

**Typography:** Same face, size, and weight as the footer meta text (Work Sans, `--fs-meta`, weight 600). Color: page's `--primary` (highlight color). ALL CAPS. Left-aligned. Letter-spacing: 0.12em.

**Design intent:** The tracker reads as page furniture, not as game UI. Someone not looking for it registers it as a design element. Someone who IS looking recognizes the letters accruing.

### Animation Spec — LOCKED

**New letter fade-in:** When a page is first visited and its letter is the next in sequence, that letter fades in individually (opacity 0→1 over ~0.8s ease-in). This creates the moment of recognition that seeds curiosity.

**Color pulse on new letter:** After fade-in, the newly revealed letter pulses once — briefly brightening and gaining a subtle glow before settling to the standard `--primary` color. One cycle, ~1.6s, CSS `ease-out`. No repeating.

**Completion HR flash:** When the final N (Nyssa, position 12) fades in, the horizontal rule below the tracker receives a left-to-right gradient flash. The flash is a narrow band (~40% rule width) that sweeps across: `black → var(--primary) → white → var(--primary) → black`, so the white core travels over the dark rule with accent-colored edges. Sub-one-second sweep (0.85s ease-in-out), single pass, no repeat. This is the only moment that acknowledges completion at the UI level.

**Acknowledgements reveal:** `acknowledgments.html` link fades in below the Contributing button (same typographic treatment as Contributing) when TWO conditions are met: (1) all 12 letters present, AND (2) the footer area is in the viewport (Intersection Observer). Fade: opacity 0→1 over 1.8s ease-in. No sound, no particles, no color change beyond the link appearing. It should feel like *discovery* — the link was always structurally there, just not visible.

### Solve Choreography Timing — LOCKED

The full solve sequence from trigger (visiting the 12th page) to completion:

| Time | Event |
|------|-------|
| 0–800ms | Final N fades in (opacity 0→1, 0.8s ease-in) |
| 300ms | Color pulse begins on N (overlaps fade, 1.6s ease-out) |
| 1000ms | HR gradient flash fires (0.85s ease-in-out sweep) |
| 2000ms | Acknowledgements link begins 1.8s fade-in |
| ~3800ms | Acknowledgements fully visible |

Each stage has a clean beat of separation. Total choreography ~3.8 seconds — unhurried, each moment distinct. The Acknowledgements fade-in matches the pace of a slow fade-out: emergence, not announcement.

### Accessibility

**`prefers-reduced-motion`:** All animations collapse to instant state changes (opacity snaps to 1, no pulse, no flash). The puzzle still works; the choreography is skipped.

**`aria-label`:** Tracker container gets `aria-label="Reading progress"`.

**Direct URL access:** `acknowledgments.html` exists as a valid page reachable by direct URL. It is not linked from navigation unless the puzzle is solved, but anyone who finds the URL (through page source, sharing, or guessing) can access it. The puzzle gates discoverability, not access.

### Implementation Estimate

~60-80 lines vanilla JavaScript, no dependencies. CSS additions for animations are minimal (keyframes + transition classes). Fits within existing template system and build pipeline.

**JS responsibilities:**
1. On tree page load: write letter/position to localStorage
2. On any non-vault/non-init page load: read localStorage, render contiguous sequence
3. Intersection Observer on footer for Acknowledgements reveal
4. Check `prefers-reduced-motion` and skip animations accordingly

**What the puzzle does NOT include (by design):**
- No instructions or help text
- No progress indicators ("3 of 12")
- No tooltips
- No hints
- No congratulatory messaging

### Clue Design (TBD)

Each tree page may contain a subtle hint to its position in sequence. Design TBD — this is enrichment, not load-bearing.

---

## Guestbook (DEFERRED)

### Implementation Options

1. **GitHub Issues**: Structured, version-controlled
2. **Utterances**: GitHub Issues-backed comments
3. **Static form**: Collected separately

### Content

Readers can leave:
- Reading path taken
- Discoveries made
- Questions raised

---

## Acknowledgments Page

Special acknowledgments page accessible via puzzle completion or direct URL:
- AI collaboration disclosure (Claude)
- Personal acknowledgments
- Development process notes
- The page exists whether or not the reader solved the puzzle; the puzzle gates the link, not the content
