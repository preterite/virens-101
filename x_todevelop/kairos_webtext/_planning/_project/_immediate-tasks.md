---
created: 2026-01-31 14:12
type: kairos-webtext-planning
track: planning
article-section: meta
status: active
title: Immediate Tasks
aliases: [Immediate Tasks]
linter-yaml-title-alias: Immediate Tasks
modified: 2026-02-19 20:37
updated-from-digests: 2026-02-20b
---

# Immediate Tasks

## Completed: Infrastructure & Design

- [x] Create folder structure
- [x] Generate README
- [x] Generate placeholder files
- [x] Set up Quartz for local preview
- [x] Copy CSS files from previous session outputs
- [x] Design init splash page (locked in: init-B-refined.html)
- [x] Design Unix heading prefix for apparatus pages (5×7 bitmap cursor)
- [x] Design freeze v1 executed — 5-font stack, 4-track palettes, canonical templates (2026-02-15)
- [x] CSS architecture reconciled — common.css + per-track overrides, self-hosted fonts only (2026-02-15)
- [x] Google Fonts CDN removed from all mockup templates (2026-02-15)
- [x] `supporting` → `apparatus` rename swept across manifest, build script, freeze spec (2026-02-15)
- [x] Browser testing of all five mockup templates with self-hosted fonts (2026-02-15)
- [x] AE production checklist drafted and trimmed (973 → 662 words) (2026-02-15)

## Next Steps

### Commit & Cleanup (Do First)

1. [x] Git commit: `design-freeze-v1` — committed as `5874270` (2026-02-15)
2. [x] Init page `:root` color variables confirmed in `index-init.css`; inline block removed (2026-02-15)
3. [x] Pre-freeze design artifacts archived — 29 files consolidated from 3 locations → `_planning/archive/design-pre-freeze-v1/`; empty dirs removed; `design-navigation.md` moved to archive (2026-02-15)
4. [x] Re-upload `trees_principles.md` to Project Knowledge — re-uploaded by user (02-17h)

### Principles & Scholarly Apparatus (Completed 2026-02-17)

- [x] All 12 principles locked with claim + elaboration blocks (02-17d)
- [x] Principles 2+7 revised from colleague feedback; alignment pass across 4 vault files (02-16c/d)
- [x] Principle #1 revised: visualization claim, not classification claim (02-16d)
- [x] Principle #5 revised: consequence-first, experience-good term deferred to elaboration (02-17)
- [x] Machine delegation demoted from standalone principle; citation-as-dependency promoted to #9 (02-17)
- [x] Principle #11 (Circulation) drafted and locked (02-17b)
- [x] Principle #12 revised: fixed/liquid capital, ecological metaphor subordinated (02-17d)
- [x] Illicium and Olea tree narratives aligned with #11 (02-17c)
- [x] All 12 tree narratives confirmed current (02-17c, Nyssa review pending for #12 alignment)
- [x] Acer sources file drafted: Marx → Olson (1987) → Edwards (2014) genealogy (02-17e)
- [x] Illicium sources file drafted: Babbage, Barlow, Trimbur, Horner, Gibson-Graham, Edwards (02-17h)
- [x] Olea sources file drafted: Gibson-Graham, Resnick/Wolff, Horner, Edwards, four-constellations (02-17h)
- [x] All 12 source/reasons files complete — no remaining TO WRITE items (02-17h)
- [x] nexus-concept-assignments.md comprehensively updated Feb 12 → Feb 17 state (02-17h)
- [ ] Olson (1987) page number retrieval — needed before Acer nexus page drafting

### Writing (Priority — Sole Critical Path)

3. [ ] Draft one complete scene as proof-of-concept
   - G1 (Grant's opening week) is ready and brainstormed; TuTh schedule locked for dramatic considerations
   - V1 (Envelope) queued for brainstorming

4. [x] ~~Draft one nexus page as proof-of-concept~~ → **ALL 12 NEXUS PAGES DRAFTED** (02-19e–k)
   - Alnus drafted with Sweller/CLT convergence section (02-19e)
   - Ulmus and Acer drafted (02-19f); Nerium rewritten and Ilex updated (02-19g); Thuja revised (02-19h)
   - Alnus and Tsuga echoes/nav finalized (02-19i); Nyssa nav architecture locked (02-19j)
   - Illicium and Olea drafted, completing all 12 (02-19k)
   - All 12 pages have arboretum echoes and locked nav links
   - See **Nexus Page Drafting Sprint** and **Nexus Revision Pass** sections below for details

5. [ ] Write W3 vignette (Grant's Salvatori [[@salvatori1996conve]] confusion)

6. [ ] Draft abstract (150-250 words)

7. [x] Draft arboretum.html — **DRAFT-COMPLETE** (02-18c)
   - [x] Spatial architecture resolved: 4 landscape groups (commons → toxic garden → wet forest → ravine descent) (02-17f)
   - [x] Interactive fiction framing: Zork opening / Adventure closing in inverted chronology (02-17f)
   - [x] Opening frame drafted (02-17f/g)
   - [x] Vocabulary density mapped across all 12 passages (02-17g)
   - [x] DED elm: Princeton cultivar replacement in allée remnant (02-17g)
   - [x] Girdling at hemlock with adelgid discovery (02-17g, 02-18c)
   - [x] All 12 tree passages drafted: oak through tupelo (02-18b/c)
   - [x] Toxic Garden complete with legibility-crisis closing turn (02-18b)
   - [x] Wet forest complete with cambium call-and-response (yew → hemlock) (02-18c)
   - [x] Ravine complete: star anise, olive, tupelo (02-18c)
   - [x] Adventure closing echo + van Helmont ending locked (02-18c)
   - [x] Saved to `content/nexus/arboretum.md`
   - [ ] Polish pass: ~~typo fix ("different that" → "different from")~~ ✓ done; penultimate holly sentence, van Helmont register ("experiment's term" → "five years")
   - [ ] Design: arboretum-specific page template (no section nav; non-standard necktie photo)

### Architecture & Navigation

8. [x] ~~Map nexus 6-link neighborhoods~~ → **ALL 12 PAGES HAVE LOCKED NAV LINKS** (02-19e–k; nav revised 02-20b): asymmetric by design; each page's nav purpose-built. Nav architecture rules clarified (02-20b): ENV never in top-right nav (accessed via title link); `contributing` is body-text/frame-nav only; core tree pages get 3–4 nexus-tree links in top-right nav with remaining slots reserved for fragments/devlogs. Next-steps links confirmed (02-19b): Q, U, A, N, T, A
   - [x] QUANTITATION sequential link audit complete (02-20b): all 11 forward links verified present in `connections` frontmatter; 8 pages modified (Quercus, Ulmus, Acer, Nerium, Taxus, Alnus, Tsuga, Nyssa); 4 unchanged (Ilex, Thuja, Illicium, Olea); puzzle is solvable
   - [ ] Final nav audit: bestiary slot on Nyssa, contributing button distribution (02-19k)
9. [ ] Formalize four-layer architecture model (apparatus / narrative / nexus / arboretum) in design doc (02-16)
10. [ ] Clarify nexus-hub.html role: remove from nav, keep as direct-URL emergency exit (02-16)
11. [x] Published directory structure locked: `/frame/`, `/track/grant/`, `/track/vera/`, `/tree/`, `/graph/`, `/lib/` (02-18; `/trees/` → `/tree/` 02-18f)
12. [x] "Supporting"/"apparatus" → `/frame/` for published webtext; no reader-facing category name (02-18)
13. [x] Bestiary relocated from /frame/ to /tree/ — dev-log-scale fragment, not framing page (02-18; `/trees/` → `/tree/` 02-18f)
14. [x] `_tsuga.html` underscore convention confirmed for all 12 nexus filenames (02-18)
15. [x] Published directory spec created: `published-directory-spec.md` (02-18)

### Manifest & Index Page Design (02-18)

16. [x] Draft manifest content — scope paragraph → negations (3 + pivot) → directory-organized inventory → graph → frame → closer — **DRAFTED** (02-18d)
    - Status updated from outline to draft in frontmatter
    - Scene-by-scene descriptions deferred to AE cover note for compression
    - CSS specimen list retained as TODO comment for HTML build
17. [ ] Draft index entry inventory: monsters, Unix terms, concepts, Nabokovian jokes — content before format
18. [ ] Condense bestiary planning doc (unix-monsters-stub.md) into publishable twin-column page draft
19. [ ] Resolve: dev-log stub architecture — how many of the 24 fragments become nexus-styled stubs linked from index?

### Implementation

11. [ ] Guestbook build session: Google Apps Script endpoint + form HTML + spreadsheet + read-only display (~30 min) (02-16b)
12. [ ] QUANTITATION puzzle: letter tracking + solve animation sequence (spec-locked in design-easter-egg.md) (02-16)

### Visual Assets

13. [ ] **Pass 1: Photography & Naming** — Photograph all neckties, name with pattern-prefix convention, populate inventory metadata
   - Create `/assets/neckties/` subdirectories: `/nexus`, `/grant`, `/vera`, `/supporting`
   - Name files: `[pattern-type]-[idiosyncratic-name].jpg`
   - Create `_inventory.md` with columns: Page, Track, Filename, Pattern Type, Colors, Notes
   - Populate inventory during photography: Track, Filename, Pattern Type, Colors, Notes
   - Pattern distribution locked: paisley/floral → nexus (12); geometric/medallion → grant/vera (12); check/plaid → supporting (~10)

14. [ ] **Pass 2: Assignment to Pages** — Assign specific neckties to specific pages, populate "Page" column in inventory
   - Check for color conflicts and pattern distribution
   - Consider conceptual resonances and adjacency
   - Verify deuteranopia accommodation via Colors column

### Submission Planning

15. [ ] Draft AI disclosure statement for Kairos submission form (spec page version; acknowledgments version done)

### Fragment Reconfiguration (Locked 02-18)

20. [x] Fragment count locked at 24 dev-log stubs (preserving 6/12/24 pattern) (02-18)
    - Merge: frag-04 (Essay as Node) + frag-08 (Process Distinction) → single stub
    - Merge: frag-03 (Past as Store) + frag-15 (Genre Theory + Economy) → single stub
    - Split: frag-12 (Elbow + Arnold) → 12a (Elbow + Arnold: authenticity/sublimated self) + 12b (Elbow + Bartholomae: writer vs. academic, four voices, author-function)
    - Kept separate: frag-10 (AI as Distribution) and frag-20 (Tech as Labor-Capital Conversion)
    - frag-25 (Sixes and Twelves) promoted to standalone with experience-goods-time development
    - All affected fragment files annotated with merge/split metadata
    - Decision record in MOC-fragments.md

### Consistency

21. [x] "English 101" / "VIRENS 101" / "first-year writing" naming convention resolved (02-18f): Grant and Vera say "101" (title) or "writing course" (general); routes around both "English" and "VIRENS" questions in fiction. Consistency sweep still needed across existing content files.
22. [ ] Apply "101" / "writing course" convention across Grant and Vera scene drafts
23. [ ] Revise manifest scope paragraph: page count now 58–60 (was "thirty"); `/tree/` section needs expanding beyond "twelve pages" to account for dev-log stubs, bestiary, references, next-steps, arboretum (flagged 02-18f)

### Next-Steps & Architecture (02-19b)

24. [x] Next-steps core cycle drafted: six-step dependency-complexity/kairos cycle placed in `content/nexus/next-steps.md` (02-19b)
25. [x] Next-steps link set confirmed: Quercus, Ulmus, Alnus, Nerium, Taxus, Acer (02-19b)
26. [x] Acknowledgments placement confirmed: `/tree/acknowledgments.html` with `/frame/` visual styling (02-19b)
27. [x] Prior digest Acer misattribution corrected (02-19b): 2026-02-19 digest had Acer→corpse/compost/garden (that's Nyssa)
28. [x] Published directory spec updated: acknowledgments added to tree, next-steps conventions corrected, page count adjusted (02-19b)
29. [ ] Bestiary + frag-24 merge: notes added to both files indicating planned merge (user, 02-19); execution pending
30. [ ] Next-steps prose drafting: transition section, accumulation revisited section (cycle formulation in place)

### Link Specs & Alignment (02-19c/d)

31. [x] Nexus neighborhood map complete: all 12 pages have locked nav links with tree + fragment connections (02-19c initial; 02-19e–k all pages finalized). Total primary tree links needs recount post-sprint.
32. [x] Acknowledgments link spec locked: 6 outbound (G1, V1, arboretum, Illicium, Olea, Nyssa); hermetic inbound (puzzle only) (02-19c)
33. [x] Arboretum link spec locked: body text link-free; local nav = 5 fragments + alt-index (non-button) (02-19c)
34. [x] Neckties isolation locked: 2 inbound (arboretum, spec); 0 outbound; first-person exception quarantined (02-19c)
35. [x] Dev-log link spec locked: 3 per page (1 mandatory parent + 2 discretionary); bestiary exception (6 links, no parent, includes alt-index) (02-19c)
36. [x] Latin binomials confirmed for all 12 trees; Alnus typo corrected (02-19c)
37. [x] trees_principles alignment audit completed: 4 content/nexus files corrected (concept + scenes), 2 labels updated, 2 concept-file pointers fixed (02-19d)
38. [x] "trees_principles is definitive" callout added to nexus-concept-assignments, quantitation-course-sequence-mapping, gap-analysis, coverage-matrix (02-19d)
39. [x] References upper nav locked: 6 links (3 frame: index-alt, manifest, spec; 3 tree: Quercus #1, Tsuga #9, Olea #11), none button-styled (02-19d)
40. [x] Published-directory-spec updated with references link spec (02-19d)
41. [ ] Dev-log stub assignment to neighborhoods (24 stubs → 12 trees) — now tractable per 02-19c spec
42. [ ] References inbound link audit (what links _to_ references?) (02-19d)
43. [ ] Fragment/dev-log discretionary link apportionment: 24 stubs × 2 slots each (02-19d)

### Sweller/CLT Convergence (02-19e)

44. [x] Sweller citation impact research completed: 1988 article ~8,400 citations (Semantic Scholar); no substantial engagement in CCC, CE, Composition Studies, WPA, or WAC journals; Rifenburg/Portanova/Roen (2021) implicitly acknowledges field's departure from cognitivism (02-19e)
45. [x] Convergent-discovery analysis completed: Perl, Rose, Flower, Salvatori, Elbow independently discovered CLT's core insight through different methods; disciplinary gap caused by social turn's contemporaneity with CLT development (02-19e)
46. [x] Alnus nexus page updated with full convergence section: Sweller finding, disciplinary gap, independent discovery, economic analysis of gap (Edwards 2014), Kellogg as bridge figure, Sweller = (Flower & Hayes) + Salvatori formulation (02-19e)
47. [x] Durable citation strategy locked: Sweller/van Merriënboer/Paas 2019 retrospective (_Ed Psych Review_ 31) as stable scholarly anchor for impact claims; live Semantic Scholar count as supplement with access date (02-19e)
48. [x] Sources-to-add.md updated with 7 new sources for Alnus (Sweller 1988, 1998, 2019; Rose 1984; Kellogg 2008; Rifenburg et al. 2021; Reid 2021) (02-19e)
49. [ ] Bookends import needed: Sweller 1988, Sweller/vM/P 1998, Sweller/vM/P 2019, Rose 1984 _Writer's Block_, Kellogg 2008, Rifenburg/Portanova/Roen 2021
50. [ ] Sweller promoted from background to direct citation in constraint-sequencing-reasons-v101.md (update needed)

### Nexus Page Drafting Sprint (02-19e–k) — ✅ ALL 12 COMPLETE

> [!success] Milestone: All 12 QUANTITATION nexus tree pages drafted with arboretum echoes and locked nav links (02-19k).

51. [x] **Alnus** (#8) expanded with Sweller/CLT convergence section (02-19e)
52. [x] **Ulmus** (#2) drafted (~2,370 words): operational vocabulary / six moves; primary-theorist Babbage _Economy of Machinery_ 1832 (02-19f)
53. [x] **Acer** (#3) drafted (~2,100 words): economy and technology in composition; primary-theorist Marx; syllogism genealogy Marx → Olson → Edwards (02-19f)
54. [x] **Nerium** (#4) rewritten (~2,600 words): Meadows stock-and-flow as primary architecture; Yancey reread through Meadows; transfer literature acknowledged and declined with Alnus pointer (02-19g)
55. [x] **Ilex** (#6) updated: arboretum echoes (contact-triggered defense / heterophylly); Alnus pointer framing Salvatori/Star gap as constraint sequence; Land/Meyer removed from scholars (02-19g)
56. [x] **Thuja** (#7) revised: nav links finalized; 3 arboretum echoes (cedar architecture / volatile compounds / lateral opening); 3 primary fragments assigned (12b, 14, 01) (02-19h)
57. [x] **Alnus** (#8) finalized: 3 arboretum echoes (pioneer/succession, soil transformation, boardwalk); nav revised (02-20b): dropped Ulmus and Ilex, added Tsuga for sequential link; now (Thuja, Taxus, Nyssa, Tsuga, frag-13); Tsuga body-prose wikilink; Nyssa inbound link added (02-19i/j)
58. [x] **Tsuga** (#9) revised: 2 arboretum echoes (shade tolerance, adelgid); nav revised (02-20b): dropped Nyssa, added Illicium for sequential link, then restored Nyssa; now (Olea, Ulmus, Ilex, Illicium, Nyssa, frag-03+15); 5 body-prose wikilinks added; transformed from thinnest to densest outlink page (02-19i)
59. [x] **Nyssa** (#12) nav architecture locked: 4 inbound paths (Tsuga, Nerium, Alnus, Olea); outbound nav revised (02-20b): Quercus, Nerium, Illicium + 3 frags (contributing removed from top-right nav; remains as body-text and/or frame-nav link); 2 arboretum echoes (senescent blaze, standing water); contributing paragraph expanded (02-19j/k)
60. [x] **Illicium** (#10) drafted: circulation / reading as productive consumption; nav locked (Olea, Tsuga, Nerium + 3 frags); 2 echoes (scent-before-sight, culinary/toxic) (02-19k)
61. [x] **Olea** (#11) drafted: appropriation and value; 4 tree nav links as hub page (Illicium, Alnus, Acer, Nyssa + 2 frags); 2 echoes (graft, coppice/regrowth); Ulmus demoted to body-prose (02-19k)
62. [x] Arboretum echo technique established as repeatable pattern across all 12 pages (02-19f–k)
63. [x] 6-link nav standard revised (02-20b): core tree pages get 3–4 nexus-tree links with remaining slots reserved for fragments/devlogs; ENV never in top-right nav (accessed via title link); `contributing` is body-text/frame-nav only. Fragment/devlog pages get 3 top-right nav links (at least 1 tree, other 2 can be fragments or trees). Original 02-19j standard superseded.

### Fragment Migrations (02-19f–h)

> [!info] Nine fragment reassignments and one access lock executed during the nexus drafting sprint as page content clarified fragment placement.

64. [x] frag-21 (Writing-Technology Syllogism): Quercus → Acer (02-19f) — syllogism is definitionally Acer's argument
65. [x] frag-22 (Economy Inside Classroom): Quercus → Acer (02-19f) — ontological move follows from technology definition
66. [x] frag-07 (Mild Determinism): Nerium → Quercus (02-19g) — environment/exigence framing
67. [x] frag-10 (AI Distribution): Nerium → Olea (02-19g) — appropriation framing
68. [x] frag-19 (Circulation as Primary Site): Ilex → Illicium (02-19g) — Trimbur/circulation is definitionally Illicium territory
69. [x] frag-14 (Bridle/Subjectivity): Nerium → Thuja (02-19h) — structured non-signal = permission flags engineered against user
70. [x] frag-01 (New Dark Age Exigence): Quercus → Thuja (02-19h) — exigence for permission-flag literacy
71. [x] frag-02 (Writing Like Development): Thuja → Acer (02-19h) — dev-vocabulary ontology is Acer's argument
72. [x] frag-13 (Galloway/Constraint): Thuja → Alnus (02-19h) — protocol is system-level, not individual-constraint
73. [x] frag-23 (Neckties): access-locked to acknowledgments + spec only (02-19h) — first-person narration quarantine
74. [x] MOC-fragments.md updated with all migration records, access-lock section, resonance map (02-19f–h)
75. [x] frag-03+15 (Past as Store): tentatively assigned to Tsuga (02-19i) — genre theory/economy frame distinction connects to citation-as-dependency; confirmation pending

### Nexus Revision Pass (Pending)

> [!warning] All 12 pages drafted but several need targeted revision before the nexus layer is stable.

76. [ ] **Quercus** revision/redraft (HIGH PRIORITY): cycle origin page can now be written with awareness of all 11 subsequent pages; lost frag-01 and frag-21/22 to migrations, gained frag-07; needs fresh fragment inventory review and adequate exigence framing (02-19h/k)
77. [x] **Taxus** echo revision pass: drafted earlier without arboretum-echo convention; needs echoes added and nav links verified against patterns established across other 11 pages (02-19i, carried through 02-19k)
78. [ ] **Thuja**: add Olea body-prose wikilink where appropriation/ownership argument warrants it (02-19h)
79. [ ] **Olea**: Resnick & Wolff close reading for specific textual engagement; currently engaged at framework level only (02-19k)
80. [ ] **Olea**: Add explicit Edwards (2014) attribution for ontological move, following Acer precedent (02-19f locked transparent self-citation as approach; 02-19k flagged Olea as missing it)
81. [x] **Nyssa**: 4 inbound paths confirmed (Tsuga, Nerium, Alnus, Olea); Olea→Nyssa is a nav link on Olea (02-19k digest was internally inconsistent on this point; 4 inbound is the correct decision)
82. [ ] frag-03+15 Tsuga assignment: confirm or revise tentative placement (02-19i)
83. [ ] Arboretum echo audit: all 12 pages now have echoes; systematic review for consistency and quality (02-19k)
84. [x] **QUANTITATION sequential link audit complete** (02-20b): all 11 forward links (Q→U→A→N→T₂→I₁→T₂→A₂→T₃→I₂→O→N₂) confirmed present in `connections` frontmatter; 8 pages modified, 4 unchanged; puzzle solvable. Nav architecture rules documented: ENV via title only; contributing body/frame only; 3–4 tree links per page with fragment/devlog slots reserved. Full change ledger in digest 02-20b.
