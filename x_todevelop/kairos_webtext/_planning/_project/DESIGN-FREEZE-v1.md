---
created: 2026-02-15 15:37
type: planning-document
status: current
project: virens101-kairos-webtext
tags: [design-freeze, planning-document]
title: Design Freeze v1
aliases: [Design Freeze v1]
linter-yaml-title-alias: Design Freeze v1
modified: 2026-02-15 15:45
---

# Design Freeze v1

**Date:** 2026-02-15<br/>
**Scope:** Visual design system, font stack, canonical templates, CSS architecture<br/>
**Status:** LOCKED — changes require documented rationale

---

## 1. Canonical Template Set

Six HTML templates constitute the design source of truth. All other mockups, explorations, and earlier iterations are archived.

| Template | Track | Floating Number | CSS File |
|----------|-------|-----------------|----------|
| `student-track.html` | Student (Grant) | REMOVED | `student-brutalist.css` |
| `designer-track.html` | Designer (Vera) | REMOVED | `designer-brutalist.css` |
| `nexus-track.html` | Nexus | REMOVED | `nexus-brutalist.css` |
| `apparatus-track.html` | Apparatus | REMOVED | `apparatus-brutalist.css` |
| `init-B-refined.html` | Init/Landing | n/a | `index-init.css` (extracted) |
| `index-alt.html` | Index | TBD | TBD |

Shared interaction script: `brutalist-interactions.js`<br/>
Apparatus supplement: inline `<script>` in `apparatus-track.html`

### Notes
- `init-B-refined.html` becomes `index.html` in production (Kairos convention). Its CSS is extracted from inline to `index-init.css`.
- `index-alt.html` is the Nabokovian two-column index. Its CSS needs are minimal and may be handled by `common.css` alone or a lightweight `index-alt.css`. TBD when content is drafted.
- The `.floating-number` decorative background element is removed from all four core track templates. The CSS rule remains in `common.css` with `display: none` for safety; the HTML elements are deleted from templates.

---

## 2. Font System

Five self-hosted variable WOFF2 fonts. No Google Fonts CDN links in production.

| Font | Role | Axes | Tracks Used |
|------|------|------|-------------|
| Fraunces | Display headings | wght 600–900, opsz 9–144 | Student, Nexus, Init |
| Work Sans | Body text (sans) | wght 100–800 | Designer, Nexus, Init, Apparatus (nav status) |
| Bitter | Body text (serif) | wght 400–700 | Student, **Apparatus** |
| Outfit | Display headings | wght 700–900 | Designer |
| Martian Mono | Monospace display/labels | wght 100–800, wdth 75%–112.5% | Apparatus |

### Font Changes from Pre-Freeze State
- **Added:** Martian Mono (apparatus track monospace — load-bearing for terminal aesthetic)
- **Removed:** Zilla Slab (apparatus body text — replaced by Bitter to reduce font count)
- **Total:** 5 fonts (was 4 + 2 unself-hosted = 6 logical fonts; now 5 self-hosted)

### @font-face Declarations (for common.css)

```css
/* === FONT DECLARATIONS (self-hosted, no CDN) === */

@font-face {
  font-family: 'Fraunces';
  font-style: normal;
  font-weight: 600 900;
  font-display: swap;
  src: url('../fonts/fraunces.woff2') format('woff2');
}

@font-face {
  font-family: 'Work Sans';
  font-style: normal;
  font-weight: 100 800;
  font-display: swap;
  src: url('../fonts/worksans.woff2') format('woff2');
}

@font-face {
  font-family: 'Bitter';
  font-style: normal;
  font-weight: 400 700;
  font-display: swap;
  src: url('../fonts/bitter.woff2') format('woff2');
}

@font-face {
  font-family: 'Outfit';
  font-style: normal;
  font-weight: 700 900;
  font-display: swap;
  src: url('../fonts/outfit.woff2') format('woff2');
}

@font-face {
  font-family: 'Martian Mono';
  font-style: normal;
  font-weight: 100 800;
  font-stretch: 75% 112.5%;
  font-display: swap;
  src: url('../fonts/martian-mono.woff2') format('woff2');
}
```

### Font Acquisition
- Fraunces, Work Sans, Bitter, Outfit: already in `_design/assets/fonts/`
- Martian Mono: download variable WOFF2 from GitHub releases at `https://github.com/evilmartians/mono/releases/tag/v1.1.0` (Assets section) or via google-webfonts-helper at `https://gwfh.mranftl.com/fonts/martian-mono?subsets=latin`
- Saved as `_design/assets/fonts/martian-mono.woff2` ✓

---

## 3. Color Palettes (Locked)

### Student Track — "Spicy Sundae"
| Token | Value | Role |
|-------|-------|------|
| `--primary` | `#B8631F` | Deeper caramel |
| `--primary-light` | `#D98C3D` | Lighter caramel |
| `--secondary` | `#E8A317` | Honey gold |
| `--accent` | `#8B4513` | Saddle brown (darkest) |
| `--background` | `#FFFDF8` | Neutral warm white |
| `--background-alt` | `#FFF5E6` | Deeper vanilla |
| `--text` | `#3D2914` | Dark warm brown |
| `--text-light` | `#5C4023` | Medium brown |

### Designer Track — "Menthol Steel"
| Token | Value | Role |
|-------|-------|------|
| `--primary` | `#006B6F` | Darker saturated teal |
| `--primary-light` | `#00A0A6` | Brighter teal |
| `--secondary` | `#5FB3B3` | Menthol |
| `--accent` | `#004D4F` | Deep teal (darkest) |
| `--background` | `#F5F8F9` | Warmer cool off-white |
| `--background-alt` | `#E8F4F5` | Cooler gray |
| `--text` | `#1A2F3A` | Dark steel |
| `--text-light` | `#3D5666` | Medium steel |

### Nexus Track — "Maximum Contrast"
| Token | Value | Role |
|-------|-------|------|
| `--primary` | `#2E9E2E` | Bright forest green |
| `--primary-dark` | `#1F7A1F` | Darker green |
| `--black` | `#000000` | Black |
| `--white` | `#FFFFFF` | White |
| `--background` | `#F8F8F8` | Softer white |
| `--background-alt` | `#FFFFFF` | Pure white |
| `--text` | `#1A1A1A` | Near-black |
| `--text-light` | `#4A4A4A` | Dark gray |

### Apparatus Track — "Formwork"
| Token | Value | Role |
|-------|-------|------|
| `--primary` | `#8B3A62` | Warm plum |
| `--primary-dark` | `#6E2D4E` | Deeper plum |
| `--concrete-dark` | `#2E2B28` | Wet concrete near-black |
| `--concrete-mid` | `#6B6560` | Dried concrete |
| `--concrete-light` | `#9C948B` | Aggregate |
| `--background` | `#EDEAE6` | Cured concrete |
| `--background-alt` | `#E0DCD6` | Darker pour |
| `--background-inset` | `#D6D2CC` | Recessed panels |
| `--text` | `#2E2B28` | Primary text |
| `--text-light` | `#6B6560` | Secondary text |

### Init/Landing Page
| Token | Value | Role |
|-------|-------|------|
| `--student` | `#B8631F` | Ghost layer |
| `--designer` | `#006B6F` | Ghost layer |
| `--nexus` | `#2E9E2E` | Ghost layer + env link border |
| `--vault` | `#8B3A62` | Secondary link border |

---

## 4. CSS Architecture

### Production File Structure

```
_design/
  assets/
    css/
      common.css          # @font-face, reset, layout, shared components
      student.css          # Student track overrides (palette + fonts)
      designer.css         # Designer track overrides
      nexus.css            # Nexus track overrides
      apparatus.css        # Apparatus track overrides (+ unique terminal components); covers all supporting/infrastructure pages
      index-init.css       # Init/landing page (extracted from inline)
      index-alt.css        # Nabokovian index (if needed; TBD)
    fonts/
      fraunces.woff2
      worksans.woff2
      bitter.woff2
      outfit.woff2
      martian-mono.woff2   # ACQUIRED 2026-02-15
```

### CSS Loading Pattern

Every page loads `common.css` first, then its track-specific CSS:

```html
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/student.css">
```

The init/landing page loads only its own CSS (self-contained design):

```html
<link rel="stylesheet" href="css/index-init.css">
```

### What Lives Where

**common.css:** @font-face declarations, CSS reset, layout tokens (`:root` custom properties), structural layout (tie sidebar, header, content-nav-row, right-nav), base typography (h1–h3, p, lead, lists, blockquotes), bold-box, code/pre, figures, nav components, action buttons, nav footer, progress bar, accessibility (prefers-reduced-motion, skip link), responsive breakpoints.

**Track CSS files:** `:root` palette overrides, `--font-display` and `--font-body` overrides, track-specific color assignments (e.g. `article h1 { color: var(--primary); }` for student vs `color: var(--black);` for nexus), track-specific typographic refinements (letter-spacing, weight adjustments), any unique components (apparatus: `.terminal-meta`, `.prompt-label`, `.spec-list`, `.inset-box`, `.status-line`, `.cursor-blink`).

### Apparatus Bitter Swap

In `apparatus-brutalist.css`, all selectors currently using `font-family: 'Zilla Slab'` swap to `font-family: 'Bitter'`:
- `body`
- `article p`
- `.bold-box p`
- `.content-list li`
- `.spec-list li`
- `.inset-box` (comment text only; `.path` stays Martian Mono)

All Martian Mono selectors remain unchanged.

---

## 5. Removed Elements

### Floating Background Numbers
The `.floating-number` decorative element (large transparent numbers like "01", "02", "∴", "//") is removed from all four core track templates. Rationale: no longer helpful; visual noise that doesn't serve navigation or orientation.

**Action:**
- Delete `<div class="floating-number">...</div>` from student, designer, nexus, apparatus HTML templates
- In `common.css`, set `.floating-number { display: none; }` (defensive; prevents orphaned HTML from rendering if any page wasn't updated)

---

## 6. Archive Plan

Move to `_design/_archived/`:

```
# From _design/css/ (root level — superseded by working_mockups/)
mockup1.html
mockup2.html
mockup3.html
student-track.css        # old version
designer-track.css       # old version
nexus-synthesis.css      # old version
brutalist-interactions.js  # old version (root level copy)

# From _design/css/working_mockups/ (explorations, not canonical)
bitmap-cursor-refinement.html
init-ghost-animation.html
init-splash-exploration.html
unix-heading-prefix-exploration.html
```

**Keep in working_mockups/ (canonical):**
- `student-track.html` + `student-brutalist.css`
- `designer-track.html` + `designer-brutalist.css`
- `nexus-track.html` + `nexus-brutalist.css`
- `apparatus-track.html` + `apparatus-brutalist.css`
- `init-B-refined.html`
- `brutalist-interactions.js`
- `blinds.png` (init background tile)
- `necksplash.png`, `pinstripe.png` (if used)

---

## 7. Execution Checklist

- [x] Acquire Martian Mono WOFF2 → saved as `_design/assets/fonts/martian-mono.woff2`
- [x] Add Martian Mono `@font-face` to `common.css`
- [x] Remove `.floating-number` HTML from all four track templates
- [x] Set `.floating-number { display: none; }` in `common.css`
- [x] Swap Zilla Slab → Bitter in `apparatus-brutalist.css`
- [x] Remove Google Fonts `<link>` from all templates (replace with `common.css` + track CSS)
- [x] Extract `init-B-refined.html` inline CSS → `index-init.css`
- [x] Rename `_design/assets/css/init.css` → `index-init.css`
- [x] Create `_design/_archived/` directory
- [x] Move superseded files to `_archived/`
- [x] Reconcile `common.css` @font-face with the five-font system
- [x] Reconcile track CSS files with mockup CSS (mockups are source of truth)
- [x] Update `page-manifest.txt` — renamed supporting → apparatus across manifest, build script, and CSS
- [x] Test all six templates with self-hosted fonts (no CDN)
- [ ] Commit with message: `design-freeze-v1: lock visual system, 5-font stack, archive explorations`
