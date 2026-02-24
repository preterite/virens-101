---
created: 2026-02-22
type: session-digest
status: current
project: kairos-webtext
session-date: 2026-02-22
threads-touched: [visual-design, neckties, build-infrastructure, webtext-architecture]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural, planning]
breakthrough-level: minor
outputs-created:
  fragments: []
  content-modified: []
  tracking-docs-modified: []
priority-changes:
  - {item: "Necktie photography and conversion", from: "🟡", to: "🟢", reason: "All 60 production WebP files created, named, and placed in development asset directory"}
---

# Session Digest: Necktie Image Pipeline — Photography Specs, Conversion, Naming, File Organization

**Date:** 2026-02-22
**Project:** kairos-webtext
**Session character:** Technical implementation session establishing the complete necktie image pipeline from CSS design specs through preprocessing, format conversion, character naming, and file organization. Resulted in 60 production-ready WebP files placed in the webtext development asset directory.

---

## Executive Summary

**For dashboard "Recent Changes":**
- [x] **Init splash background replaced**: blinds.png scanline tile replaced with pure-CSS moiré pattern (two interference grids at -4.75° and -7.25°, centered on -6°). Zero image payload; thematically loaded (textile finishing technique + constraint-system interference). Updated in `index-init.css` and synced to `_build/`
- [x] **Necktie photo dimensions confirmed**: 600×2000px masters (retina coverage at 300px max sidebar), cropped to 600×1600px for production (full retina coverage for laptop viewports, adequate for 1440p desktops)
- [x] **Four-category pattern distribution finalized**: botanical→nexus trees + references (13), geometric→Grant + Vera scenes (12), medallion→frame pages (7), paisley→fragments + remaining /tree/ pages (28–29). Note: references moved from frame to botanical allocation
- [x] **Image preprocessing pipeline established**: median 3×3 filter → resize 600×1600 → WebP q65 with `-sharp_yuv`. Median filter reduces per-fiber noise while preserving pattern edges, yielding ~30% savings over resize-only baseline
- [x] **60 production WebP files created** averaging 189KB each (range 126–245KB), total 11MB. Conversion script saved at `~/Pictures/ties/convert-ties.zsh`
- [x] **Character naming convention applied**: 60 unique names (e.g., `alaric-the-lonely-b.webp`, `octavia-the-hungry-p.webp`) distributed via stride-7 scatter to prevent alphabetical clustering by category
- [x] **File organization architecture decided**: masters stay in `~/Pictures/ties/`; production WebP in `_design/assets/images/neckties/{botanical,geometric,medallion,paisley}/`; build script will flatten to `_build/images/` for publication

**Substantive file changes:**
| File | Change Type | Description |
|------|-------------|-------------|
| `_design/assets/images/neckties/` | created | New directory tree with 60 WebP files across 4 subdirectories |
| `~/Pictures/ties/convert-ties.zsh` | created | Reproducible batch conversion script (median + resize + cwebp) |
| `_design/assets/css/index-init.css` | updated | Replaced blinds.png background with CSS moiré; added z-index stacking for content layers |
| `_build/css/index-init.css` | updated | Synced from _design copy |

**Priority escalations:**
| Item | From | To | Reason |
|------|------|-----|--------|
| Necktie pipeline | 🟡 | 🟢 | Pass 1 complete; Pass 2 (assignment to pages) can proceed when ready |

---

## Architectural Decisions

### 1. WebP over JPEG for Production Neckties

**Decision:** Use WebP (lossy, q65) as the production image format for all necktie sidebar images. No JPEG fallback.

**Rationale:** WebP lossy at q65 yielded roughly 2× better compression than equivalent JPEG on fabric textures. Browser support is universal (Safari 14+, 2020). At ~190KB average per image, each page loads a single tie well under 250KB.

**Alternatives considered:** JPEG at q70 tested at 630–840KB per file — unacceptably large. PNG not tested (wrong format for photographic content).

**Note for Kairos submission:** WebP is Google-maintained and widely adopted, but Kairos's archival infrastructure may still expect JPEG/PNG. Worth a sentence in spec or cover letter noting format choice.

### 2. Median 3×3 Preprocessing Before WebP Encoding

**Decision:** Apply ImageMagick median 3×3 statistical filter to resized images before WebP conversion.

**Rationale:** Fabric texture contains high-frequency per-fiber color noise that the encoder wastes bits on but is imperceptible at 300px display width. Median filter eliminates this noise while preserving pattern edges and color boundaries — unlike Gaussian blur, which softens edges uniformly. Testing showed ~30% file size reduction versus resize-only at identical WebP quality settings. Additionally, the median filter pre-adapts images to WebP's mandatory 4:2:0 chroma subsampling by smoothing fine chroma variation before the encoder downsamples.

**Testing data (botanical-01 at 600×1600):**

| Strategy | Size |
|---|---|
| Baseline (resize only) | 357KB |
| Gaussian 0.4px | 334KB |
| Gaussian 0.6px | 259KB |
| **Median 3×3** | **244KB** |
| Median 3×3 + Gaussian 0.3 | 242KB |
| Median 3×3 @ q60 | 228KB |

Additional Gaussian on top of median yielded only ~2KB savings. Quality reduction from q65 to q60 saved ~15KB but introduced risk.

### 3. 600×1600 Production Dimensions (Down from 600×2000 Masters)

**Decision:** Crop production files from 600×2000 to 600×1600. Keep 600×2000 JPEGs as archival masters.

**Rationale:** Sidebar renders at max 300px CSS width × 100vh. At 2× retina, 600px width covers the max sidebar perfectly. For height: 1600px provides full 2× retina for all laptop viewports (~800px CSS height) and ~1.2× on 1440p monitors. `object-fit: cover` with `object-position: center top` handles any overflow. Fabric texture is the most forgiving content for slight upscaling at the bottom edge. Height reduction from 2000→1600 saved ~20% file size per image.

### 4. Four-Category Pattern Distribution (Revised from Three)

**Decision:** Separate medallion from geometric as a distinct category, producing four pattern→page-type mappings:

| Pattern | Page Type | Count | Rationale |
|---|---|---|---|
| Botanical | Nexus trees + references | 13 | Natural resonance with tree-named pages; references as scholarly apparatus lives in /tree/ |
| Geometric | Grant + Vera scenes | 12 (6 each) | Formal structure with decorative constraint; character-focused narrative |
| Medallion | Frame pages | 6–7 | Distinct register for apparatus; austere aesthetic |
| Paisley | Dev-log stubs + remaining /tree/ | ~29 | Organic complexity; largest pool for largest page category |

**Change from earlier:** References moved from medallion/frame allocation to botanical. Rationale: references lives in `/tree/`, serves the nexus pages, and is scholarly apparatus rather than framing infrastructure.

**Supply vs. demand:** Paisley is tightest (29 needed from 30 available, with 24 primary candidates currently — need to promote some alternates or reduce page count). Acknowledged: acknowledgments page gets paisley despite frame-style visual treatment, which is correct since it lives in `/tree/` and marks end of argument path.

### 5. File Organization: Three-Stage Architecture

**Decision:**
- **Masters** (600×2000 JPEG): `~/Pictures/ties/{botanical,geometric,medallion,paisley}/` — not version-controlled
- **Development** (600×1600 WebP): `_design/assets/images/neckties/{botanical,geometric,medallion,paisley}/` — synced via Syncthing with vault, browsable by category for Pass 2 design decisions
- **Published** (flat): `_build/images/*.webp` — build script flattens subdirectories; filenames encode category via `-b/-g/-m/-p` suffix

**Rationale:** Subdirectory organization needed during assignment phase but not for publication. Masters excluded from version control because git stores every version of every binary. Conversion script (`convert-ties.zsh`) preserved with masters as reproducibility record. Images should be `.gitignore`d if webtext gets git version control.

### 6. Init Splash Background: Moiré Replaces Scanlines

**Decision:** Replace `blinds.png` tiled scanline background on the init splash page with a pure-CSS moiré interference pattern. Two `repeating-linear-gradient` layers at -4.75° and -7.25° (centered on -6°, 2.5° offset) producing interference ripple against `#0C0C0C` background.

**Rationale (visual):** The scanlines worked but read as a CRT cliché. The moiré is visually unique and reads as intentional, especially at the -6° diagonal which creates tension against the rectilinear page layout. The upward-left slope pushes the eye toward the blinking `init` label while the rest of the page design follows down-and-right reading gravity toward the entry links — capturing the tension between orientation and action.

**Rationale (thematic):** Moiré is literally a textile finishing technique (the word comes from fabric), connecting to the necktie visual vocabulary. The visual effect — emergent complexity from two regular constraint systems interacting — is a near-literal thesis statement for the webtext's argument about constraint structure.

**Rationale (technical):** Pure CSS via `::before`/`::after` pseudo-elements. Zero image file, zero load cost. Eliminates `blinds.png` dependency. The pattern varies subtly with viewport size and zoom, making each viewing slightly unique.

**Alternatives considered:** Necksplash (composite necktie background) — too cluttered against ghost-layer title. Pinstripe — tried and rejected before blinds. Minimalist dot grid — too generic, doesn't mesh with brutalist vocabulary. Ordered Bayer dithering — thematically interesting (quantization) but visually too digital/retro.

**Parameters for future tuning:** Angle offset (currently 2.5°), line opacity (currently 0.04), line spacing (currently 3px transparent + 1px line). Wider angle = more pronounced diamonds; narrower = longer waves. Lower opacity = more ghostly.

**Files:** `blinds.png` no longer referenced by any CSS; can be removed from `_design/assets/images/` and `_build/images/`. Mockup preserved at `_design/css/working_mockups/init-moire-mockup.html`.

### 7. Character Naming Convention

**Decision:** 60 unique character names in format `{name}-the-{adjective}-{suffix}.webp` (e.g., `alaric-the-lonely-b.webp`). Names distributed across categories via stride-7 modular arithmetic to prevent alphabetical clustering.

**Rationale:** Per earlier spec decision, idiosyncratic names prevent brittle dependencies if pages are added/removed (vs. sequential numbering). Character names add personality consistent with the webtext's fiction-integrated approach. Category suffix (`-b/-g/-m/-p`) preserves pattern-type information when files are flattened for publication.

---

## Open Questions

- **Paisley supply gap** — 29 paisley ties needed but only 24 primary candidates available. Five alternates exist in `xx_alternates/`. Need to evaluate whether to promote alternates or reduce dev-log stub count. Urgency: medium; Blocking: no; For: Pass 2 assignment
- **Arboretum tie** — `arboretum.jpg` master was moved out of working directory. What pattern category does it belong to? Hidden page accessible only via filename links — could be any category. Urgency: low; Blocking: no; For: Pass 2 assignment
- **Page load optimization** — Font preloading strategy discussed (preload all 5 WOFF2 from init page during reader linger time) but not implemented. Progressive JPEG discussed for tie sidebars but moot with WebP (WebP supports incremental decoding natively). Font subsetting identified as potential optimization for Martian Mono (ASCII-only usage). Urgency: low; Blocking: no; For: build pipeline development
- **`_inventory.md` creation** — Registry file needed before Pass 2 to track tie→page assignments, colors for deuteranopia accommodation, and adjacency checking. Urgency: medium when Pass 2 begins; Blocking: no currently

---

## Cross-References

- Prior digest: [[2026-02-20f-eas-claims-integration-audit]]
- Necktie design spec: known_issues/~neckties-design-vocabulary-meta-v101.md
- Published directory spec: _project/published-directory-spec.md (page counts, /lib/images/ structure)
- CSS variables: `_build/css/common.css` lines 77–79 (`--tie-width: 18.75%`, `--tie-min: 200px`, `--tie-max: 300px`)
- Conversion script: `~/Pictures/ties/convert-ties.zsh`

---

## Flagged Updates

### Completed This Session
- [x] 60 production WebP files created and placed in `_design/assets/images/neckties/`
- [x] Conversion script created and tested
- [x] Character names distributed across categories

### Still Pending
- [ ] `_inventory.md` creation in `_design/assets/images/neckties/` (needed for Pass 2)
- [ ] Build script update to flatten neckties from `_design/` subdirectories into `_build/images/`
- [ ] Font preloading `<link rel="preload">` tags for init page
- [ ] Possible Martian Mono font subsetting (ASCII-only)
- [ ] Paisley alternate evaluation (5 needed from `xx_alternates/`)
- [ ] Memory update: necktie pipeline status
- [ ] Remove `blinds.png` from `_design/assets/images/` and `_build/images/` (no longer referenced)
- [ ] Remove `pinstripe.png` if also unused
- [ ] Consider removing `necksplash` assets if still present anywhere
