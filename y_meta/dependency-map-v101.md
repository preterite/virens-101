---
created: 2026-01-21
type: teaching-meta
course: virens-101
tags: [teaching, virens-101, meta, dependencies, MOC]
---

# Dependency Map

This note surfaces dependency relationships across the VIRENS 101 vault. Use it to:
- Find notes that need sync review after changes
- See all notes in a given sync group
- Track definition note values and usage
- Identify orphan notes without dependency metadata

---

## 🚨 Notes Needing Sync Review

Notes flagged with `status: needs-sync-review` or with a non-empty `attention-flag`:

```dataview
TABLE 
  status as "Status",
  attention-flag as "Attention Needed", 
  file.mtime as "Modified"
FROM "600_teaching/virens_101"
WHERE status = "needs-sync-review" OR (attention-flag != "" AND attention-flag != null)
SORT file.mtime DESC
```

---

## 📐 Definition Notes

All canonical values that can be transcluded:

```dataview
TABLE 
  def-category as "Category", 
  current-value-summary as "Value", 
  last-verified as "Verified",
  status as "Status"
FROM "600_teaching/virens_101/y_defs"
WHERE type = "teaching-definition"
SORT def-category, def-key
```

### Quick Reference: Transclusion Syntax

To transclude a definition value in another note:
```markdown
![[_def-fragment-wordcount-range]]
```

For the late penalty schedule with block ID:
```markdown
![[_def-late-penalty-schedule#^late-penalty-full]]
```

---

## 🔗 Notes by Sync Group

### Assessment Weights
Notes sharing canonical assessment percentages and point values:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "assessment-weights")
SORT file.name
```

### Fragment Model
Notes sharing fragment specifications (word counts, targets, production rates):

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "fragment-model")
SORT file.name
```

### Time Structure
Notes sharing semester/block/minute values:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "time-structure")
SORT file.name
```

### Movement Schedule
Notes sharing which weeks belong to which movement:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "movement-schedule")
SORT file.name
```

### Tech Stack
Notes sharing tool names, costs, and versions:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "tech-stack")
SORT file.name
```

### Dev Log Specs
Notes sharing dev log frequency and format specifications:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "dev-log-specs")
SORT file.name
```

### Peer Review Specs
Notes sharing Eli Review cycle details and deadlines:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "peer-review-specs")
SORT file.name
```

### Late Policy
Notes sharing late penalty thresholds and percentages:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "late-policy")
SORT file.name
```

### Reading Load
Notes sharing page count limits and reading schedule parameters:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE contains(sync-group, "reading-load")
SORT file.name
```

---

## 📅 Recently Modified (Last 7 Days)

Notes modified recently that may have created sync needs:

```dataview
TABLE 
  sync-group as "Sync Groups", 
  status as "Status", 
  file.mtime as "Modified"
FROM "600_teaching/virens_101"
WHERE file.mtime >= date(today) - dur(7 days) 
  AND type != "teaching-definition" 
  AND type != "teaching-meta"
SORT file.mtime DESC
```

---

## ⚠️ Orphan Notes (No Sync Group)

Notes that may need dependency metadata added:

```dataview
LIST
FROM "600_teaching/virens_101"
WHERE (sync-group = null OR length(sync-group) = 0) 
  AND type != "teaching-definition" 
  AND type != "teaching-meta"
  AND file.name != "dependency-map-v101"
SORT file.folder, file.name
```

---

## 🔄 Paired Notes Integrity Check

Course notes missing their paired justification:

```dataview
LIST paired-justification
FROM "600_teaching/virens_101"
WHERE track = "content" 
  AND (paired-justification = null OR paired-justification = "")
```

Justification notes missing their paired content:

```dataview
LIST paired-content
FROM "600_teaching/virens_101"
WHERE track = "justification" 
  AND (paired-content = null OR paired-content = "")
```

---

## 📊 Vault Statistics

Total course content notes:
```dataview
LIST WITHOUT ID length(rows)
FROM "600_teaching/virens_101"
WHERE track = "content"
GROUP BY true
```

Total justification notes:
```dataview
LIST WITHOUT ID length(rows)
FROM "600_teaching/virens_101"
WHERE track = "justification"
GROUP BY true
```

Total definition notes:
```dataview
LIST WITHOUT ID length(rows)
FROM "600_teaching/virens_101/y_defs"
WHERE type = "teaching-definition"
GROUP BY true
```

---

## Usage Guide

### When You Change a Definition Note

1. Update the value in the definition note body
2. Update `current-value-summary` in frontmatter
3. Update `last-verified` date
4. Check "Notes by Sync Group" above to see what else might need review
5. For each affected note, either update it or set `status: needs-sync-review`

### When You Change a Course/Reasons Note

1. Check if the change affects a canonical value
2. If yes: update the relevant definition note first, then propagate
3. If no: check `affects` field to see downstream notes
4. Consider whether `sync-group` membership should change

### Adding New Notes

1. Use appropriate template (course, reasons, or definition)
2. Fill in `sync-group` based on what canonical values the note references
3. Fill in `depends-on` for notes that must change before this one can
4. Fill in `affects` for notes that should be reviewed if this one changes
5. Fill in `uses-defs` if transcluding any definition notes

---

*Last updated: 2026-01-21*
