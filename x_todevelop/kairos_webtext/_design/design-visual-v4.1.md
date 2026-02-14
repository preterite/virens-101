---
created: 2026-02-03 06:50
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
supersedes: design-visual-v4.0.md
scope: complete visual design system
title: Visual Design Specification v4.1
aliases: [Visual Design Specification v4.1]
linter-yaml-title-alias: Visual Design Specification v4.1
modified: 2026-02-12 00:04
---

# Visual Design Specification v4.1

Complete design system for VIRENS 101 Kairos webtext, covering both authored webtext pages and Quartz-hosted vault navigation.

---

## Design Philosophy

**Editorial Brutalism**: Chunky, high-contrast design vocabulary that communicates intentional historical situatedness. Heavy font weights (700-900), thick borders (4-8px), bold boxes, geometric clarity. The design feels deliberately grounded in editorial design history rather than pursuing timeless neutrality or contemporary minimalism. No motion blur effects, no parallax animations—static decorative elements only.

**Dual System**: Authored webtext (three narrative tracks) + explorable vault (research apparatus). Webtext uses brutalist aesthetic; vault uses lighter "working material" styling to signal shift from authored argument to documentary infrastructure.

---

## Four Color Palettes

### Student Track (Warm)
**Spicy Sundae** — caramel, honey, saddle brown

| Token | Hex | Usage |
|-------|-----|-------|
| `primary` | #B8631F | Deep caramel — main headers, borders, nav backgrounds |
| `primary-light` | #D98C3D | Lighter caramel — accents |
| `secondary` | #E8A317 | Honey gold — highlights, dividing lines |
| `accent` | #8B4513 | Saddle brown — darkest elements, header bar |
| `background` | #FFFDF8 | Neutral warm white |
| `background-alt` | #FFF5E6 | Deeper vanilla — nav, boxes |
| `text` | #3D2914 | Dark warm brown |
| `text-light` | #5C4023 | Medium brown |

### Designer Track (Cool)
**Menthol Steel** — teal, menthol, deep ocean

| Token | Hex | Usage |
|-------|-----|-------|
| `primary` | #006B6F | Darker saturated teal — headers, borders, nav |
| `primary-light` | #00A0A6 | Brighter teal — accents |
| `secondary` | #5FB3B3 | Menthol — highlights, dividers |
| `accent` | #004D4F | Deep teal — darkest elements, header bar |
| `background` | #F5F8F9 | Warmer cool off-white |
| `background-alt` | #E8F4F5 | Cooler gray — nav, boxes |
| `text` | #1A2F3A | Dark steel |
| `text-light` | #3D5666 | Medium steel |

### Nexus Track (Monochrome)
**Black/White/Green** — maximum contrast convergence

| Token | Hex | Usage |
|-------|-----|-------|
| `primary` | #2E9E2E | Bright forest green — accents |
| `primary-dark` | #1F7A1F | Darker green — gradations |
| `black` | #000000 | Headers, borders, nav backgrounds |
| `white` | #FFFFFF | Pure white for contrast |
| `background` | #F8F8F8 | Softer white (less eye strain) |
| `background-alt` | #FFFFFF | Pure white — nav, boxes |
| `text` | #1A1A1A | Near-black |
| `text-light` | #4A4A4A | Dark gray |

### Vault (Plum)
**Research Apparatus** — for Quartz-hosted vault pages only

| Token | Hex | Usage |
|-------|-----|-------|
| `secondary` | #8B3A62 | Plum — current graph node, links, return button |
| `tertiary` | #6E2D4E | Deep plum — visited nodes, hover states |
| `highlight` | rgba(139,58,98,0.1) | Plum 10% — internal link backgrounds |
| `light` | #FAFAF8 | Background (slightly warm white) |
| `lightgray` | #E8E5E0 | Borders |
| `gray` | #9C948B | Graph connection lines |
| `darkgray` | #2E2B28 | Body text |
| `dark` | #2E2B28 | Headers |

**Note**: Individual graph nodes override vault defaults, colored by frontmatter `track` (caramel/teal/green). Plum is fallback for untagged nodes.

---

## Typography System

### Webtext Pages (Three Tracks)

**Student Track**: Fraunces 600-900 (display) + Bitter 400-600 (body)
- Headers: Fraunces 700-900, chunky dramatic serifs
- Body: Bitter 400-600, slab serif readability
- Nav: Bitter 600-700
- Lists: Bitter with ▬ bullets

**Designer Track**: Outfit 700-900 (display) + Work Sans 400-500 (body)
- Headers: Outfit 700-900, geometric sans precision
- Body: Work Sans 400-500, screen-optimized clarity
- Nav: Work Sans 500-600
- Lists: Work Sans with ▬ bullets

**Nexus Track**: Fraunces 600-900 (headers/nav/lists) + Work Sans 400-500 (body)
- Headers: Fraunces 700-900 (creates visual callback to Student track)
- Body: Work Sans 400-500, clean sans readability
- Nav: Fraunces 600-700
- Lists: Fraunces 600 with ▬ bullets

**Typography Scale** (all tracks):

| Element | Weight | Size | Line Height |
|---------|--------|------|-------------|
| h1 | 900 | 3.5rem | 1.1 |
| h2 | 700 | 2rem | 1.2 |
| h3 | 700 | 1.3rem | 1.3 |
| Body text | 400 | 1.05rem | 1.7 |
| Lead paragraph | 500-600 | 1.15rem | 1.7 |
| Nav links | 500-700 | 0.9-0.95rem | — |
| Action buttons | 700 | 0.95rem | — |
| Footer meta | 600 | 0.85rem | — |

### Vault Pages (Quartz)

**Single font**: Work Sans 400-700 throughout

| Element | Weight | Size | Line Height |
|---------|--------|------|-------------|
| h1 | 700 | 1.8rem | 1.3 |
| h2 | 600 | 1.4rem | 1.4 |
| h3 | 600 | 1.1rem | 1.4 |
| Body text | 400 | 1.05rem | 1.7 |
| Graph labels | 500 | via config | — |
| Metadata keys | 500 | 0.9rem | — |
| Nav links | 500 | — | — |

Headers deliberately **smaller and lighter** than webtext to signal "working material" vs. authored argument.

---

## Webtext Layout Structure

### Core Grid
**3 columns**: Tie sidebar (18.75%, 200-300px) + Content (flexible, max 900px) + Right nav (280px)

**Tie Sidebar**:
- Fixed position, full viewport height
- Necktie image (0x.jpg student, 0y.jpg designer, 0z.jpg nexus)
- 4px border on right matching track primary color
- Provides visual anchor, track identification

**Header Bar**:
- Author name (left): "Mike Edwards" — Work Sans/Bitter 700, 0.9-0.95rem
- Article title (right): "Constraint Structure" — Fraunces/Outfit 900, 1.5rem
- Background: track accent/darkest color
- 6px bottom border in secondary/highlight color
- Spans full width minus tie sidebar

**Content Area**:
- Max 900px readable column
- 3rem horizontal padding
- Floating background number (static, decorative, 10rem, track secondary at 8% opacity)
- All text slides in from left on scroll (80ms stagger)

**Right Nav**:
- Fixed 280px width
- Background: track `background-alt`
- 4px left border in track primary
- Sections (in order):
  1. **Explore** — Network Graph link (portal to vault)
  2. **This Track** — current page active, dark background hovers
  3. **Switch Track** — lighter hovers, italic
  4. **Action buttons** — References, Specification, Contributing
  5. **Footer metadata** — Kairos info, author, institution

### Visual Vocabulary

**Thick Borders**: 
- Major dividers: 6-8px
- Boxes: 4px
- Minor elements: 2-3px

**Bold Boxes**:
- 2rem padding
- 4px solid border in track primary
- `background-alt` fill
- Used for key insights, callouts, definitions

**Unshaded Lists**:
- No bullets (use ▬ character via `::before`)
- 2rem left margin, 2rem left padding on items
- Creates contrast with bold box elements

**Nav Link Behavior**:
- "Explore" and "This Track": Dark background hover (track primary bg, light text, accent left border)
- "Switch Track": Light background hover (track secondary 15% bg, accent text)
- Action buttons: Solid track primary, transforms on hover with box-shadow

---

## Vault Layout Structure (Quartz)

### Page Regions

**`beforeBody`**: Breadcrumbs (Quartz stock) — folder hierarchy orientation

**`pageBody`**: Vault note content — Work Sans, light styling, color accents from frontmatter `track`

**`right`**: Three stacked components
1. **Return button** — solid plum, "← Return to [page name]", `sessionStorage` referrer
2. **Local graph** — larger than default, `depth: 2`, color-coded nodes
3. **Bridge links** — from frontmatter `bridge` field
4. **Node metadata** — apparatus-style YAML display

**`left`** (optional): Condensed node index — list navigator with color dots, nearby node titles

**No tie sidebar** on vault pages. No sliding preview panel.

### Navigation Components

**Network Graph Button** (webtext → vault):
- Hardcoded URL per webtext page to corresponding vault note
- Simple mapping, no dynamic resolution
- Button appears at top of right nav on webtext pages
- Acts as portal into vault, not just visualization

**Return Button** (vault → webtext):
- Top of `right` panel in vault
- Stores `document.referrer` in `sessionStorage`
- Degrades gracefully if reader arrived directly
- Solid plum button: "← Return to [Scene/Nexus name]"

**Breadcrumbs** (vault only):
- Standard Quartz component
- Shows folder path within vault structure
- Answers "where am I?"

**Popover Previews** (vault only):
- Quartz built-in Wikipedia-style hovers
- On all internal wikilinks
- May reduce/eliminate need for additional preview UI

**Graph Navigation**:
- Click nodes to navigate (SPA routing)
- Nodes colored by track: caramel (student), teal (designer), green (nexus), plum (untagged)
- Current node highlighted in secondary plum
- Depth 2 shows immediate context

---

## Animation & Interaction

### Webtext Pages

**Enabled**:
- Top progress bar (4px, track primary, fixed top)
- Staggered fade-in on scroll (80ms delays, `IntersectionObserver`)
- Smooth scroll for anchor links
- Nav active state tracking on scroll
- Action button transforms (translateY -2px, box-shadow on hover)

**Disabled**:
- Parallax floating numbers (removed)
- Header hover shadow effects (removed)
- Mouse-move parallax (removed)
- Any blur or motion effects

**Philosophy**: Static decorative elements, functional animations only. Respects `prefers-reduced-motion`.

### Vault Pages

Stock Quartz behaviors only:
- Graph drag, zoom, pan
- Popover preview on link hover
- SPA routing transitions
- Smooth scroll

---

## Custom Development Requirements

### Webtext

**Minimal**: Webtext uses standard HTML/CSS + lightweight vanilla JS
- Three HTML templates (one per track)
- Three CSS files (track-specific)
- Single shared JS (brutalist-interactions.js)
- Static site generation or simple templating

### Vault (Quartz)

| Component | Function | Effort |
|-----------|----------|--------|
| **Color-coded nodes** | Modify `graph.inline.ts` to read frontmatter `track`, assign fill color | Critical, moderate |
| **Bridge links** | New component reading `bridge` frontmatter, render in `right` | Simple |
| **Return button** | New component with `sessionStorage` state | Simple |
| **Node metadata** | New component pulling YAML, apparatus-style render | Moderate |
| **Suppress tie** | Use `ConditionalRender` to hide tie on vault pages | Trivial |

**Stock Quartz** (config only):
- Local graph (via `graph.inline.ts` + config)
- Custom CSS (`custom.scss`)
- Breadcrumbs
- Popover previews
- SPA routing

---

## Quartz Configuration

### Theme Colors (`quartz.config.ts`)

```typescript
colors: {
  light: "#FAFAF8",        // Background
  lightgray: "#E8E5E0",    // Borders
  gray: "#9C948B",         // Graph links
  darkgray: "#2E2B28",     // Body text
  dark: "#2E2B28",         // Headers
  secondary: "#8B3A62",    // Plum - current node, links
  tertiary: "#6E2D4E",     // Deep plum - visited, hover
  highlight: "rgba(139, 58, 98, 0.1)", // Link backgrounds
}
```

### Graph Configuration

```typescript
graph: {
  localGraph: {
    depth: 2,              // Show 2 hops from current node
    scale: 1.2,            // Larger than default
    repelForce: 0.8,       // Node spacing
    centerForce: 0.3,      // Center pull
    linkDistance: 40,      // Edge length
    fontSize: 0.5,         // Label size
    opacityScale: 1,       // Full opacity labels
    showTags: false,       // Hide tag nodes
  }
}
```

### Custom Node Colors (via modified `graph.inline.ts`)

```typescript
// Pseudocode for color logic
const trackColors = {
  student: "#B8631F",    // Caramel
  designer: "#006B6F",   // Teal
  nexus: "#2E9E2E",      // Green
  default: "#8B3A62",    // Plum
}

// Read frontmatter.track, assign fill
node.style.fill = trackColors[track] || trackColors.default
```

---

## File Structure

### Webtext Pages

```
/_design/css/working_mockups/
  student-track.html
  student-brutalist.css
  designer-track.html
  designer-brutalist.css
  nexus-track.html
  nexus-brutalist.css
  brutalist-interactions.js  (shared)
```

### Vault (Quartz Project)

```
/content/          # Markdown vault notes
/quartz.config.ts  # Theme, graph, components
/quartz.layout.ts  # Page region assignments
/custom.scss       # Additional styling
/components/
  ReturnButton.tsx
  BridgeLinks.tsx
  NodeMetadata.tsx
/graph.inline.ts   # Modified for color-coded nodes
```

---

## Build Phases

### Phase 1: Webtext Mockups (Complete)
- Three track HTML + CSS demonstrating brutalist vocabulary
- Shared JavaScript for interactions
- Static decorative elements, functional animations only
- Ready for content integration

### Phase 2: Vault Foundation
- Quartz installation with custom theme colors
- Modified graph component for color-coded nodes
- Return button, bridge links, breadcrumbs
- Test navigation webtext ↔ vault

### Phase 3: Refinement
- Node metadata display
- Optional left-panel node index
- Performance optimization
- Assess if popover previews suffice or if additional preview UI needed

---

## Design Rationale

**Why brutalism?** Communicates historical situatedness and intentional design choices. Avoids both nostalgic skeuomorphism and bland contemporary minimalism. Chunky borders and heavy weights create visual presence that matches the theoretical weight of the argument.

**Why four color schemes?** Three narrative tracks need distinct identities; vault needs separate visual language to signal infrastructure vs. argument. Track colors create wayfinding; plum signals shift to exploratory mode.

**Why Fraunces on Nexus?** Creates visual callback to Student track (both use Fraunces headers), reinforcing that Nexus pages synthesize Student + Designer perspectives. The font choice itself performs the theoretical move.

**Why lighter vault styling?** Headers 1.8rem vs. 3.5rem, weights 600-700 vs. 700-900. Signals "working material" vs. "authored argument." Reader should feel shift from reading polished prose to examining research infrastructure.

**Why no parallax?** Motion effects distract from content and undermine the grounded, intentional aesthetic. Static decorative numbers provide visual interest without animation. Design should feel solid, not slippery.

---

## Accessibility Notes

- All color combinations meet WCAG AA contrast requirements
- Thick borders provide clear visual structure for low-vision users  
- `prefers-reduced-motion` disables all animations
- Semantic HTML throughout (proper heading hierarchy, landmarks)
- Focus indicators on all interactive elements
- Alt text on decorative tie images
- Graph keyboard navigation via Quartz stock behavior

---

## Next Steps

1. Content integration into three webtext track templates
2. Quartz setup with custom theme and graph modifications
3. Return button + bridge links components
4. URL mapping between webtext pages and vault notes
5. Node metadata apparatus component
6. User testing for vault navigation patterns
7. Performance audit (graph rendering, SPA transitions)
8. Mobile responsive refinements (tie sidebar collapse, nav reflow)

---

**Version**: 4.1<br/>
**Date**: 2026-02-03<br/>
**Status**: Active specification for implementation<br/>
**Supersedes**: design-visual-v4.0.md
