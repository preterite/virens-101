---
created: 2026-01-26
type: kairos-webtext-planning
track: planning
status: active
---

# Fragment Map of Contents

This page tracks brainstorming fragments and their relationships to nexus pages and scenes.

## Fragments by Primary Nexus

```dataview
TABLE WITHOUT ID
  file.link as "Fragment",
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Primary",
  length(resonances) as "Resonances",
  status
FROM "_planning/fragments"
WHERE type = "kairos-webtext-fragment"
SORT primary-nexus ASC
```

## Nexus Gravity Summary

```dataview
TABLE WITHOUT ID
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Nexus",
  length(rows) as "Fragment Count"
FROM "_planning/fragments"
WHERE type = "kairos-webtext-fragment"
GROUP BY primary-nexus
SORT length(rows) DESC
```

## Fragments with Scene Connections

Fragments that have been linked to specific scenes (via resonances or explicit scene-link):

```dataview
TABLE WITHOUT ID
  file.link as "Fragment",
  regexreplace(primary-nexus, "\[\[|\]\]", "") as "Nexus",
  scene-links as "Scenes"
FROM "_planning/fragments"
WHERE scene-links
SORT primary-nexus ASC
```

## Nexus-Cloud Only Fragments

Fragments that ground nexus pages but don't need narrative embodiment:

```dataview
LIST
FROM "_planning/fragments"
WHERE type = "kairos-webtext-fragment" AND !scene-links
SORT primary-nexus ASC
```

## Cross-Nexus Resonance Map

Which nexus pages share the most fragment resonances?

| Nexus | Most Common Resonances |
|-------|----------------------|
| Quercus | Olea, Thuja, Nerium, Acer |
| Ulmus | Taxus, Olea |
| Acer | Illicium, Tsuga |
| Nerium | Quercus, Acer | 0 primary fragments (frag-14 migrated to Thuja 02-19) |
| Taxus | Ulmus, Thuja, Nyssa |
| Ilex | Alnus, Nyssa |
| Thuja | Alnus, Olea, Ilex | 3 primary fragments: 12b, 14, 01
| Alnus | Olea, Ulmus, Quercus |
| Tsuga | (underdeveloped) |
| Illicium | Nerium, Ilex, Acer |
| Olea | Ulmus, Thuja |
| Nyssa | Ilex, Alnus, Taxus |

---

## Fragment Status Key

| Status | Meaning |
|--------|---------|
| `provisional` | Initial placement, may migrate |
| `anchored` | Placement confirmed, developing |
| `integrated` | Content absorbed into nexus page |
| `scene-bound` | Connected to specific scene(s) |

---

## Fragment Reconfiguration Decisions (Locked 2026-02-18)

Target: 24 dev-log stubs for published webtext (preserving 6/12/24 pattern).

### Merges

| Merge | Result | Rationale |
|-------|--------|-----------|
| frag-04 (Essay as Node) + frag-08 (Process Distinction) | Single stub: essay/node/telos/process | Same argument twice — both say process pedagogy treated essay as telos; constraint structure treats it as platform. Frag-08's elaboration acknowledges the overlap. |
| frag-03 (Past as Store) + frag-15 (Genre Theory + Economy) | Single stub: past as store/capital vs. genre formation/uptake | Both ask what the economy frame adds to genre theory's account of writer's relationship to past; frag-15 is essentially frag-03's elaboration from a different angle. |

### Split

| Original | Becomes | Rationale |
|----------|---------|----------|
| frag-12 (Elbow + Arnold) | **12a**: Elbow + Arnold — authenticity, sublimated self, buried life as inaccessible interiority, mask as reaching-toward. Theoretical recovery: Elbow was always more deconstructively sophisticated than social turn allowed. | The webtext performs the Bartholomae-Elbow debate in multiple registers simultaneously; that performance needs its own stub separate from the Arnold recovery. |
| | **12b**: Elbow + Bartholomae — writer vs. academic as false binary, webtext's four voices (Grant/fiction, Vera/design, nexus/scholarly, arboretum/observational) as refusal of that binary. "Edwards" as third-person author-function construct; "I" reserved for acknowledgments page. | |

### Kept Separate (Confirmed)

| Fragment | Reason to preserve independence |
|----------|---------------------------------|
| frag-10 (AI as Distribution Question) | Pointed contemporary application — positions webtext as timely for 2026 Kairos audience; will age interestingly |
| frag-20 (Technology as Labor-Capital Conversion) | Foundational theoretical claim (Moran/Babbage/Edwards genealogy, $30 tech stack); general principle that earns frag-10's specific application |

### Arithmetic

25 original − 1 (04+08 merge) − 1 (03+15 merge) + 1 (12 split) = **24**

### Standalone Adjustments

- frag-25 (Sixes and Twelves) → standalone stub #24 with expanded development connecting the counting pattern to the experience-goods-time theme from Taxus principle
- frag-23 (Neckties) → stub B: "Why neckties? / How the necktie part worked"
- frag-24 (Twin Bestiaries) → stub A: unix/monster bestiary

### Archive (02-18f)

Retired originals moved to `_planning/fragments/_archive/`:
- `frag-03-past-as-store.md` → superseded by `frag-03+15-past-store-genre-economy.md`
- `frag-04-essay-as-node.md` → superseded by `frag-04+08-essay-node-process.md`
- `frag-08-process-distinction.md` → superseded by `frag-04+08-essay-node-process.md`
- `frag-12-elbow-arnold.md` → superseded by `frag-12a-elbow-arnold.md` + `frag-12b-elbow-bartholomae.md`
- `frag-15-genre-economy.md` → superseded by `frag-03+15-past-store-genre-economy.md`

---

## Working Notes

### Empty/Thin Trees

- **Tsuga** (0 fragments): Space for development—possibly infrastructure/persistence themes
- **Acer** (3 fragments after migration): Nexus page drafted 2026-02-19; syllogism and ontological fragments absorbed
- **Ilex** (1 fragment): Circulation, nodes—may merge with Olea or Nyssa

### Migration Candidates

Fragments to reconsider placement after initial drafting:
- (add as you work)

### Completed Migrations (2026-02-19)

- `frag-21-writing-technology-syllogism.md`: Quercus → **Acer** (syllogism is definitionally Acer's argument)
- `frag-22-economy-inside-classroom.md`: Quercus → **Acer** (ontological move follows from technology definition)
- `frag-07-mild-determinism.md`: Nerium → **Quercus** (environment/exigence framing; no connection to revised Nerium accumulation argument)
- `frag-10-ai-distribution.md`: Nerium → **Olea** (appropriation framing; resonances already pointed to Olea)
- `frag-14-bridle-subjectivity.md`: Nerium → **Thuja** (Bridle's structured non-signal = environment whose permission flags are engineered against the user)
- `frag-19-circulation-primary.md`: Ilex → **Illicium** (Trimbur/circulation content is definitionally Illicium territory)
- `frag-13-galloway-constraint.md`: Thuja → **Alnus** (protocol is system-level constraint behavior, not individual-constraint analysis)
- `frag-02-writing-like-development.md`: Thuja → **Acer** (dev-vocabulary-as-writing-vocabulary is Acer's ontological argument)
- `frag-01-new-dark-age-exigence.md`: Quercus → **Thuja** (New Dark Age exigence = environment whose permission flags are engineered invisible)

### Access Locks

- `frag-23-neckties-design-vocabulary`: First-person narration. Accessible ONLY from acknowledgements and spec. Cannot link to or from nexus, scene, or arboretum pages. Locked 2026-02-19.

---

*Last updated: 2026-02-19 (Thuja revision pass: 3 frags migrated out, 3 migrated in; frag-23 access-locked)*
