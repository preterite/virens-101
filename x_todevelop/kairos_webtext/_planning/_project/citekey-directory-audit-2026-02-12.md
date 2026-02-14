---
created: 2026-02-12 01:07
type: kairos-webtext-planning
status: current
project: kairos-virens-101-webtext
tags: [audit, citations, infrastructure]
title: Citekey Architecture & Directory Audit
aliases: [Citekey Architecture & Directory Audit]
linter-yaml-title-alias: Citekey Architecture & Directory Audit
modified: 2026-02-12 03:14
---

# Citekey Architecture & Directory Audit

**Date:** 2026-02-12<br/>
**Scope:** Kairos webtext vault — directory structure, README currency, citekey wikilink coverage, bib file alignment

---

## 1. Directory Structure Assessment

The vault structure is clean and well-organized. Key directories:

```
kairos_webtext/
├── _design/           ✅ Active (CSS, mockups, design docs)
├── _planning/
│   ├── _project/      ✅ Active (session digests, tasks, context)
│   ├── archive/       ✅ 5 deprecated files properly stored
│   ├── characters/    ✅ 2 character profiles (Vera, Grant)
│   ├── concepts/      ✅ 6 concept notes
│   ├── fragments/     ✅ 23 fragments + MOC
│   ├── scenes/        ✅ 12 scene outlines (V1-V6, G1-G6)
│   ├── sources/       ✅ 4 source files (foundational, structural, local, to-add)
│   └── structure/     ✅ 6 structural planning docs
├── _templates/        ✅ 7 templates
└── content/
    ├── grant-track/   ✅ 6 scene files
    ├── vera-track/    ✅ 6 scene files
    ├── nexus/         ✅ 12 nexus pages
    └── supporting/    ✅ 8 supporting pages + dev-log/
```

**No structural issues found.** Directory organization reflects planning taxonomy accurately.

---

## 2. README Currency

The README at `kairos_webtext/README.md` is **outdated in several specifics**:

| Issue | Current README | Actual State |
|-------|---------------|--------------|
| Project management path | `_planning/project-mgmt/` | `_planning/_project/` |
| Visual design spec | `design-visual-v3.2.md` | `design-visual-v4.1.md` |
| Last updated date | 2025-01-25 | Should be 2026-02-12 |
| Key docs: continuation context | `_planning/project-mgmt/kairos-continuation-context.md` | `_planning/_project/_kairos-continuation-context.md` |
| Missing from key docs | — | `monograph-pedagogy-tension-synthesis.md`, session digests directory |
| Missing directory listing | — | `_planning/_project/_session-digests/` not shown |
| QUANTITATION mapping | Not documented in README | Should reference `nexus-concept-assignments.md` |

**Recommendation:** Update README to reflect current paths, add session digest reference, document QUANTITATION sequence.

---

## 3. Citekey Architecture

### Format

Citekeys follow Pandoc/Zotero convention: `[[@authorYYYYword]]`

Examples: `[[@salvatori1996conve]]`, `[[@gibson-graham2006postc]]`, `[[@bridle2023dark]]`

These are wikilink-style references that point to entries in the BibTeX library. They resolve in Pandoc workflows and can also function as Obsidian wikilinks if a literature notes directory with matching filenames exists.

### Bib Files Located

| File | Path | Entries |
|------|------|---------|
| `library.bib` | `Scholar/references/library.bib` | 135 |
| `scholar.bib` | `Scholar/Resources/citations/scholar.bib` | (uncounted) |
| `library.bib.backup` | `Scholar/references/library.bib.backup` | — |

**No .bib file exists within the virens_101 project directory.** All citekeys resolve against vault-level bib files.

### Citekey Coverage

**32 unique citekeys** used across the webtext vault.

**31 resolve correctly** to entries in `library.bib`.

**1 incorrect citekey:**

| Used in vault | Actual bib key | File |
|---------------|----------------|------|
| `[[@edwards2014digit]]` | `edwards2016unpac` | `sources-to-add.md:34` |

The source note itself says "unpacking" — the citekey suffix was mis-guessed.

### Distribution of Citekeys by Location

| Location | Count | Notes |
|----------|-------|-------|
| `_planning/sources/` | ~20 | Most citekeys concentrated here |
| `_planning/fragments/` | ~15 | Inline scholarly references |
| `content/nexus/` | 1 | Only `nexus-nyssa.md` has a citekey |
| `_planning/structure/` | 1 | `vignette-candidates.md` |
| `content/` (scenes) | 0 | No citekeys in scene files (expected at placeholder stage) |

**Observation:** Citekeys are well-distributed across planning/fragments but have not yet migrated into content files. This is appropriate given that content files are mostly placeholders.

---

## 4. Sources Without Citekeys

**9 sources** in source files are listed without `[[@citekey]]` wikilinks:

| Source | File | In library.bib? |
|--------|------|-----------------|
| Watkins, _Work Time_ (1989) | sources-local.md | ✅ `watkins2009work` |
| Scott, _Dangerous Writing_ (2009) | sources-local.md | ❌ Missing |
| Arendt, _The Human Condition_ (1998) | sources-local.md | ❌ Missing |
| Stiegler, _Technics and Time_ (1998) | sources-structural.md | ❌ Missing |
| Adam, _Timewatch_ (1995) | sources-structural.md | ❌ Missing |
| Brandt, _Rise of Writing_ (2015) | sources-structural.md | ⚠️ Wrong book — bib has `brandt2001lites` (Literacy in American Lives) |
| Strickland, _Managerial Unconscious_ (2011) | sources-structural.md | ❌ Missing |
| Braverman, _Labor and Monopoly Capital_ (1974) | sources-structural.md | ❌ Missing |
| Hyde, _The Gift_ (1983) | sources-structural.md | ❌ Missing |

**Summary:** 6 sources entirely missing from library.bib, 1 wrong-book match, 1 has bib entry but no wikilink, 1 wrong citekey.

---

## 5. Vault Conventions Alignment

### Scholar Registry vs. Actual Usage

The `vault-conventions.md` Scholar Registry lists controlled names for `cites-scholars` arrays. Cross-referencing against actual citekey usage reveals:

**In vault-conventions AND used as citekeys:** Salvatori, Alexander, Meadows, Star, Selber, Ong, Kirschenbaum, Perl, Rose, Inoue, Yancey, Downs

**In vault-conventions but NOT yet used as citekeys:** Bartholomae, Sommers, Elbow, Shaughnessy, Flower, Graff, Melzer, Schön, Brooks, Norman, Bowker, Simon, Haas, Bolter, Bernstein, Borges, Bush, Quine, Jackson

**Used as citekeys but NOT in vault-conventions Scholar Registry:** Trimbur, Horner, Gibson-Graham, Moran, Bridle, Chaput, Christen, Foley, Galloway, Hayles, Heidegger, Miller, Resnick, Shannon, Villanueva, Watkins, Beaufort, Adler-Kassner

**Recommendation:** The Scholar Registry needs updating. The `sources-to-add.md` file already flags this ("Update vault-conventions.md with these scholars") but the update hasn't been executed yet.

---

## 6. Action Items

### Immediate (fix errors)

- [ ] Fix citekey: `[[@edwards2014digit]]` → `[[@edwards2016unpac]]` in `sources-to-add.md`
- [ ] Add citekey wikilink for Watkins _Work Time_: `[[@watkins2009work]]` in `sources-local.md`

### Short-term (bib maintenance)

- [ ] Add 6 missing sources to `library.bib`: Scott, Arendt, Stiegler, Adam, Strickland, Braverman, Hyde
- [ ] Add Brandt _Rise of Writing_ (2015) as separate entry from existing `brandt2001lites`
- [ ] Add citekey wikilinks to all 9 currently-unwikilinked sources in source files

### Medium-term (registry alignment)

- [ ] Update vault-conventions Scholar Registry with 18 scholars used in citekeys but not yet registered
- [ ] Decide whether to maintain Scholar Registry as separate from citekey system or merge/deprecate

### For drafting phase

- [ ] Establish convention for how citekeys will appear in content files (narrative scenes vs. nexus pages)
- [ ] Consider whether a project-level .bib file (subset of library.bib) would aid Pandoc compilation
- [ ] Decide on Pandoc citation processing workflow for final Kairos webtext output

### README update

- [ ] Fix all outdated paths and version references
- [ ] Add QUANTITATION sequence reference
- [ ] Add session digests to directory listing
- [ ] Update "last updated" date

---

## 7. Architectural Observations

**The citekey system is healthy but incomplete.** The Pandoc-style `[[@key]]` convention is consistently applied where it's used, and almost all keys resolve correctly. The main gaps are:

1. **Source files predate systematic citekey adoption.** The structural and local source files were written with full bibliographic entries but without citekey wikilinks, probably during early vault setup before the citekey convention was established.

2. **No literature notes directory.** The `[[@key]]` format could serve double duty as Obsidian wikilinks if a `literature-notes/` directory existed with files like `@salvatori1996conve.md`. This isn't necessary now but would enable richer linking in the drafting phase.

3. **Two bib files with unclear division of labor.** `library.bib` (135 entries) and `scholar.bib` exist at different paths. All citekeys currently resolve against `library.bib`. The role of `scholar.bib` is unclear — it may be a legacy or a different tool's output. Worth investigating.

4. **No project-level .bib subset.** For Pandoc compilation of the final webtext, a project-specific bib file (containing only referenced sources) would simplify the build pipeline. This is a future-phase concern.
