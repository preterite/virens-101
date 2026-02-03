---
created: 2026-02-03
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
supersedes: design-visual-v3.2.md
scope: vault navigation via Quartz
---

# Vault Navigation Design v4.0

Decisions for the Quartz-hosted vault pages. Covers only the vault experience; merge with main visual spec for full site design.

## "Network Graph" Button

The button is a **portal into the vault**, not a link to a graph view. Each webtext page (scene, nexus page) hardcodes a link to its nearest corresponding vault note. The graph appears because every vault page includes a local graph in its layout. Reader navigates within the vault via graph nodes and SPA routing; returns to webtext via Return button.

Implementation: simple URL mapping per webtext page. No dynamic resolution.

## Layout

**`pageBody`**: Vault note content. Work Sans, light styling, color accents derived from frontmatter `track` field.

**`right`**: Local graph (larger than default, `depth: 2`) + bridge links + node metadata.

**`left`** (optional): Condensed node index — list-style navigator showing nearby nodes with color dots and titles.

**`beforeBody`**: Breadcrumbs (Quartz built-in).

No tie sidebar on vault pages. No sliding preview panel.

## Navigation

**Breadcrumbs** — folder hierarchy orientation within the vault ("where am I in the structure?"). Quartz stock component, placed in `beforeBody`.

**Return button** — portal back to webtext ("how do I get back to authored content?"). Top of `right` panel, solid plum button: "← Return to [page name]." Stores referrer via `sessionStorage`; degrades gracefully when reader arrived directly.

**Popover previews** — Quartz built-in Wikipedia-style hover previews on internal links. May reduce or eliminate need for additional preview UI.

## Typography

Work Sans throughout. Weight variation for hierarchy; no font variation.

| Element | Weight | Size |
|---------|--------|------|
| Body text | 400 | 1.05rem, line-height 1.7 |
| h1 | 700 | 1.8rem |
| h2 | 600 | 1.4rem |
| h3 | 600 | 1.1rem |
| Graph node labels | 500 | via `fontSize` config |
| Metadata keys | 500 | 0.9rem, plum accent |
| Nav links | 500 | — |

Headers deliberately smaller/lighter than webtext pages, signaling "working material."

## Quartz Theme Colors

For `quartz.config.ts`:

| Token | Hex | Role |
|-------|-----|------|
| `light` | #FAFAF8 | Background (slightly warm white) |
| `lightgray` | #E8E5E0 | Borders |
| `gray` | #9C948B | Graph links |
| `darkgray` | #2E2B28 | Body text |
| `dark` | #2E2B28 | Headers |
| `secondary` | #8B3A62 | Plum — current graph node, links |
| `tertiary` | #6E2D4E | Deep plum — visited nodes, hover |
| `highlight` | rgba(139, 58, 98, 0.1) | Plum 10% — internal link backgrounds |

Individual graph nodes override these defaults via custom script, colored by frontmatter `track` value (caramel / teal / green / plum). Plum is the fallback for untagged nodes.

## Custom Development Required

| Component | What | Effort |
|-----------|------|--------|
| Color-coded graph nodes | Modify `graph.inline.ts` to read frontmatter `track`, assign fill color per palette | Most important custom piece |
| Bridge links | New component reading frontmatter `bridge` field, rendering in `right` panel | Simple |
| Return button | New component using `sessionStorage` for referrer state | Simple |
| Node metadata display | New component pulling YAML frontmatter, apparatus-style rendering | Moderate |

## Stock Quartz (Config Only)

- Local graph with configurable depth, zoom, drag, labels
- Custom CSS via `custom.scss`
- Breadcrumbs
- Popover previews
- SPA routing
- Suppress tie via `ConditionalRender`

## Build Approach

**Phase 1**: Vault in Quartz with local graph, color-coded nodes, bridge links, return button, breadcrumbs, light styling. Test navigation.

**Phase 2** (if needed): Additional preview UI based on Phase 1 experience. Popover previews may prove sufficient.
