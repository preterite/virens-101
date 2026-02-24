---
created: 2026-01-26
modified: 2026-02-20
type: kairos-webtext-planning
track: planning
status: active
renamed-from: MOC-fragments.md
---

# Known Issues Map of Contents

This page tracks known-issue pages (`~` prefix) and their relationships to nexus pages and scenes.

> [!info] Naming convention update 2026-02-20
> Fragment files renamed from `frag-NN-description.md` to `~three-word-name.md`. Tilde prefix marks the class; three-word content names sort alphabetically by first content word. Published directory: `/tree/known_issues/`. See also: template update needed for local fragment template to reflect new naming scheme.

## Known Issues by Primary Nexus

```dataview
TABLE WITHOUT ID
  file.link as "Fragment",
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Primary",
  length(resonances) as "Resonances",
  status
FROM "_planning/known_issues"
WHERE type = "kairos-webtext-fragment"
SORT primary-nexus ASC
```

## Nexus Gravity Summary

```dataview
TABLE WITHOUT ID
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Nexus",
  length(rows) as "Fragment Count"
FROM "_planning/known_issues"
WHERE type = "kairos-webtext-fragment"
GROUP BY primary-nexus
SORT length(rows) DESC
```

## Known Issues with Scene Connections

Known-issue pages that have been linked to specific scenes (via resonances or explicit scene-link):

```dataview
TABLE WITHOUT ID
  file.link as "Fragment",
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Nexus",
  scene-links as "Scenes"
FROM "_planning/known_issues"
WHERE scene-links
SORT primary-nexus ASC
```

## Nexus-Cloud Only

Known-issue pages that ground nexus pages but don't need narrative embodiment:

```dataview
LIST
FROM "_planning/known_issues"
WHERE type = "kairos-webtext-fragment" AND !scene-links
SORT primary-nexus ASC
```

## Cross-Nexus Resonance Map

Which nexus pages share the most known-issue resonances?

| Nexus | Most Common Resonances |
|-------|----------------------|
| Quercus | Olea, Thuja, Nerium, Acer |
| Ulmus | Taxus, Olea |
| Acer | Illicium, Tsuga |
| Nerium | Quercus, Acer | 0 primary pages (~bridle-student-subject migrated to Thuja 02-19) |
| Taxus | Ulmus, Thuja, Nyssa |
| Ilex | Alnus, Nyssa |
| Thuja | Alnus, Olea, Ilex | 3 primary: ~elbow-bartholomae-writer, ~bridle-student-subject, ~new-dark-age |
| Alnus | Olea, Ulmus, Quercus |
| Tsuga | (underdeveloped) |
| Illicium | Nerium, Ilex, Acer |
| Olea | Ulmus, Thuja |
| Nyssa | Ilex, Alnus, Taxus |

---

## Status Key

| Status | Meaning |
|--------|---------|
| `provisional` | Initial placement, may migrate |
| `anchored` | Placement confirmed, developing |
| `integrated` | Content absorbed into nexus page |
| `scene-bound` | Connected to specific scene(s) |

---

## Reconfiguration Decisions (Locked 2026-02-18)

Target: 24 dev-log stubs for published webtext (preserving 6/12/24 pattern).

### Merges

| Merge | Result | Rationale |
|-------|--------|-----------|
| ~essay-node-process (from frag-04 + frag-08) | Single stub: essay/node/telos/process | Same argument twice — both say process pedagogy treated essay as telos; constraint structure treats it as platform. |
| ~genre-capital-formation (from frag-03 + frag-15) | Single stub: past as store/capital vs. genre formation/uptake | Both ask what the economy frame adds to genre theory's account of writer's relationship to past. |

### Split

| Original | Becomes | Rationale |
|----------|---------|----------|
| frag-12 (Elbow + Arnold) | **~elbow-arnold-self**: authenticity, sublimated self, buried life as inaccessible interiority, mask as reaching-toward. Theoretical recovery: Elbow was always more deconstructively sophisticated than social turn allowed. | The webtext performs the Bartholomae-Elbow debate in multiple registers simultaneously; that performance needs its own stub separate from the Arnold recovery. |
| | **~elbow-bartholomae-writer**: writer vs. academic as false binary, webtext's four voices (Grant/fiction, Vera/design, nexus/scholarly, arboretum/observational) as refusal of that binary. "Edwards" as third-person author-function construct; "I" reserved for acknowledgments page. | |

### Kept Separate (Confirmed)

| Fragment | Reason to preserve independence |
|----------|---------------------------------|
| ~llm-labor-capital | Pointed contemporary application — positions webtext as timely for 2026 Kairos audience; will age interestingly |
| ~tech-labor-capital | Foundational theoretical claim (Moran/Babbage/Edwards genealogy, $30 tech stack); general principle that earns ~llm-labor-capital's specific application |

### Arithmetic

25 original − 1 (04+08 merge) − 1 (03+15 merge) + 1 (12 split) = **24**

### Standalone Adjustments

- ~sixes-twelves-24s → standalone stub with expanded development connecting the counting pattern to the experience-goods-time theme from Taxus principle
- ~neckties-design-vocabulary-meta-v101 → stub B: "Why neckties? / How the necktie part worked"
- ~bestiary-unix-monsters → stub A: unix/monster bestiary

### Archive (02-18f)

Retired originals moved to `_planning/known_issues/_archive/` (not renamed; preserved as historical record):
- `frag-03-past-as-store.md` → superseded by `~genre-capital-formation.md`
- `frag-04-essay-as-node.md` → superseded by `~essay-node-process.md`
- `frag-08-process-distinction.md` → superseded by `~essay-node-process.md`
- `frag-12-elbow-arnold.md` → superseded by `~elbow-arnold-self.md` + `~elbow-bartholomae-writer.md`
- `frag-15-genre-economy.md` → superseded by `~genre-capital-formation.md`

---

## Working Notes

### Empty/Thin Trees

- **Tsuga** (0 known issues): Space for development—possibly infrastructure/persistence themes
- **Acer** (3 known issues after migration): Nexus page drafted 2026-02-19; syllogism and ontological pages absorbed
- **Ilex** (1 known issue): Circulation, nodes—may merge with Olea or Nyssa

### Migration Candidates

Known-issue pages to reconsider placement after initial drafting:
- (add as you work)

### Completed Migrations (2026-02-19)

| Old name | New name | From → To | Rationale |
|----------|----------|-----------|-----------|
| frag-21 | ~writing-technology-syllogism | Quercus → **Acer** | Syllogism is definitionally Acer's argument |
| frag-22 | ~economy-inside-classroom | Quercus → **Acer** | Ontological move follows from technology definition |
| frag-07 | ~tech-determinism-mild | Nerium → **Quercus** | Environment/exigence framing; no connection to revised Nerium accumulation argument |
| frag-10 | ~llm-labor-capital | Nerium → **Olea** | Appropriation framing; resonances already pointed to Olea |
| frag-14 | ~bridle-student-subject | Nerium → **Thuja** | Bridle's structured non-signal = environment whose permission flags are engineered against the user |
| frag-19 | ~circulation-sites-value | Ilex → **Illicium** | Trimbur/circulation content is definitionally Illicium territory |
| frag-13 | ~galloway-protocol-constraint | Thuja → **Alnus** | Protocol is system-level constraint behavior, not individual-constraint analysis |
| frag-02 | ~writing-like-dev | Thuja → **Acer** | Dev-vocabulary-as-writing-vocabulary is Acer's ontological argument |
| frag-01 | ~new-dark-age | Quercus → **Thuja** | New Dark Age exigence = environment whose permission flags are engineered invisible |

### Access Locks

- `~neckties-design-vocabulary-meta-v101`: First-person narration. Accessible ONLY from acknowledgements and spec. Cannot link to or from nexus, scene, or arboretum pages. Locked 2026-02-19.

---

## Old → New Name Concordance

| Old filename | New filename |
|-------------|-------------|
| frag-01-new-dark-age-exigence | ~new-dark-age |
| frag-02-writing-like-development | ~writing-like-dev |
| frag-03+15-past-store-genre-economy | ~genre-capital-formation |
| frag-04+08-essay-node-process | ~essay-node-process |
| frag-05-labor-in-cycles | ~labor-in-cycles |
| frag-06-embodied-agnostic | ~embodied-agnostic-subject |
| frag-07-mild-determinism | ~tech-determinism-mild |
| frag-08-marx-and-tech | ~marx-and-tech |
| frag-09-students-underestimate | ~student-capacity-generous |
| frag-10-ai-distribution | ~llm-labor-capital |
| frag-11-non-rivalrous | ~non-rivalrous-goods |
| frag-12a-elbow-arnold | ~elbow-arnold-self |
| frag-12b-elbow-bartholomae | ~elbow-bartholomae-writer |
| frag-13-galloway-constraint | ~galloway-protocol-constraint |
| frag-14-bridle-subjectivity | ~bridle-student-subject |
| frag-16-neurodivergence-context | ~neurodivergent-context-specification |
| frag-17-temporality-structure | ~teaching-time-structures |
| frag-18-multiple-appropriation | ~multiple-forms-appropriation |
| frag-19-circulation-primary | ~circulation-sites-value |
| frag-20-tech-labor-capital | ~tech-labor-capital |
| frag-21-writing-technology-syllogism | ~writing-technology-syllogism |
| frag-22-economy-inside-classroom | ~economy-inside-classroom |
| frag-23-neckties-design-vocabulary-meta-v101 | ~neckties-design-vocabulary-meta-v101 |
| frag-24-twin-bestiaries | ~bestiary-unix-monsters |
| frag-25-sixes-twelves-24s | ~sixes-twelves-24s |

---

*Last updated: 2026-02-20 (renamed from MOC-fragments; all frag- references updated to ~ convention)*
