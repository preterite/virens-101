---
type: implementation-spec
project: virens-101-quartz-export
created: 2026-02-14
status: ready-for-implementation
track: Code + Manual
depends-on: [virens-101 content completion, Kairos webtext draft]
---

# VIRENS 101 Quartz Export — Implementation Spec

## Purpose

Export a selected subset of the VIRENS 101 Obsidian subvault as a Quartz static site. The site serves as **inspectable evidence** for the Kairos webtext submission: reviewers read arguments in the webtext, then follow inline links into the Quartz site to verify claims against actual course materials. The Quartz graph view and associative wikilink navigation are themselves evidence for the course's design principles.

## Architecture

```
Kairos webtext (HTML)
  │
  ├── inline links ──────────► Quartz site (static)
  │                               │
  │                               ├── course content (a-k folders)
  │                               ├── definitions (y_defs)
  │                               ├── meta/infrastructure (y_meta)
  │                               ├── wikilink navigation
  │                               └── graph view
  │
  └── hosted separately           └── hosted on GitHub Pages
      (Kairos servers)                ({baseUrl})
```

## Scope

### Included

| Directory | Contents | Evidentiary Role |
|-----------|----------|------------------|
| `a_description/` | Catalog and course descriptions + reasons | Course framing |
| `b_overview/` | Movement overviews, process pedagogy, structural docs | Pedagogical architecture |
| `c_rationale/` | Design justifications for every major decision | "Why" layer |
| `d_requirements/` | Prerequisites, tech, time commitment + reasons | Constraint transparency |
| `e_outcomes/` | Learning outcomes, alignment matrix | Assessment design |
| `f_assignments/` | All assignments + reasons + instructor prompts + peer review cycles | Assignment architecture |
| `g_studentreadings/` | Reading guides + reasons for each assigned text | Reading selection rationale |
| `h_policies/` | All policies + reasons | Policy as pedagogy |
| `i_schedule/` | Consolidated semester schedule | Temporal structure |
| `i_week01/` – `i_week15/` | Weekly overviews | Sequencing evidence |
| `j_assessment/` | Grading, portfolio, rubric, revision + reasons | Assessment philosophy |
| `k_reflection/` | Transition reflections, cover letter, mid-semester + reasons | Reflective architecture |
| `l_gratitude/` | Acknowledgments (once populated) | — |
| `m_workscited/` | Works cited (once populated) | Source base |
| `n_vocabulary/` | Course vocabulary (once populated) | Conceptual vocabulary |
| `y_defs/` | Parametric definitions (block duration, fragment counts, etc.) | Parametric design evidence |
| `y_meta/` | Dependency map, coverage matrix, outcomes codes, conventions | Infrastructure evidence |
| `README.md` | → becomes `index.md` (Quartz home page) | Entry point |

### Excluded

| Directory | Reason |
|-----------|--------|
| `_project/` | Development scaffolding, session digests, audits |
| `x_todevelop/` | Contains the Kairos webtext itself (circular) |
| `z_templates/` | Obsidian template machinery |
| `z_uncategorized/` | Empty |
| `LICENSE-DOCS` | Not course content |

---

## Prerequisites

- **Node.js v22+** — verify with `node --version`; install via `fnm install 22` if needed
- **npm v10.9.2+**
- **GitHub account** with a repository for the Quartz site
- **Obsidian** with Quartz Syncer plugin (for Dataview compilation)

---

## Step 1: Initialize Quartz

```zsh
cd ~/Local
git clone https://github.com/jackyzha0/quartz.git virens-101-site
cd virens-101-site
npm i
npx quartz create
# Choose: Empty Quartz
```

Create the GitHub repo (can be private; GitHub Pages works on private repos with Pro/Education):

```zsh
git remote set-url origin https://github.com/YOURUSERNAME/virens-101-site.git
```

---

## Step 2: Content Sync Script

Create `~/Local/virens-101-site/sync-content.zsh`:

```zsh
#!/bin/zsh
# sync-content.zsh
# Copies publishable virens-101 content into Quartz content directory.
# Run before each build. Idempotent.

set -euo pipefail

SRC=~/Local/virens/user1/Scholar/600_teaching/virens_101
DEST=~/Local/virens-101-site/content

echo "Syncing virens-101 → Quartz content..."

# Clean destination (preserve .gitkeep if present)
find "$DEST" -mindepth 1 -not -name '.gitkeep' -delete 2>/dev/null || true

# Publishable directories
DIRS=(
    a_description
    b_overview
    c_rationale
    d_requirements
    e_outcomes
    f_assignments
    g_studentreadings
    h_policies
    i_schedule
    i_week01 i_week02 i_week03 i_week04 i_week05
    i_week06 i_week07 i_week08 i_week09 i_week10
    i_week11 i_week12 i_week13 i_week14 i_week15
    j_assessment
    k_reflection
    l_gratitude
    m_workscited
    n_vocabulary
    y_defs
    y_meta
)

for dir in "${DIRS[@]}"; do
    if [[ -d "$SRC/$dir" ]]; then
        # Copy directory, excluding .DS_Store
        rsync -a --exclude='.DS_Store' "$SRC/$dir" "$DEST/"
    fi
done

# Home page: README → index.md
cp "$SRC/README.md" "$DEST/index.md"

# Count
COUNT=$(find "$DEST" -name '*.md' | wc -l | tr -d ' ')
echo "Synced $COUNT markdown files."
```

```zsh
chmod +x ~/Local/virens-101-site/sync-content.zsh
```

---

## Step 3: Configure `quartz.config.ts`

Replace the default configuration with:

```typescript
import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

const config: QuartzConfig = {
  configuration: {
    pageTitle: "VIRENS 101",
    pageTitleSuffix: " — Course Evidence",
    enableSPA: true,
    enablePopovers: true,
    analytics: null,
    locale: "en-US",
    baseUrl: "YOURUSERNAME.github.io/virens-101-site",
    ignorePatterns: [
      ".DS_Store",
      "**/.obsidian/**",
    ],
    defaultDateType: "created",
    theme: {
      fontOrigin: "googleFonts",
      cdnCaching: true,
      typography: {
        header: "Schibsted Grotesk",
        body: "Source Sans Pro",
        code: "IBM Plex Mono",
      },
      colors: {
        lightMode: {
          light: "#faf8f5",
          lightgray: "#e5e2db",
          gray: "#9e9a91",
          darkgray: "#3d3a33",
          dark: "#1a1814",
          secondary: "#3d6b45",    // VIRENS green
          tertiary: "#5a9963",
          highlight: "rgba(61, 107, 69, 0.12)",
          textHighlight: "#b3d4b8",
        },
        darkMode: {
          light: "#1a1e1b",
          lightgray: "#2d332e",
          gray: "#6b7a6e",
          darkgray: "#c8d1ca",
          dark: "#e8ede9",
          secondary: "#7bc47f",
          tertiary: "#5a9963",
          highlight: "rgba(123, 196, 127, 0.12)",
          textHighlight: "#2d4a30",
        },
      },
    },
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.CreatedModifiedDate({
        priority: ["frontmatter", "filesystem"],
      }),
      Plugin.SyntaxHighlighting(),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Description(),
      Plugin.Latex({ renderEngine: "katex" }),
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.AliasRedirects(),
      Plugin.ComponentResources(),
      Plugin.ContentPage(),
      Plugin.FolderPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({
        enableSiteMap: true,
        enableRSS: false,
      }),
      Plugin.Assets(),
      Plugin.Static(),
      Plugin.NotFoundPage(),
    ],
  },
}

export default config
```

### Configuration Notes

- **`enablePopovers: true`** — hover previews on wikilinks. Critical for reviewers: they can preview linked pages without navigating away.
- **`markdownLinkResolution: "shortest"`** — matches Obsidian's wikilink resolution (finds files by shortest unique path match).
- **Colors** — green palette to match VIRENS identity. Adjust to taste.
- **RSS disabled** — this isn't a feed; it's a static evidence archive.

---

## Step 4: Install Quartz Syncer (Dataview Compilation)

In Obsidian:
1. Settings → Community Plugins → Browse → "Quartz Syncer" → Install → Enable
2. Configure: Settings → Quartz Syncer
   - **GitHub repo**: `YOURUSERNAME/virens-101-site`
   - **GitHub token**: generate a fine-grained PAT with Contents read/write on that repo only
   - **Content folder**: `content`
   - **Enable Dataview compilation**: ON

Quartz Syncer compiles Dataview blocks into static markdown before pushing. It caches results and recompiles when source data changes.

**Alternative if you prefer not to use Quartz Syncer:** The sync script (Step 2) can be extended with a pre-processing step that runs the Dataview Publisher plugin's CLI export, or you can manually bake Dataview results by running a script that replaces dataview code blocks with their rendered output. For a one-time or infrequent publish cycle, manual baking may be simpler.

---

## Step 5: Handle Wikilink Resolution

### Internal links (will resolve)

All wikilinks between files within the exported scope resolve normally. The `paired-justification` links (e.g., `[[M1-surfacing-overview-reasons-v101]]`) are the primary navigation mechanism and will work because both course and reasons files are included.

### Links to files outside export scope

Some weekly overviews and course content files may link to vault files outside the virens-101 subfolder (e.g., references to zettels in `300_zettels/` or domain notes in `400_domain/`). These will render as unresolved text in Quartz — visible but not clickable.

**Audit command** (run from the synced content directory):

```zsh
cd ~/Local/virens-101-site/content
# Extract all wikilink targets
grep -roh '\[\[[^]|]*' . | sed 's/\[\[//' | sort -u > /tmp/link-targets.txt
# List all available files (without extension)
find . -name '*.md' | sed 's|^\./||; s|\.md$||; s|.*/||' | sort -u > /tmp/available-files.txt
# Show broken links
comm -23 /tmp/link-targets.txt /tmp/available-files.txt
```

**Decision:** Broken outbound links are acceptable for evidentiary purposes — they show the course is part of a larger knowledge system. If any are distracting, convert them to plain text in a post-sync processing step.

---

## Step 6: Citekey Links

Your files contain `[[@citekey]]` wikilinks to literature notes in `200_readings/`. These are outside the export scope and will be unresolved. Since the citekeys appear in formatted references (e.g., `[[@kirschenbaum2023prepa]]`), they'll render as plain text showing the citekey — which is actually informative for reviewers (they can see the citation infrastructure).

If you want them to resolve, you could include the relevant literature notes in the export. But that's a scope expansion decision for later.

---

## Step 7: GitHub Pages Deployment

Create `.github/workflows/deploy.yml` in the Quartz repo:

```yaml
name: Deploy Quartz site to GitHub Pages

on:
  push:
    branches:
      - v4

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: actions/setup-node@v4
        with:
          node-version: 22
      - name: Install Dependencies
        run: npm ci
      - name: Build Quartz
        run: npx quartz build
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: public

  deploy:
    needs: build
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

In the GitHub repo: Settings → Pages → Source → "GitHub Actions".

---

## Step 8: Build and Preview

```zsh
cd ~/Local/virens-101-site
./sync-content.zsh
npx quartz build --serve
# Opens at http://localhost:8080
```

Verify:
- [ ] Home page renders from README content
- [ ] Wikilinks between course/reasons pairs resolve and are clickable
- [ ] Graph view shows the associative structure
- [ ] Hover popovers work on wikilinks
- [ ] `y_defs/` files are navigable
- [ ] `y_meta/` files are navigable
- [ ] Folder pages auto-generate for each directory
- [ ] Weekly overview wikilinks to assignments, readings, policies resolve
- [ ] Dataview blocks render as static content (if using Quartz Syncer)
- [ ] Unresolved links (to files outside scope) render as plain text, not broken HTML

---

## Step 9: Publish

```zsh
cd ~/Local/virens-101-site
npx quartz sync
```

This commits content and pushes to GitHub, triggering the Pages deployment.

---

## URL Convention

Base URL pattern: `https://YOURUSERNAME.github.io/virens-101-site/`

Quartz generates URLs from file paths relative to `content/`:

```
content/b_overview/M1-surfacing-overview-course-v101.md
  → {baseUrl}/b_overview/M1-surfacing-overview-course-v101

content/f_assignments/instructor_prompts/instructor-prompt-block1-2-technological-literacy-course-v101.md
  → {baseUrl}/f_assignments/instructor_prompts/instructor-prompt-block1-2-technological-literacy-course-v101

content/y_defs/_def-block-duration.md
  → {baseUrl}/y_defs/_def-block-duration
```

**For Kairos webtext inline links**, use the full URL. Example HTML in a Kairos page:

```html
<a href="https://YOURUSERNAME.github.io/virens-101-site/i_week01/week01-overview-course-v101"
   target="_blank" rel="noopener">Week 1 overview</a>
```

### URL Quick Reference (Key Pages)

**Weekly overviews:**
- `i_week01/week01-overview-course-v101` through `i_week15/week15-overview-course-v101`

**Movement overviews:**
- `b_overview/M1-surfacing-overview-course-v101`
- `b_overview/M2-naming-overview-course-v101`
- `b_overview/M3-scale-overview-course-v101`
- `b_overview/M4-synthesis-overview-course-v101`

**Movement rationale:**
- `b_overview/M1-surfacing-overview-reasons-v101`
- `b_overview/M2-naming-overview-reasons-v101`
- `b_overview/M3-scale-overview-reasons-v101`
- `b_overview/M4-synthesis-overview-reasons-v101`

**Key structural docs:**
- `b_overview/six-moves-process-pedagogy-course-v101`
- `b_overview/yolo-up-constrain-down-course-v101`
- `b_overview/course-time-structure-course-v101`
- `b_overview/integration-map-course-v101`
- `i_schedule/virens-101-semester-schedule-consolidated`

**Assignments:**
- `f_assignments/literacy-narrative-assignment-course-v101`
- `f_assignments/fragment-production-assignment-course-v101`
- `f_assignments/spec-document-constraint-audit-assignment-course-v101`
- `f_assignments/annotated-bibliography-assignment-course-v101`
- `f_assignments/documented-inquiry-assignment-course-v101`
- `f_assignments/system-map-assignment-course-v101`
- `f_assignments/process-archaeology-assignment-course-v101`
- `f_assignments/transfer-proposal-assignment-course-v101`

**Readings (course-facing + rationale pairs):**
- `g_studentreadings/kirschenbaum-textpocalypse-course-v101`
- `g_studentreadings/ong-writing-restructures-consciousness-course-v101`
- `g_studentreadings/star-ethnography-infrastructure-course-v101`
- `g_studentreadings/meadows-leverage-points-course-v101`
- `g_studentreadings/bush-memex-course-v101`
- `g_studentreadings/alexander-goodness-fit-course-v101`
- `g_studentreadings/norman-design-everyday-course-v101`
- `g_studentreadings/brooks-silver-bullet-course-v101`
- `g_studentreadings/salvatori-conversations-texts-course-v101`
- `g_studentreadings/jackson-body-palimpsest-course-v101`
- `g_studentreadings/bernstein-blood-course-v101`
- `g_studentreadings/downs-rhetoric-course-v101`
- `g_studentreadings/ribes-jackson-databite-course-v101`
- `g_studentreadings/library-babel-composite-course-v101`
- `g_studentreadings/readme-examples-composite-course-v101`

**Design rationale (c_rationale):**
- `c_rationale/textual-accumulation-reasons-v101`
- `c_rationale/corpse-compost-garden-reasons-v101`
- `c_rationale/writing-labor-capital-reasons-v101`
- `c_rationale/constraint-sequencing-reasons-v101`
- `c_rationale/failure-as-diagnostic-reasons-v101`
- `c_rationale/four-constellations-reasons-v101`
- `c_rationale/yolo-up-constrain-down-reasons-v101`

**Parametric definitions:**
- `y_defs/_def-block-duration`
- `y_defs/_def-fragment-wordcount-range`
- `y_defs/_def-fragment-target-total`
- `y_defs/_def-reading-load-max`
- `y_defs/_def-semester-weeks`
- (full list: 18 definition files)

**Meta/infrastructure:**
- `y_meta/dependency-map-v101`
- `y_meta/concept-coverage-matrix-meta-v101`
- `y_meta/outcomes-codes-v101`
- `y_meta/vault-conventions`

**Assessment:**
- `j_assessment/portfolio-rubric-content-v101`
- `j_assessment/formative-grading-content-v101`
- `j_assessment/revision-credit-course-v101`

**Policies (all paired course/reasons):**
- `h_policies/ai-academic-integrity-course-v101`
- `h_policies/attendance-policy-course-v101`
- `h_policies/late-work-policy-course-v101`
- (10 policy areas, each with course + reasons files)

**Reflection:**
- `k_reflection/M1-to-M2-transition-reflection-course-v101`
- `k_reflection/evidence-based-reflection-guide-course-v101`
- `k_reflection/portfolio-cover-letter-prompt-course-v101`

---

## Publish Workflow (Ongoing)

```zsh
# After editing course materials in Obsidian:
cd ~/Local/virens-101-site
./sync-content.zsh          # re-copy content
npx quartz build --serve    # preview locally
# If satisfied:
npx quartz sync             # push to GitHub → auto-deploy
```

---

## File Count Summary

| Section | Files |
|---------|-------|
| a_description | 4 |
| b_overview | 20 |
| c_rationale | 15 |
| d_requirements | 6 |
| e_outcomes | 4 |
| f_assignments | 33 (including instructor_prompts/ and peer_review_cycles/) |
| g_studentreadings | 30 |
| h_policies | 20 |
| i_schedule | 1 |
| i_week01–i_week15 | 16 |
| j_assessment | 10 |
| k_reflection | 12 |
| y_defs | 18 |
| y_meta | 9 |
| index.md | 1 |
| **Total** | **~199** |

Plus `l_gratitude/`, `m_workscited/`, `n_vocabulary/` once populated.

---

## Known Limitations

1. **Dataview queries** render as code blocks unless pre-compiled via Quartz Syncer or manual baking. Affected files need identification (at minimum `e_outcomes/outcomes1-content-v101`).

2. **Citekey wikilinks** (`[[@citekey]]`) will be unresolved — they point to literature notes outside the export scope. They render as text showing the citekey, which is informative but not clickable.

3. **`i_week14/` and `i_weekexam/`** are empty directories and will produce empty folder pages. Either exclude them from the sync script or populate them.

4. **Frontmatter is visible** in Quartz's page rendering (Quartz displays select frontmatter fields). The rich YAML frontmatter in your files (sync-group, depends-on, affects, uses-defs, etc.) becomes part of the evidence — reviewers can see the dependency management infrastructure. If any frontmatter fields should be hidden, configure the FrontMatter plugin.

5. **Graph view** will show the full link structure of the exported subset. Files with many wikilinks (weekly overviews, the integration map) will be central nodes. This is a feature, not a bug — it visualizes the argument about associative course design.
