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
| Quercus | Olea, Thuja, Nerium |
| Ulmus | Taxus, Olea |
| Acer | Illicium, Tsuga |
| Nerium | Quercus, Thuja, Acer |
| Taxus | Ulmus, Thuja, Nyssa |
| Ilex | Alnus, Nyssa |
| Thuja | Taxus, Ilex, Acer |
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

## Working Notes

### Empty/Thin Trees

- **Tsuga** (0 fragments): Space for development—possibly infrastructure/persistence themes
- **Acer** (1 fragment): Student capacity, interiority—may need fragments from Illicium
- **Ilex** (1 fragment): Circulation, nodes—may merge with Olea or Nyssa

### Migration Candidates

Fragments to reconsider placement after initial drafting:
- (add as you work)

---

*Last updated: 2026-01-26*
