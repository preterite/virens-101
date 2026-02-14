---
title: VIRENS 101 Batch Starter Template
aliases: [VIRENS 101 Batch Starter Template]
linter-yaml-title-alias: VIRENS 101 Batch Starter Template
created: 2026-01-31 14:12
modified: 2026-02-13 20:50
---

# VIRENS 101 Batch Starter Template

**Purpose**: This template provides the standard structure for initiating a new batch of Obsidian note creation. Copy and fill in the bracketed sections before starting generation.

---

## Batch Identification

**Batch Number/Name**: [e.g., "Batch 1F: Requirements" or "Batch 2C1: Basic Fragment Assignments"]

**Batch Status**: [In Progress / Complete]

**Date Started**: [YYYY-MM-DD]

**Estimated Completion**: [YYYY-MM-DD]

---

## Batch Scope

**Target Output**: [Number] paired notes ([X] course-track, [X] reasons-track)

**Components Addressed**: [List component directories, e.g., d_requirements, f_assignments]

**Topics/Files to Create**:
1. [topic-identifier-course-v101.md] + reasons pair
2. [topic-identifier-course-v101.md] + reasons pair
3. [etc.]

**Total Estimated Files**: [Number] files

---

## Batch-Specific Requirements

### Special Structural Requirements

[Note any special formatting, template variations, or structural requirements for this batch]

**Example for assignment batches**:
- All assignment files use Context/Task/Standards/Guidance structure
- Standards must hyperlink to [[outcome-identifier]] format
- Guidance must include concrete examples

**Example for reading guide batches**:
- Include all 9 standard elements (summary, placement, connections, etc.)
- Reading protocol suggestions required
- Common stumbling blocks section required

### Dependencies

**This batch depends on**:
- [List any files that must exist first or be consulted]
- [e.g., "outcomes1-content-v101.md for outcome identifiers"]
- [e.g., "master-schedule-course-v101.md for week placement"]

**This batch will be used by**:
- [List what future work depends on this batch]
- [e.g., "Individual weekly lesson plans require fragment assignments"]

---

## Project Files to Consult

**Core Reference Documents**:
- obsidian-sorting-decisions-summary.md
- engl101-course-design-synthesis.md
- summary-tech-stack-discussion.md
- vault-conventions.md [use this!]

**Content Sources**:
- [Specify which project files contain the content to extract]
- [e.g., "claude-yolo-up.md for theoretical frameworks"]
- [e.g., "07_pedagogical_innovations.md for constraint sequencing"]

**Context Documents**:
- [Specify any CONTINUATION-CONTEXT files]
- [e.g., "CONTINUATION-CONTEXT-1E.md"]

---

## Templates to Use

**Attached Templates**:
- [ ] [template-filename-1.md]
- [ ] [template-filename-2.md]

**Template Notes**: [Any special instructions about template use]

---

## Cross-Referencing Requirements

### Outcome Hyperlinks

**Format**: `[[outcome-identifier]]`

**Available identifiers** (from vault-conventions.md):
- outcome-composing-processes
- outcome-critical-thinking
- outcome-rhetorical-awareness
- outcome-constraint-literacy
- outcome-textual-accumulation
- outcome-workflow-technologies
- outcome-process-documentation

### Vocabulary Hyperlinks

**Format**: `[[vocab-term]]`

**Priority terms for this batch**:
- [List terms that should be linked in this batch]
- [e.g., "fragment, corpus, constraint-sequencing, permission-flags"]

### Sync Groups

**Relevant sync groups for this batch**:
- [List sync-group tags to include in frontmatter]
- [e.g., "fragment-model, assessment-weights"]

### Definition Transclusions

**Definitions to use** (if applicable):
- [List _def-* files to transclude]
- [e.g., "_def-fragment-target-total, _def-fragment-wordcount-range"]

---

## Quality Checklist

Before presenting files for download, verify:

### Content Track (-course- files)
- [ ] Clear, student-facing prose (second person "you")
- [ ] Concrete examples before abstractions
- [ ] All required structural elements present
- [ ] Outcome hyperlinks properly formatted
- [ ] Vocabulary terms linked on first use
- [ ] Paired-justification link in frontmatter
- [ ] Appropriate sync-group tags
- [ ] YAML frontmatter complete and accurate

### Justification Track (-reasons- files)
- [ ] Scholarly register (appropriate for publication)
- [ ] Explicit theoretical grounding with citations
- [ ] Scholar names in cites-scholars array (use controlled vocabulary)
- [ ] Primary-theorist identified
- [ ] Evidence-to-collect section (if applicable)
- [ ] Paired-content link in frontmatter
- [ ] Appropriate sync-group tags
- [ ] YAML frontmatter complete and accurate

### Cross-References
- [ ] All [[wikilinks]] use correct syntax
- [ ] All [[outcome]] links use valid identifiers from vault-conventions.md
- [ ] All [[vocab-term]] links point to terms that will exist
- [ ] Bidirectional links between paired notes work
- [ ] Definition transclusions use correct ![[_def-*]] syntax

### Documentation
- [ ] All files created and named correctly
- [ ] Files organized in appropriate component directories
- [ ] Batch completion notes captured for continuation context

---

## Generation Prompt Template

```
Please consult the Project Files obsidian-sorting-decisions-summary.md, 
engl101-course-design-synthesis.md, summary-tech-stack-discussion.md, 
and vault-conventions.md for guidance on refactoring and apportioning our 
recent past chats into two tracks of Obsidian files using the attached templates.

BATCH STATUS:
- Batches [list]: Complete (attached [CONTINUATION-CONTEXT] for reference)
- CURRENT BATCH: [batch number and name]
- SCOPE: [deliverables]

TEMPLATE REQUIREMENTS:
- Use attached templates: [filenames]
[Paste batch-specific structural requirements here]

CROSS-REFERENCING CONVENTIONS:
[Paste from above section]

QUALITY CRITERIA:
- Course notes: student-facing, actionable, clear
- Reasons notes: scholarly, theoretically grounded, citation-rich
- Both: concise, well-organized, properly formatted YAML frontmatter

Please generate all files for this batch, then present them for download.
```

---

## Post-Batch Notes

**Completed**: [YYYY-MM-DD]

**Files Generated**: [Actual count]

**Issues/Adjustments**: [Note any deviations from plan or lessons learned]

**Next Batch**: [What comes next?]

---

_Template Version: 1.0_<br/>
_Created: 2026-01-22_<br/>
_For: VIRENS 101 Course Design Project_
