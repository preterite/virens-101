---
created: 2026-02-15
type: session-digest
status: current
project: virens101-kairos-webtext
session-date: 2026-02-15
threads-touched: [vault-implementation, graph-component]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural]
breakthrough-level: [minor]
outputs-created:
  fragments: []
  content-modified:
    - quartz/components/scripts/graph.inline.ts
    - quartz/styles/custom.scss
    - quartz/components/styles/graph.scss
    - quartz.layout.ts
  tracking-docs-modified: []
priority-changes: []
---

# Session Digest: Graph Interaction Refactor — Static Render + Event Architecture

**Date:** 2026-02-15
**Project:** virens101-kairos-webtext (vault implementation)
**Session character:** Deep technical debugging session refactoring the Pixi.js/d3 graph component from physics-based animation to static zoom-and-click, then diagnosing persistent hover failure through multiple architectural approaches.

---

## Executive Summary

- [x] Completed minor CSS polish: search box interior stripped (SVG + placeholder hidden), page category margin adjusted to group with h1
- [x] Reduced graph depth from 2 → 1 in quartz.layout.ts for performance
- [x] Rewrote graph.inline.ts: removed d3-force animation loop, d3-drag, d3-zoom, tweens; replaced with synchronous simulation settlement + static render
- [x] Implemented transparent overlay div pattern to bypass Pixi's pointer-events:none on canvas
- [ ] **UNRESOLVED: Hover illumination not working** — click and zoom functional, but mousemove hit testing not triggering visual updates despite correct code architecture

**Substantive file changes:**

| File | Change Type | Description |
|------|-------------|-------------|
| `graph.inline.ts` | rewritten | Complete rewrite: removed animation loop, tweens, d3-drag, d3-zoom; static render with DOM event listeners on transparent overlay |
| `custom.scss` | updated | Search button: higher-specificity selectors with !important; page category margins |
| `graph.scss` | updated | Added z-index:2 to .global-graph-icon so pop-out button sits above overlay |
| `quartz.layout.ts` | updated | depth: 2→1, drag: true→false |

---

## Architectural Decisions

### 1. Replace physics-based graph with static zoom-and-click

**Decision:** Remove all d3-force animation, d3-drag, d3-zoom, and tween.js from graph interaction. Settle simulation synchronously (300 ticks), render once, update only on user interaction.

**Rationale:** After first click or zoom, d3-zoom's `setPointerCapture()` consumed pointer events before Pixi's hit testing could update hover state. d3-drag's `.subject()` returned undefined, causing silent click failures. The continuous `requestAnimationFrame` animation loop rendered every frame even when settled.

**User requirement:** "I don't need all the physics and fancy springy animations or to be able to drag nodes around — I just want readers to be able to zoom in and out of the graph and go to different places on it."

### 2. d3 removed from interaction entirely

**Decision:** Only d3-force simulation imports remain. All interaction (zoom, pan, hover, click) implemented as plain DOM event listeners. No d3-zoom, d3-drag, d3-select.

**Rationale:** d3-zoom and Pixi's EventSystem both fight for pointer event ownership. Removing d3 from the event chain eliminates the conflict entirely.

### 3. Transparent overlay div for event reception

**Decision:** Instead of attaching mouse listeners to the Pixi canvas (which Pixi forces to `pointer-events: none`), create a transparent `<div>` with `position:absolute;inset:0;z-index:1` on top of the canvas. All mouse listeners attach to this overlay.

**Rationale:** Pixi with `eventMode: "none"` still sets `pointer-events: none` on the canvas CSS. Setting `canvas.style.pointerEvents = "auto"` after init didn't reliably persist. The overlay is outside Pixi's control entirely.

**Implication:** The `.global-graph-icon` (pop-out button) needs `z-index: 2` to sit above the overlay.

### 4. WebGPU → WebGL

**Decision:** Changed Pixi preference from `"webgpu"` to `"webgl"`.

**Rationale:** More reliable for rapid create/destroy cycles during SPA navigation. WebGPU context limits can cause silent failures when old contexts aren't fully released.

---

## Open Questions

- **CRITICAL: Hover still not working.** Click and zoom work via the overlay. The `onMouseMove` handler should be firing, `hitTest()` should find nodes, `hoveredNodeId` should update, and `render()` should repaint with link highlighting. But no visual hover effect appears. Possible causes to investigate:
  - **Build not updating?** The dev server may not be picking up changes to `graph.inline.ts`. Need to verify by adding a `console.log` or checking the browser's served JS.
  - **Overlay blocking canvas rendering?** The overlay sits above the canvas — but it's transparent (`no background`), so the canvas should still be visible. The fact that zoom and click work through the overlay proves events reach our listeners.
  - **`app.renderer.render(stage)` silently failing?** After the initial render, subsequent calls to `render()` in hover handler may not repaint. Could be a Pixi quirk with `autoStart: false` and manual rendering.
  - **Link `gfx.clear()` + restroke not visually updating?** The Graphics objects are children of the stage, which is being re-rendered. But perhaps cleared graphics need a different approach in Pixi v8.
  - **Hit testing coordinate math wrong at default zoom?** At `tk=1, tx=0, ty=0` the transform should be identity. Hit testing works for click (navigation succeeds), so coordinates are correct — but maybe the `!==` comparison with `hoveredNodeId` has a type issue (SimpleSlug vs string).

- **Zoom speed:** User reported zoom "a little too fast" even after reducing factor from 1.1 to 1.05. May need further reduction or deltaY-proportional scaling.

---

## Discarded Directions

- **d3-zoom with mousemove (not pointermove):** Attempted keeping d3-zoom for zoom behavior while using `mousemove` for hover (since d3-zoom captures pointer events but not mouse events). Click and zoom worked but hover still failed — d3-zoom's event interception is more pervasive than just pointer capture.

- **Pixi eventMode "static" with stage "none":** Attempted to get canvas `pointer-events: auto` via Pixi's own event system while disabling internal event processing. Pixi's EventSystem still intercepted DOM events before our listeners.

- **canvas.style.pointerEvents = "auto" override:** Set after Pixi init. Didn't persist reliably — Pixi may reset it, or the value may not take effect after Pixi's initial style application.

---

## Technical Architecture (Current State)

### graph.inline.ts structure:

```
Imports: d3-force only (no d3-zoom, d3-drag, d3-select)
         pixi.js (Text, Graphics, Application, Container)

renderGraph():
  1. Build neighbourhood graph data (unchanged)
  2. Settle d3-force simulation synchronously (300 ticks)
  3. Precompute CSS variables
  4. Init Pixi app (webgl, autoStart:false, eventMode:"none")
  5. Append canvas + transparent overlay div
  6. Build static Graphics objects for nodes, labels, links
  7. Initial app.renderer.render(stage)
  
  Interaction (all on overlay div):
  - render(): synchronous — updates all Pixi object alphas + link colors, calls app.renderer.render()
  - scheduleRender(): rAF-batched render() for continuous events (zoom/pan)
  - hitTest(clientX, clientY): overlay coords → simulation space → closest node
  - onWheel: zoom around cursor (factor 1.05)
  - onMouseDown/onMouseMoveDoc/onMouseUpDoc: pan with totalPanDist tracking
  - onMouseMove: hover hit test → synchronous render() on change
  - onClick: navigate if totalPanDist < 5

  Cleanup: remove all listeners, remove overlay, destroy Pixi app
```

### Interaction model:
- Zoom: wheel on overlay → update tx/ty/tk → scheduleRender()
- Pan: mousedown on overlay → mousemove on document → scheduleRender()  
- Hover: mousemove on overlay → hitTest → render() synchronous
- Click: click on overlay → hitTest → spaNavigate (skip if was pan)

---

## Cross-References

- Prior digest: [[2026-02-15c-d13-sidebar-restructure-implementation]]
- Compaction transcript: `/mnt/transcripts/2026-02-15-12-32-02-vault-graph-simplification-static-render.txt`
- Files modified: `quartz/components/scripts/graph.inline.ts`, `quartz/styles/custom.scss`, `quartz/components/styles/graph.scss`, `quartz.layout.ts`

---

## Flagged Updates

### Completed This Session
- [x] Search box interior stripped (SVG + placeholder hidden)
- [x] Page category indicator margins adjusted
- [x] Graph depth reduced to 1
- [x] Graph rewritten: static render, no animation loop
- [x] Overlay div pattern implemented for event reception
- [x] Pop-out icon z-index fix
- [x] Search selector specificity fix with !important

### Still Pending
- [ ] **Hover illumination not working** — primary blocker, likely build caching or Pixi render issue
- [ ] Verify dev server is serving updated graph.inline.ts (add console.log test)
- [ ] Memory: update punch list status once hover resolved
- [ ] Consider further zoom speed reduction
