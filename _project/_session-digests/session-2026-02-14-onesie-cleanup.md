---
created: 2026-02-14
type: session-digest
status: current
project: "virens_101"
session-date: 2026-02-14
threads-touched: []
tags: [session-digest, technical-cleanup]
---

# Session Digest: ONESIE Terminology Cleanup

**Date:** 2026-02-14
**Project:** VIRENS 101 Course Design
**Session character:** Systematic deletion of "ONESIE" planning terminology from VIRENS 101 vault. The term (standing for "One New Essential Idea, Introduced Explicitly") was developed as planning apparatus to ensure systematic concept introduction across the 15-week course but proved confusing for student/teacher-facing materials. Complete removal from course files and term replacement in meta-files, preserving the underlying organizational principle while eliminating jargon.

## Theoretical Breakthroughs

None. This session was technical implementation work removing planning terminology, not theoretical development.

## Architectural Decisions

### Decision: Complete Removal of ONESIE Terminology

**Decision:** Remove all instances of "ONESIE/onesies" planning terminology from VIRENS 101 vault, applying different strategies to different file types:
- **Course files** (*-course-v101.md): Complete deletion of all ONESIE references
- **Meta-files** (*-meta-v101.md): Term replacement with descriptive language while preserving the concept
- **Development files** (x_todevelop/): Left as-is (obsolete planning documents)

**Rationale:** The ONESIE concept (concepts requiring single introduction points at specific weeks) remains pedagogically valid as an organizational principle for course planning. However, the acronym created confusion when encountered in student/teacher-facing materials and meta-documentation. The solution preserves the planning logic (tracking which concepts must be introduced in which weeks) while eliminating confusing jargon.

**Replaces:** Previous approach where ONESIE terminology appeared throughout vault, including in weekly overview files that would be seen by students and teaching assistants.

**Architectural impact:** None to course structure or pedagogy. This was purely terminological cleanup that maintains all underlying planning constraints (Difficulty Pair completion weeks, reading-specific concept anchors, movement transition requirements).

## Formulation Candidates

None. Session focused on systematic term replacement rather than formulation development.

## Source Engagement

None. Session was technical file management work.

## Open Questions

None specific to this session. The course design itself has ongoing open questions tracked in other documents, but this cleanup session resolved its specific scope completely.

## Discarded Directions

### Alternative: Keep ONESIE in Meta-Files

Considered retaining ONESIE terminology in meta-files since they're not student-facing. Rejected because:
1. Meta-files are shared with teaching assistants who will teach the course
2. Graduate seminar (ENGL 501) will use these meta-files as training materials
3. Descriptive replacements ("concepts with single introduction points") are clearer for all audiences
4. Publishing the course design (eventual goal) requires accessible language throughout

## Cross-References

This session builds on:
- Previous session (2026-02-14): Citation cleanup work that identified ONESIE terminology as needing removal
- [[synthesis-concept-inventory-meta-v101]]: Core planning document that originally defined ONESIE framework
- [[concept-coverage-matrix-meta-v101]]: Constraint tracking that uses the single-introduction concept logic

## Flagged Updates

- [x] Memory: Update to reflect completion of ONESIE terminology removal across course and meta-files
- [ ] Future consideration: Update x_todevelop/ continuation context files if they're ever revived (currently obsolete)
- [ ] Future consideration: Kairos webtext setup script in x_todevelop/ contains ONESIE references but file may be obsolete

## Session Metrics

**Files modified:** 14 total
- Course files (complete deletion): 10 weekly overview files
- Meta-files (term replacement): 4 files
  - concept-coverage-matrix-meta-v101.md
  - synthesis-concept-inventory-meta-v101.md  
  - development-narrative-meta-v101.md
  - learning-narrative-meta-v101.md
- Session digest: 1 file (session-2026-02-14-citation-cleanup.md)

**Replacement patterns applied:**
- "ONESIE" / "ONESIES" → "single-introduction concept(s)"
- "ONESIE: One New Essential Idea, Introduced Explicitly" → "concepts requiring specific week placement"
- Section headers: "### ONESIES Tracking" → "### Single-Introduction Concepts Tracking"
- Table headers: "ONESIE" column → deleted or replaced with descriptive text
- Standalone markers: Deleted entirely from course files

**Files excluded from cleanup:**
- x_todevelop/unsorted_continuation_contexts/: ~20 instances in obsolete planning files
- x_todevelop/kairos_webtext/setup-kairos-vault.zsh: ~2 instances in development script
- All files in x_todevelop/ are pre-finalization planning documents not part of active course materials

**Verification completed:**
- ✅ All *-course-v101.md files: 0 instances
- ✅ All *-meta-v101.md files: 0 instances
- ✅ All session digest files: 0 instances
- ✅ Primary vault directories (i_week*, y_meta/, _project/) completely clean

**Technical notes:**
- Initial attempt failed due to path confusion between search results and file system access
- Resolution: Used Desktop Commander tools consistently throughout
- Search methodology: case-insensitive, literal string matching for "ONESIE"
- Edit methodology: Used edit_block for surgical replacements with exact old_string matching

## Implementation Notes

The session followed a tier-by-tier approach:
1. **Course files first** (highest priority - student/teacher facing)
2. **Meta-files second** (justification/planning - requires term replacement not deletion)  
3. **Verification scans** (comprehensive search after each tier)

Key insight from implementation: Course files required complete deletion (term serves no purpose in student-facing content), while meta-files required thoughtful replacement (concept remains valid but needs clearer articulation). This dual strategy preserved planning logic while eliminating jargon.
