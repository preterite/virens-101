---
created: 2026-02-14
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
title: Kairos Compliance Checklist
aliases: [Kairos Compliance Checklist]
linter-yaml-title-alias: Kairos Compliance Checklist
modified: 2026-02-15 23:59
---

# Kairos Compliance Checklist

Staged compliance plan for submitting "Constraint Structure: Toward an Economy of Composition" to *Kairos: A Journal of Rhetoric, Technology, and Pedagogy*. Requirements drawn from the Kairos Style Guide (kairos_styleguide.html in Project Knowledge). Organized by when each item needs attention in the development process.

---

## Phase 0: Architecture Decisions (Resolve Before Further HTML Production)

These decisions constrain everything downstream. Resolve before converting more content to HTML.

### 0A. Font Self-Hosting — ✅ COMPLETE (2026-02-15)

- [x] Download WOFF2 files for all webtext fonts: Fraunces, Work Sans, Outfit, Bitter, Martian Mono
- [x] Place font files in `_design/assets/fonts/` (development location)
- [x] Write `@font-face` declarations in external CSS (common.css)
- [x] Remove all Google Fonts CDN `<link>` references from mockups
- [ ] Test fallback font stacks for graceful degradation when fonts fail to load
- [ ] Final submission: copy to `/fonts/` in submission package

**Why now**: Every HTML file and CSS reference changes. Retrofitting after 30+ pages are authored is expensive. Kairos requires all assets be self-hostable: "we need to be able to archive everything we publish."

**Blocks**: All CSS development, all HTML page production.

**Note**: This is a short mechanical task — download from Google Fonts, extract WOFF2, write @font-face rules. Schedule it as an early step in the first CSS session.

### 0B. Vault Apparatus Scope — ✅ RESOLVED (2026-02-14)

**Decision (2026-02-14)**: The vault is a **companion resource hosted externally**, not part of the Kairos submission. Michael will convert and host the vault pages himself (likely WSU institutional web space) and present to the managing editor as an option for internal or external hosting.

**Rationale**: No managing editor wants AEs copy-editing 170+ pages of pedagogical documentation. The webtext is the authored argument; the vault is supplementary documentary infrastructure.

**Update (2026-02-15)**: Quartz vault implementation substantially complete (sessions a–f): sidebar restructured, graph interaction refactored, layout polished. Contextual portal navigation (Approach 4+2) implemented. AE checklist describes vault as "analogous to a dataset supplement."

**Implications**:
- [ ] All vault links in the webtext use `target="_blank"` (external link convention)
- [ ] Vault URL must be stable before submission (prefer institutional hosting over personal domain)
- [ ] env or spec page includes a sentence explaining the vault's availability and the webtext's self-containment
- [x] Vault does NOT need Kairos code validation, accessibility audit, or style guide compliance
- [x] Submission scope: ~36 HTML pages (index + 12 nexus + 6 Vera + 6 Grant + ~12 apparatus)
- [x] Vault palette (plum) still appears in apparatus pages within the webtext; it just doesn't extend to the external vault

### 0C. Markdown→HTML Pipeline Decision

- [ ] DECIDE: Conversion method for markdown content to final HTML pages
  - Option A: Build script (pandoc + sed/awk/python post-processing) that strips frontmatter, converts to HTML, wraps in page template, inserts nav elements
  - Option B: Hand-author final HTML using markdown as drafting medium; script assists with template updates only
  - Option C: Hybrid — script handles boilerplate (doctype, head, nav, footer); hand-edit body content from markdown conversion
- [ ] Build or spec the chosen pipeline
- [ ] Test with one nexus page and one scene page to verify output

**Why now**: Affects whether you author in markdown until the end (then batch-convert) or begin producing HTML pages now. Also determines how the auto-update script works for template changes.

**Blocks**: All content production workflow.

### 0D. Necktie Image Decisions

- [ ] Confirm final necktie image set (currently: 0x.jpg, 0y.jpg, 0z.jpg)
- [ ] Determine where neckties appear in final webtext (init background? track headers? track section dividers?)
- [ ] Write alt text for each image (describe the image)
- [ ] Write title text for each image (explain rhetorical function — see frag-23)
- [ ] Determine optimal file sizes (aim for <100KB each; JPEG at 65-75 quality)
- [ ] Confirm that pinstripe.png (2.7KB, 16×16 repeating tile) is the only background texture
- [ ] Consider whether the webtext needs any other images at all (diagrams, screenshots, figures)

**Why now**: Kairos requires all images have alt + title tags, reside in `/images/`, and use `<figure>/<figcaption>` where feasible. Decisions about additional visual elements should be made before pages are drafted, since the prose changes if a figure accompanies it.

**Blocks**: Image folder structure, alt text planning, page layout decisions.

### 0E. Visual Element Inventory (Beyond Neckties)

The webtext is deliberately text-y. Typography, color palettes, and navigation structure ARE the visual argument. But consider whether any of these serve the argument:

**CSS-generated diagrams (no image files needed)**:
- [ ] CONSIDER: Constraint-arrival timeline as a styled HTML table/list with track colors and temporal axis — performs the argument about sequencing spatially
- [ ] CONSIDER: Corpse→compost→garden arc as three styled divs progressing from dense/dark to generative/light
- [ ] CONSIDER: Track palette specimen page (four typeface pairings, four color systems) as both design key and visual object — possibly part of manifest or env

**Necktie treatments**:
- [ ] CONSIDER: Horizontal cropped strips (~60px tall, full-width) as section dividers or track-entry headers — at that scale, neckties become abstract textile texture
- [ ] CONSIDER: Whether neckties appear beyond init (section dividers on track pages? nexus pages?)

**Infrastructure-as-illustration**:
- [ ] CONSIDER: Styled `<pre>`/`<code>` blocks showing YAML frontmatter, template structure, or constraint logic — not screenshots (Kairos prohibits text-bearing screenshots as images), but rendered code with track colors
- [ ] CONSIDER: Whether any of the six-moves vocabulary can be presented as a styled typographic element rather than a list

**What to avoid**: Screenshots of Obsidian vault (transcribe and style with CSS instead), stock photography, decorative illustration without argumentative function, PowerPoint-style flowcharts.

**Note**: All of these can be built in CSS without image dependencies. The fewer image files in the submission, the simpler the archiving.

---

## Phase 1: Template and CSS Foundation (Before Content Conversion)

Build the infrastructure that all pages share.

### 1A. HTML Page Template

- [ ] Create base HTML template with Kairos-compliant doctype and head:
  ```html
  <!DOCTYPE html>
  <html lang="en">
  <head>
  <meta charset="utf-8">
  <title>Edwards, Constraint Structure - [PageTitle]</title>
  <link rel="stylesheet" href="css/[track].css">
  </head>
  ```
- [ ] Title convention: `Edwards, Constraint Structure - [PageTitle]` on all pages
- [ ] External stylesheet link (no inline styles)
- [ ] Viewport meta tag for responsive behavior
- [ ] Template variants for each page type:
  - init (splash, no track context)
  - nexus page (monochrome palette, scholarly prose + optional vignette)
  - vera scene (cool palette, designer narrative)
  - grant scene (warm palette, student narrative)
  - apparatus page (plum/concrete palette, terminal aesthetic, meta/infrastructure content)
- [ ] Navigation elements consistent across all non-init pages
- [ ] Footer with return-to-index and track-switching navigation

**Kairos requirement**: "External style sheets are required to facilitate the editing process. Please do not use inline styles." "The home page for all non-wiki webtexts should be 'index.html'."

### 1B. External CSS Architecture — ✅ DECIDED & IMPLEMENTED (2026-02-15)

- [x] Create external stylesheet(s) — **Decision: Base `common.css` + per-track overrides** (see DESIGN-FREEZE-v1.md §4)
- [x] DECIDE and document CSS architecture (DESIGN-FREEZE-v1.md)
- [x] Migrate all inline `<style>` from mockups into external sheets (note: init page retains ~8-line `:root` block for page-specific color tokens; intentional, see session digest 2026-02-15h)
- [x] `@font-face` declarations for 5 self-hosted fonts in common.css
- [x] CSS custom properties for track color tokens (4 palettes locked in DESIGN-FREEZE-v1.md §3)
- [x] Typography scale (specced and implemented)
- [x] Background texture handling (pinstripe/blinds tile)
- [ ] Responsive breakpoints and `clamp()` fluid sizing (specced but not yet tested with content)
- [ ] Validate CSS: http://jigsaw.w3.org/css-validator/ (pre-submission; custom properties may produce warnings)

**Kairos requirement**: External stylesheets only. Valid CSS.

### 1C. JavaScript Foundation

- [ ] QUANTITATION puzzle: vanilla JS, no external dependencies, no build step
- [ ] Ghost animation (init page breathing effect): vanilla JS, self-contained
- [ ] 5×7 bitmap cursor blink: vanilla JS or CSS animation
- [ ] Any track-switching or navigation interactivity: vanilla JS
- [ ] All JS in self-contained `.js` files hostable on Kairos server
- [ ] Test graceful degradation: webtext must be fully readable and navigable with JS disabled
- [ ] Document what JS adds (enhancement) vs. what it enables (function)

**Kairos requirement**: "We cannot accept submissions that use javascript environments that require npm/package installs on the server." "HTML-based webtexts should degrade gracefully when elements such as JavaScript are not enabled."

### 1D. File and Folder Structure — PARTIALLY RESOLVED

- [x] All filenames lowercase, no spaces, no non-alphanumeric characters (hyphens OK) — convention established
- [x] Homepage = `index.html` (init-B-refined.html → index.html in production)
- [ ] `/images/` folder for all image assets
- [x] `/css/` folder for external stylesheets (common.css + per-track CSS)
- [ ] `/js/` folder for JavaScript files
- [x] `/fonts/` folder for self-hosted font files (5 WOFF2 files)
- [ ] Confirm final page-naming convention maps from current markdown filenames:
  - `init.md` → `index.html` (the init page IS the homepage)
  - `nexus-quercus.md` → `quercus.html` (or `nexus/quercus.html`)
  - `vera-01-envelope.md` → `vera-01-envelope.html` (or `vera/01-envelope.html`)
  - etc.
- [ ] DECIDE: flat structure or subdirectories for tracks? (AE checklist recommends flat for AE friction reduction)

**Kairos requirement**: "All HTML-based filenames and folders must be lowercase and include no spaces or non-alpha-numeric characters." "The home page for all non-wiki webtexts should be 'index.html'."

---

## Phase 2: Link Architecture (During/Before Content Authoring)

### 2A. Internal Link Conventions

- [ ] All internal links open in same window (no `target` attribute)
- [ ] Links from descriptive phrases, not single words
- [ ] Don't link terminal punctuation
- [ ] Navigation links present on every non-init page
- [ ] Back-navigation provided wherever internal links to references exist
- [ ] Link text makes destination clear (reader can make "informed navigational decisions")

**Kairos requirement**: "Authors should attempt to make clear where links are going so that readers may make informed navigational decisions."

### 2B. External Link Conventions

- [ ] All external links open in new window: `target="_blank"`
- [ ] Links to Kairos webtexts open in same window (NO `target="_blank"`)
- [ ] External links point to stable sites/resources
- [ ] Minimize links to commercial sites; prefer informational pages over sales pages
- [ ] In-text external links discouraged in favor of references page links
  - EXCEPTION: When the link IS the argument (e.g., linking to a webtext you're analyzing)
  - Document exceptions and their rhetorical justification

**Kairos requirement**: "External links in-text to outside sources is usually discouraged in favor of links in the works cited." "Offsite/external links should open in a new browser window."

---

## Phase 3: Content Authoring (Ongoing — Apply During Drafting)

### 3A. Per-Page Authoring Checklist

Apply to every page as it is drafted or converted to HTML:

- [ ] Page title follows convention: `Edwards, Constraint Structure - [PageTitle]`
- [ ] Valid HTML5 structure with proper doctype
- [ ] External stylesheet linked (no inline styles)
- [ ] All images have `alt` (describes image) and `title` (explains rhetorical function)
- [ ] Images wrapped in `<figure>` and `<figcaption>` where feasible
- [ ] Screenshots containing text transcribed and styled with CSS, not placed as images
- [ ] Block quotes use `<blockquote>` for 40+ word quotations
- [ ] `<cite>` for italicized titles, `<em>` for emphasis, `<i>` for non-emphasized italics
- [ ] Character entities: `&amp;` `&mdash;` `&ndash;` (no spaces around dashes)
- [ ] Abbreviations spelled out on first use per page, parenthetical abbreviation, then abbreviation thereafter
- [ ] Refer to this text as a "webtext" (not article, essay, paper)

### 3B. Citation Conventions (Modified APA, 7th Ed.)

Apply during drafting — easier to get right the first time than retrofit:

- [ ] **Full names**: First in-text mention of any author/editor on EACH page uses full name
  - If Elbow appears on quercus.html and taxus.html, both need "Peter Elbow" on first mention
- [ ] **Past tense** for signal statements: "Elbow (1998) argued…" not "argues"
- [ ] **Year after name** in signal statements: "Peter Elbow (1998) argued…"
- [ ] **Ampersand** in parenthetical citations: (Selfe & Selfe, 1994)
- [ ] **"and"** in running text: "Selfe and Selfe (1994) argued…"
- [ ] **Page numbers** for direct quotes and very specific ideas
- [ ] **Block quotes** (`<blockquote>`) for 40+ words, no quotation marks
- [ ] **Same-author same-year**: differentiate with a/b letters

### 3C. References Page

- [ ] Title: "References" (not Works Cited, Bibliography)
- [ ] Full author/editor names in all entries
- [ ] Date in second position, parenthesized
- [ ] Sentence-case for titles (first word + proper nouns + after colon)
- [ ] `&amp;` between multiple authors/editors
- [ ] Journal titles in `<cite>`, volume numbers in `<i>`
- [ ] University press names spelled out
- [ ] No city names for publishers
- [ ] Page ranges with en-dashes, all numerals: pp. 119&ndash;157
- [ ] URLs linked, opening in new tab (`target="_blank"`) UNLESS linking to another Kairos webtext
- [ ] No final punctuation after URLs
- [ ] DOIs as links where available
- [ ] Retrieved dates ONLY for unstable pages (Wikipedia, terms of service, etc.)
- [ ] Chronological order for multiple works by same author
- [ ] Same-year entries alphabetized by title with a/b/c letters
- [ ] Generative AI tools cited per APA format if used for content

---

## Phase 4: AI Collaboration Disclosure (Spec Page — When Spec Is Drafted)

### 4A. Spec Page: AI Collaboration Statement

- [ ] Draft 1–2 paragraphs describing the Claude collaboration process for the spec page
- [ ] Cover: what AI assisted with (structural development, argument interrogation, literature integration, prose development, compliance planning, technical implementation)
- [ ] Cover: what AI did NOT do (generate article sections without direction, make argument decisions, replace scholarly judgment)
- [ ] Cover: the collaborative method (developmental editor model, question-driven interaction, Michael's generative instincts + Claude's systematizing and grounding)
- [ ] Cite Claude/Anthropic per APA generative AI format in References
- [ ] Review Kairos's ChatGPT/AI guidance: "If you use ChatGPT or any other generative AI tools to produce content, we ask that you cite it in APA format"

### 4B. Determine Disclosure Scope

- [ ] DECIDE: Does the disclosure cover only content generation, or also development process (planning, auditing, compliance checking, structural advice)?
- [ ] DECIDE: Level of specificity — name the tool (Claude, Anthropic) or generic "generative AI"?
- [ ] DECIDE: How to frame the relationship — "collaboration," "assistance," "tool use"?

---

## Phase 5: Mechanical Copy-Edit (Content Complete, Pre-Submission)

### 5A. Terminology and Style

- [ ] "webtext" not article/essay/paper when referring to this text
- [ ] Field names lowercase: rhetoric, composition, not Rhetoric, Composition (English stays capitalized)
- [ ] Job titles lowercase unless preceding name or proper noun
- [ ] Unit names lowercase unless proper noun
- [ ] Serial commas throughout
- [ ] Em-dashes: `&mdash;` with no spaces
- [ ] En-dashes: `&ndash;` with no spaces, for page ranges and compound modifiers
- [ ] No hyphens with "non-" words unless ambiguity
- [ ] Commas around years in exact dates (April 25, 2011, was…) but not month-only (April 2011)
- [ ] Parenthetical punctuation rules applied consistently
- [ ] In-text citation repetition: only repeat author+year within a paragraph when a different citation intervenes

### 5B. HTML Cleanup

- [ ] All element and attribute names lowercase
- [ ] All attribute values quoted
- [ ] All non-empty elements have matching closing tags
- [ ] Character entities for `&amp;` `&mdash;` `&ndash;` — no other character entities needed
- [ ] No inline styles remaining
- [ ] No uppercase filenames or folders

---

## Phase 6: Validation and Testing (Pre-Submission)

### 6A. Code Validation

- [ ] Run every HTML page through W3C validator: http://validator.w3.org/
- [ ] Run CSS through W3C CSS validator: http://jigsaw.w3.org/css-validator/
- [ ] Fix all errors; document any intentional deviations

### 6B. Accessibility Audit

- [ ] Run WAVE (http://wave.webaim.org/) on every page
- [ ] Verify sufficient foreground-background contrast on all text
- [ ] Verify all images have descriptive alt text
- [ ] Verify all audio/video (if any) has transcripts
- [ ] Verify no text-bearing screenshots placed as images

### 6C. Cross-Browser Testing

- [ ] Test in Edge, Firefox, Chrome, Safari, Opera
- [ ] Test with JavaScript disabled — all content readable, all navigation functional
- [ ] Test with CSS disabled — content still accessible and logically ordered
- [ ] Test with images failing to load — alt text displays, layout doesn't break

### 6D. Link Verification

- [ ] Test all internal links
- [ ] Test all external links
- [ ] Verify external links open in new window
- [ ] Verify Kairos webtext links open in same window
- [ ] Assess external link stability (are these likely to persist?)

### 6E. Archivability Check

- [ ] All assets self-hosted (no CDN dependencies)
- [ ] No third-party site hosting (no Wix, Weebly, etc.)
- [ ] No npm/build dependencies
- [ ] No database requirements
- [ ] All embedded media files included in submission
- [ ] All linked text files/transcripts included for archiving
- [ ] Self-hosted fonts included with submission

### 6F. AE-Friendliness Package

**Principle**: The compliance checklist exists not just to pass inspection but to make inspecting this webtext a pleasure for AEs and production staff. A clean, well-documented submission signals competence and respect for the process, reduces revision cycles, and frees AE attention for substantive feedback. Michael is a former Kairos AE and knows how this goes.

**Compliance manifest** (for cover letter or spec page):
- [ ] Draft a concise compliance statement: "All HTML validated via W3C validator [date]. All CSS validated [date]. WAVE accessibility audit completed [date]. All external links verified [date]. Citations follow Kairos modified APA, 7th edition, with full names on first per-page mention. No npm dependencies; all JavaScript is vanilla and self-contained. Fonts self-hosted in /fonts/. All images have alt and title attributes."
- [ ] Include file inventory: page count, image count, font count, JS file count
- [ ] Note any intentional deviations from standard conventions with rationale

**Structural consistency for AE spot-checking**:
- [ ] Every page has identical head structure (template-generated)
- [ ] Every non-init page has identical nav block placement
- [ ] Every non-init page has identical footer structure
- [ ] An AE who checks one page thoroughly can spot-check the rest by pattern-matching
- [ ] This is why the template + auto-update script matters: mechanical consistency frees human attention

**File structure clarity**:
- [ ] Flat file structure preferred (AEs open files in browser and code editor; deep nesting adds friction)
- [ ] Clear, predictable naming: `index.html`, `env.html`, `quercus.html`, `vera-01-envelope.html`, `references.html`
- [ ] README or manifest page listing all files with descriptions

**Post-acceptance production anticipation**:
- [ ] Once accepted, Kairos production involves citation verification, style guide compliance checks, design-edit — these are the same tasks in our Phases 3, 5, and 6
- [ ] The cleaner the submission, the faster production moves
- [ ] Modified APA with full names per page is the most labor-intensive compliance requirement and the one AEs catch most errors in — front-load this work

### 6G. Final Submission Assembly

- [ ] Homepage is `index.html`
- [ ] All files in proper directory structure
- [ ] Prepare complete submission package: all HTML, CSS, JS, images, fonts, media
- [ ] Final read-through of every page in browser

---

## Cross-Cutting Concerns

### Ongoing: Run Periodically During Development

- [ ] WAVE accessibility check (catch issues early, not just at the end)
- [ ] W3C HTML validation on any newly completed page
- [ ] CSS validation after significant style changes
- [ ] Link testing after adding new internal/external links

### Integration Points with Other Workstreams

| Compliance Task | Connects To |
|----------------|-------------|
| Citation formatting | VIRENS-101 citekey cleanup; references page build |
| Per-page full names | Multi-page architecture (each node = fresh citation context) |
| Alt text for neckties | frag-23 (neckties as design vocabulary) |
| AI disclosure | Spec page drafting; APA generative AI citation |
| CSS architecture | design-visual-v4.1.md; track color system |
| Font self-hosting | Typography system in design spec |
| JS constraints | QUANTITATION puzzle; init page animation |
| File naming | Current markdown filename conventions (already lowercase+hyphens) |

---

## Notes

- The Kairos style guide was last reviewed 2026-02-14.
- Kairos Inventio editor: Anastasia Salter.
- Kairos Technical Editor: Rick Wysocki (likely the design-edit reviewer).
- Kairos acceptance rate: ~10%.
- Submission target: Summer 2026.
- **2026-02-15 update**: Design freeze v1 complete. Phase 0A (fonts) and Phase 1B (CSS architecture) fully resolved. AE production checklist drafted (662 words). Phase 0B vault scope confirmed with Quartz implementation substantially done. Critical path is now Phase 1 content authoring (scenes, nexus pages, vignettes). See DESIGN-FREEZE-v1.md for locked specifications.
