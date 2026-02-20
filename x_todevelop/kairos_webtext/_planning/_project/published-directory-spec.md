---
created: 2026-02-19 01:20
type: kairos-webtext-planning
track: planning
article-section: meta
status: locked
title: Published Directory Structure Specification
aliases: [Published Directory Structure Specification]
linter-yaml-title-alias: Published Directory Structure Specification
modified: 2026-02-19 04:20
locked-date: 2026-02-18
---

# Published Directory Structure Specification

**Status:** LOCKED — 2026-02-18

Defines the file and directory organization of the submitted webtext as it will appear on the Kairos server. Development-side naming (content/supporting, content/nexus, etc.) maps to this structure at build/submission time.

---

## Directory Tree

```
/index.html              ← init splash (from init-B-refined.html)
/lib/                    ← static assets (CSS, JS, fonts, images)
  /lib/css/              ← common.css + per-track overrides
  /lib/fonts/            ← self-hosted WOFF2 (Fraunces, Work Sans, Bitter, Outfit, Martian Mono)
  /lib/js/               ← brutalist-interactions.js, puzzle logic
  /lib/images/           ← neckties, pinstripe.png, any other assets
/frame/                  ← framing pages (Unix-inflected, argument-adjacent)
  /frame/env.html
  /frame/manifest.html
  /frame/index.html      ← Nabokovian alt-index (NOT the Kairos-required index)
  /frame/spec.html
  /frame/contributing.html
  /frame/changelog.html  ← CONDITIONAL: depends on AE agreement (flag in cover letter)
/track/                  ← narrative tracks
  /track/grant/          ← Grant Miles scenes
    grant-01.html
    grant-02.html
    ...
    grant-06.html
  /track/vera/           ← Vera Green scenes
    vera-01.html
    vera-02.html
    ...
    vera-06.html
/tree/                   ← nexus pages + bestiary + arboretum + dev-log stubs
  /tree/_quercus.html    ← underscore prefix convention for all 12 nexus pages
  /tree/_ulmus.html
  /tree/_acer.html
  /tree/_nerium.html
  /tree/_taxus.html
  /tree/_ilex.html
  /tree/_thuja.html
  /tree/_alnus.html
  /tree/_tsuga.html
  /tree/_illicium.html
  /tree/_olea.html
  /tree/_nyssa.html
  /tree/bestiary.html    ← twin bestiaries (tech + teratological), dev-log-scale fragment
  /tree/arboretum.html   ← HIDDEN: no manifest entry, no nav link, accessible via filename links only
  /tree/nexus-hub.html   ← HIDDEN: accessibility landing page and emergency exit; not in nav
  /tree/next-steps.html  ← bridge page from fiction tracks to theoretical nexus; wraps Grant/Vera arcs
  /tree/references.html  ← scholarly bibliography; lives with nexus apparatus, not frame
  /tree/acknowledgments.html ← end of argument path; /frame/ visual styling (apparatus palette, Unix headings)
  /tree/dev-log/         ← 24 dev-log stubs (proto-nexus fragments orbiting nexus pages)
    dev-log-01.html
    ...
    dev-log-24.html
/graph/                  ← Quartz vault export (companion evidence base)
  (hosted externally, not in Kairos submission; linked with target="_blank")
```

---

## Directory Naming Rationale

| Directory | Name Logic | Reader-Facing? |
|-----------|-----------|----------------|
| `/frame/` | Semi-pun: structural frame + viewing frame. Contains pages that frame the reading experience without carrying the argument directly. Never named as a category in prose; pages are linked individually. | Directory name visible in URLs only |
| `/track/` | Multitrack reading metaphor already central to webtext. Grant and Vera named explicitly as subdirectories. | Yes — track names visible |
| `/tree/` | Singular for naming consistency with `/lib/`, `/graph/`, `/track/` — directory implies multiples. Literal (pages about trees) and structural (tree-like navigation). Houses nexus pages, bestiary, arboretum, references, bridge pages, and dev-log stubs. | Yes — visible in nexus URLs |
| `/graph/` | Names what the vault _does_ (visualizes relationships), not what it _is_ (Obsidian vault). Unix/CS resonance. | External link only |
| `/lib/` | Standard library convention. Assets that pages depend on. Invisible to readers; legible to AEs. | No |

## Key Conventions

### Nexus Filenames
- Underscore prefix: `_tsuga.html` (not `tsuga.html` or `nexus-tsuga.html`)
- Genus-only names; 12 pages total, one per QUANTITATION letter

### Nexus Page Heading Convention
- **H1:** Topic name (e.g., "Constraint Sequencing"), NOT tree name
- **Below H1:** `_monospacetreefilename.html` | *Serif Latin binomial in italics*
- Example: H1 "Writing as Labor and Capital" followed by `_quercus.html` | *Quercus alba*
- Binomial links to arboretum passage for that tree

**Confirmed binomials (02-19c):**

| # | Filename | Binomial |
|---|----------|----------|
| 1 | `_quercus.html` | *Quercus alba* |
| 2 | `_ulmus.html` | *Ulmus americana* |
| 3 | `_acer.html` | *Acer saccharum* |
| 4 | `_nerium.html` | *Nerium oleander* |
| 5 | `_taxus.html` | *Taxus baccata* |
| 6 | `_ilex.html` | *Ilex opaca* |
| 7 | `_thuja.html` | *Thuja occidentalis* |
| 8 | `_alnus.html` | *Alnus glutinosa* |
| 9 | `_tsuga.html` | *Tsuga canadensis* |
| 10 | `_illicium.html` | *Illicium verum* |
| 11 | `_olea.html` | *Olea europaea* |
| 12 | `_nyssa.html` | *Nyssa sylvatica* |

### Track Filenames
- `grant-01.html` through `grant-06.html`
- `vera-01.html` through `vera-06.html`
- Scene numbering is chronological within each track

### Bestiary Placement
- **Lives in `/tree/`**, not `/frame/`
- Rationale: The bestiary is a dev-log-scale fragment that does argumentative work — it's a nexus-adjacent page connecting Unix process metaphors to teratological metaphors. Only pages doing framing work unrelated to the argument belong in `/frame/`.
- Twin-column layout: monsters (left) | Unix beasties (right)
- Compressed from planning documentation to published glosses

### Arboretum
- Lives in `/tree/arboretum.html`
- **NOT listed on manifest** — hidden page accessible via monospace filename links on nexus pages
- No nav entry; a calm center linking narratively and associatively

### Nexus Hub
- Lives in `/tree/nexus-hub.html`
- **HIDDEN**: not in manifest or nav; functions as accessibility landing page and emergency exit
- Provides direct links to all 12 nexus pages for readers with disabilities or readers who need to reorient
- Distinct from arboretum (which is a thematizing narrative map, there-and-back); nexus-hub is a functional utility page

### Next Steps
- Lives in `/tree/next-steps.html`
- Bridge page from fiction tracks (Grant/Vera falling action) into theoretical nexus
- Unix-borrowed name convention: literally "the next step" from narrative to analysis
- MUST link first to Quercus (foundational economic frame for readers entering from fiction)
- MUST NOT link to Nyssa (last tree; next-steps bridges _into_ the nexus, not to its endpoint)
- **Confirmed link set (02-19b):** Quercus, Ulmus, Alnus, Nerium, Taxus, Acer (six links)
- Core content: six-step dependency-complexity/kairos cycle (see session digest 02-19b)
- Recapitulates abbreviated claim-and-elaboration sequence for Principles 1, 3, 5, 8 before presenting cycle

### References
- Lives in `/tree/references.html`, NOT `/frame/`
- Rationale: references are scholarly apparatus; most `/frame/` pages should not require citation
- Scholarly bibliography serving the nexus pages and dev-log stubs
- Uses `/tree/` styling (tree-link palette)
- **Upper nav link spec (confirmed 02-19d):** 6 links, none button-styled
  - 3 frame links: index-alt (`/frame/index.html`), manifest (`/frame/manifest.html`), spec (`/frame/spec.html`)
  - 3 tree links: Quercus (#1 Writing as Economic Cycle — foundational economic framework the bibliography grounds), Tsuga (#9 Citation as Dependency — theorizes what references literally does), Olea (#11 Circulation — references as circulation document tracing how value moves through citation networks)
  - Conceptual triangle: economic frame → citation theory → value circulation

### Dev-Log Stubs
- Live in `/tree/dev-log/` (24 pages)
- Proto-nexus fragments: small pages orbiting nexus pages, each developing one theoretical thread
- Constellation structure: stubs cluster around their primary nexus page via links
- Filenames TBD; may use descriptive slugs rather than sequential numbers

### /frame/ Pages — All Unix-Inflected
- env, manifest, index, spec, contributing, changelog
- Unix heading vocabulary (export, cat, pipe, endif, trap) with 5×7 bitmap cursor prefixes
- Apparatus track palette (plum/monospace)
- These pages frame the reading experience; they do not carry the webtext's substantive argument
- Note: references has moved to `/tree/`; changelog is conditional on AE agreement (see AE cover letter flag)

---

## Kairos Compliance Notes

- `index.html` at root level satisfies Kairos's "home page should be index.html" requirement
- All filenames lowercase, no spaces, no non-alphanumeric characters (underscores permitted)
- All images in `/lib/images/` (Kairos convention prefers `/images/` — `/lib/images/` is a minor deviation; verify with AE)
- Cross-browser compatible; degrades gracefully without JS
- All assets self-hosted; no CDN dependencies

---

## Mapping: Development → Published

| Dev Location | Published Location |
|-------------|-------------------|
| `content/supporting/env.md` | `/frame/env.html` |
| `content/supporting/manifest.md` | `/frame/manifest.html` |
| `content/supporting/index-alt.md` | `/frame/index.html` |
| `content/supporting/spec.md` | `/frame/spec.html` |
| `content/supporting/contributing.md` | `/frame/contributing.html` |
| `content/supporting/--changelog.md` | `/frame/changelog.html` † |
| `content/grant-track/grant-01-tech.md` | `/track/grant/grant-01.html` |
| `content/vera-track/vera-01-envelope.md` | `/track/vera/vera-01.html` |
| `content/nexus/_tsuga.md` | `/tree/_tsuga.html` |
| `content/nexus/arboretum.md` | `/tree/arboretum.html` |
| `content/nexus/bestiary.md` | `/tree/bestiary.html` |
| `content/nexus/nexus-hub.md` | `/tree/nexus-hub.html` |
| `content/nexus/next-steps.md` | `/tree/next-steps.html` |
| `content/nexus/references.md` | `/tree/references.html` |
| `content/nexus/dev-log/*.md` | `/tree/dev-log/*.html` |
| `content/supporting/--acknowledgments.md` | `/tree/acknowledgments.html` ‡ |
| `content/supporting/--vault-network.md` | `/graph/` (external) |
| `_design/assets/` | `/lib/` |

† Changelog conditional on AE agreement; flag in cover letter<br/>
‡ Acknowledgments lives in `/tree/` (end of argument path) but uses `/frame/` visual styling (apparatus palette, Unix heading conventions). Confirmed 02-19b.

---

## Submission Page Count (Updated 2026-02-18e)

| Directory | Pages | Notes |
|-----------|-------|-------|
| Root | 1 | index.html (init splash) |
| /frame/ | 5–6 | env, manifest, index, spec, contributing; changelog conditional (†) |
| /track/grant/ | 6 | Grant scenes |
| /track/vera/ | 6 | Vera scenes |
| /tree/ | 17–18 | 12 nexus + bestiary + arboretum + nexus-hub + next-steps + references + acknowledgments (‡ frame-styled); bestiary may merge with dev-log-24 |
| /tree/dev-log/ | 24 | Dev-log stubs |
| **Total** | **58–60** | Plus /graph/ as external companion |

Note: 58–60 pages is appropriate for a major Kairos webtext (comparable to Topoi or Inventio scale submissions).

---

_Locked: 2026-02-18; revised 2026-02-18e (naming consistency, references moved, dev-log stubs added, page count updated)_<br/>
_Supersedes: directory references in design-navigation.md (archived), kairos-compliance-checklist.md Phase 0B scope note_
