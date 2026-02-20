---
created: 2026-02-15 15:59
type: submission-attachment
status: draft-trimmed
project: virens101-kairos-webtext
title: "AE Production Checklist: _Constraint Structure: Toward an Economy of Composition_"
modified: 2026-02-19 01:29
word-count: 662
revision-notes: "Trimmed from 973 words. Three style guide tables collapsed into five prose paragraphs (design verified, design pre-submission, code verified, code pre-submission, sustainability verified). File structure tree removed. Submission form requirements kept checklist format."
aliases: ["AE Production Checklist: _Constraint Structure: Toward an Economy of Composition_"]
linter-yaml-title-alias: "AE Production Checklist: _Constraint Structure: Toward an Economy of Composition_"
---

# AE Production Checklist: _Constraint Structure: Toward an Economy of Composition_

**Author:** Mike Edwards | **Section:** Topoi | **Format:** HTML/CSS webtext with external vault

This document orients assistant editors to the submission's architecture, confirms which Kairos style guide and submission requirements have been pre-checked, and flags features that require special attention during production review.

---

## What this webtext does

_Constraint Structure_ is a ~58-page scholarly webtext that documents and theorizes a first-year composition course (VIRENS 101). It uses a multi-track narrative structure: readers navigate four distinct content tracks — a student narrative, a designer narrative, a series of theoretical nexus pages, and an apparatus track — plus a landing page and an index. Each track has its own complementary visual identity (color palette, typography) while sharing common layout and navigation components. The webtext also links to an external Quartz-generated vault that serves as an evidence base for the course materials described in the argument.

**Key technologies:** HTML5, CSS3 (custom properties, variable fonts), vanilla JavaScript (minimal interaction scripting, landing page animation), five self-hosted WOFF2 web fonts. No frameworks, no npm dependencies, no server-side requirements.

---

## Submission form requirements — pre-checked

- ☑ Peer-review criteria considered and attended to
- ☑ HTML-based home page (`index.html`); not hosted on Wix/Weebly/Squarespace/etc.
- ☐ Editable transcripts/closed captioning — _N/A if no audio/video in final submission; confirm at submission time_
- ☑ Alt text on all static images
- ☑ References list in modified APA (Kairos in-house: full first names, past-tense signal phrases, paywalled DOIs unlinked)
- ☐ Student work permissions — _Webtext uses fictional composite characters, not actual student work; confirm no student likenesses appear_
- ☑ AI disclosure statement will accompany submission per Kairos AI Policy

---

## Style guide compliance — where to look

**Design checks (verified):** All media and design elements serve the rhetorical argument — the four-track color system is load-bearing for navigation. Links use descriptive phrasing with full page titles. External links open in new windows (`target="_blank"`). No terminal punctuation is linked. Alt text is present on all images; `figure`/`figcaption` used where applicable.

**Design checks (pre-submission):** Run WAVE accessibility review before submission. Custom color palettes have been designed for WCAG AA contrast. Cross-browser test in Edge, Firefox, Chrome, Safari.

**Code checks (verified):** External stylesheets throughout (`common.css` + per-track CSS files; no inline styles). All elements and attributes lowercase. Attribute values quoted. All tags properly closed. Character entities used for `&amp;`, `&mdash;`, `&ndash;`. Every page opens with HTML5 doctype, `<html lang="en">`, and `<meta charset="utf-8">`.

**Code checks (pre-submission):** Validate all pages at validator.w3.org. Validate CSS at jigsaw.w3.org/css-validator — note that CSS custom properties and `font-stretch` may produce warnings (valid CSS3, not validation errors).

**Sustainability (verified):** Entire webtext is self-contained static files with zero third-party hosting dependencies. No npm/package installs required. No database. All five fonts self-hosted as WOFF2 (no CDN calls). All images reside in `/images/`. All media archivable on Kairos servers.

---

## Special features requiring AE attention

**Multi-track navigation.** The webtext is not a linear document. Four tracks share a common layout shell but readers switch between them via persistent nav. AEs should confirm that all inter-track links resolve correctly and that "Switch Track" navigation functions as expected on each page.

**Landing page animation.** `index.html` features a CSS/JS breathing animation (ghost layers) that respects `prefers-reduced-motion`. AEs should verify graceful degradation with motion preferences enabled and with JavaScript disabled (static layout, all content accessible).

**External vault.** The webtext links to an external Quartz-generated site hosting course materials (analogous to a dataset supplement). The vault is not part of the Kairos-archived submission. AEs should confirm vault links are clearly marked as external and that the webtext argument is self-sufficient without vault access. Alternatively, the Quartz-generated site can be provided for Kairos hosting.

**Variable fonts.** The submission uses variable WOFF2 fonts with `font-weight` ranges and `font-stretch` axes. These are well-supported in modern browsers but AEs should confirm rendering in Safari, which occasionally handles `font-display: swap` differently.

**Changelog (conditional).** The submission includes a changelog page (`/frame/changelog.html`) documenting open editorial practices: peer review feedback received and author responses. This page is offered contingent on AE/editor agreement that open editorial documentation is appropriate for the section. If the editorial team prefers conventional opaque review, the changelog can be removed without affecting the webtext's argument or navigation. _Flag this question in the cover letter._

**Dev-log stubs.** Twenty-four short dev-log pages (`/tree/dev-log/`) orbit the twelve nexus pages, each developing one theoretical thread in compressed form. AEs should confirm that dev-log internal links resolve correctly to their parent nexus pages and that the dev-log index (if present) is navigable.
