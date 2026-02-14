# VIRENS 101 Dependency Management Files

## Contents

This package contains 22 files for implementing dependency management in your VIRENS 101 vault:

### Definition Notes (18 files)
Located in `y_defs/`:
- `_def-fragment-wordcount-range.md` — 150-400 words
- `_def-fragment-target-total.md` — 40-50 fragments
- `_def-fragment-production-rate.md` — 3-4 fragments per week
- `_def-fragment-definition.md` — one claim with supporting evidence
- `_def-portfolio-weight.md` — 50%
- `_def-formative-weight.md` — 50%
- `_def-dev-log-frequency.md` — 2× per week
- `_def-eli-review-cost.md` — $20/student
- `_def-semester-weeks.md` — 15 weeks
- `_def-blocks-per-week.md` — 6 blocks
- `_def-block-duration.md` — 25 minutes
- `_def-available-blocks.md` — 62 blocks
- `_def-M1-weeks.md` — Weeks 1-3
- `_def-M2-weeks.md` — Weeks 4-7
- `_def-M3-weeks.md` — Weeks 8-11
- `_def-M4-weeks.md` — Weeks 12-15
- `_def-reading-load-max.md` — 40-60 pages per week
- `_def-late-penalty-schedule.md` — 20%/30%/50% graduated penalties

### Templates (3 files)
Located in `templates/`:
- `template-course-content-v101.md` — Updated with dependency fields
- `template-reasons-v101.md` — Updated with dependency fields
- `template-definition-v101.md` — New template for definition notes

### Meta Notes (1 file)
Located in `y_meta/`:
- `dependency-map-v101.md` — MOC with Dataview queries

---

## Installation Instructions

### Step 1: Create the y_defs folder

In your vault at `/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/`:

```zsh
mkdir -p /Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_defs
```

### Step 2: Copy definition notes

Copy all 18 `_def-*.md` files from the downloaded `y_defs/` folder to:
```
/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_defs/
```

### Step 3: Copy dependency map

Copy `dependency-map-v101.md` to:
```
/Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101/y_meta/
```

### Step 4: Update your templates

**Option A: Replace existing templates**
Copy the three template files to your Obsidian templates folder (wherever you keep templates for this vault).

**Option B: Merge with existing templates**
Add these YAML fields after your existing `status:` line in your current templates:

```yaml
# === DEPENDENCY MANAGEMENT ===
sync-group: []
depends-on: []
affects: []
uses-defs: []
last-sync-check: 
attention-flag: ""
```

### Step 5: Retrofit existing notes (batch script)

Run this from your vault root to add empty dependency fields to existing notes:

```zsh
cd /Users/preterite/Local/virens/user1/Scholar/600_teaching/virens_101

for f in **/*-v101.md; do
  # Skip definition notes and meta notes
  if [[ "$f" == y_defs/* ]] || [[ "$f" == y_meta/* ]]; then
    continue
  fi
  
  # Skip if already has sync-group
  if rg -q '^sync-group:' "$f"; then
    continue
  fi
  
  # Add dependency fields after status line
  sd '(^status: .+)' '$1

# === DEPENDENCY MANAGEMENT ===
sync-group: []
depends-on: []
affects: []
uses-defs: []
last-sync-check: 
attention-flag: ""' "$f"
  
  echo "Updated: $f"
done
```

**Note**: This uses `sd` for substitution. If you prefer `sed`:
```zsh
sed -i '' '/^status: /a\
\
# === DEPENDENCY MANAGEMENT ===\
sync-group: []\
depends-on: []\
affects: []\
uses-defs: []\
last-sync-check: \
attention-flag: ""' "$f"
```

### Step 6: Verify Dataview plugin

The dependency map requires the Dataview plugin. Verify it's installed and enabled:
1. Open Obsidian Settings → Community plugins
2. Search for "Dataview" 
3. Install and enable if not already

---

## Usage

### Transcluding definition values

In any note, transclude a definition value:
```markdown
Each fragment should be ![[_def-fragment-wordcount-range]] containing ![[_def-fragment-definition]].
```

Renders as: "Each fragment should be 150-400 words containing one claim with supporting evidence."

### Using sync groups

When creating/editing a note, add relevant sync groups:
```yaml
sync-group: [fragment-model, assessment-weights]
```

Available sync groups:
- `assessment-weights`
- `fragment-model`
- `time-structure`
- `movement-schedule`
- `tech-stack`
- `dev-log-specs`
- `peer-review-specs`
- `late-policy`
- `reading-load`

### Flagging for review

To flag a note for later sync review:
```yaml
status: needs-sync-review
attention-flag: "Check if fragment count change affects M2 assignment sheets"
```

### Checking dependencies

Open `y_meta/dependency-map-v101.md` to see:
- Notes needing sync review
- All definition values
- Notes grouped by sync group
- Recently modified notes
- Orphan notes without sync groups

---

## File Structure After Installation

```
virens_101/
├── a_description/
├── b_overview/
├── c_rationale/
├── ...
├── y_defs/                          ← NEW FOLDER
│   ├── _def-fragment-wordcount-range.md
│   ├── _def-fragment-target-total.md
│   ├── _def-fragment-production-rate.md
│   ├── _def-fragment-definition.md
│   ├── _def-portfolio-weight.md
│   ├── _def-formative-weight.md
│   ├── _def-dev-log-frequency.md
│   ├── _def-eli-review-cost.md
│   ├── _def-semester-weeks.md
│   ├── _def-blocks-per-week.md
│   ├── _def-block-duration.md
│   ├── _def-available-blocks.md
│   ├── _def-M1-weeks.md
│   ├── _def-M2-weeks.md
│   ├── _def-M3-weeks.md
│   ├── _def-M4-weeks.md
│   ├── _def-reading-load-max.md
│   └── _def-late-penalty-schedule.md
├── y_meta/
│   └── dependency-map-v101.md       ← NEW FILE
└── z_uncategorized/
```

---

## Updating Definition Values

When a canonical value changes (e.g., fragment target changes from 40-50 to 35-45):

1. **Edit the definition note** (`_def-fragment-target-total.md`):
   - Change body from `40-50 fragments` to `35-45 fragments`
   - Update `current-value-summary` in YAML
   - Update `last-verified` date

2. **Check downstream impact**:
   - Open `dependency-map-v101.md`
   - Look at "Fragment Model" sync group
   - Review each listed note for needed updates

3. **Update or flag affected notes**:
   - If you can update now: make the change, update `last-sync-check`
   - If deferring: set `status: needs-sync-review` and add `attention-flag`

---

*Generated 2026-01-21*
