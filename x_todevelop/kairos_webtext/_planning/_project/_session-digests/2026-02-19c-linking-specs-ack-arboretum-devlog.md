---
created: 2026-02-19 07:17
type: session-digest
status: current
project: kairos-webtext
session-date: 2026-02-19
threads-touched: [acknowledgments, arboretum, dev-logs, neckties, nexus-neighborhood, webtext-architecture]
tags: [session-digest]
dashboard-worthy: yes
session-type: [architectural]
breakthrough-level: minor
outputs-created:
  fragments: []
  content-modified: []
  tracking-docs-modified: []
priority-changes:
  - {item: "Acknowledgments spec", from: "⚪", to: "🟢", reason: "Link set and hermeticism rules locked"}
  - {item: "Arboretum spec", from: "🟡", to: "🟢", reason: "Local nav locked; body-link-free decision confirmed"}
  - {item: "Neckties access map", from: "⚪", to: "🟢", reason: "Isolation spec locked: 2 inbound, 0 outbound"}
  - {item: "Dev-log link spec", from: "⚪", to: "🟢", reason: "3-link scheme locked with parent + 2 discretionary"}
  - {item: "Dev-log stub assignment", from: "⚪", to: "🟡", reason: "Now tractable; spec in place but matching not yet done"}
title: "Session Digest: Linking Specs — Acknowledgments, Arboretum, Dev-Logs, Neckties"
aliases: ["Session Digest: Linking Specs — Acknowledgments, Arboretum, Dev-Logs, Neckties"]
linter-yaml-title-alias: "Session Digest: Linking Specs — Acknowledgments, Arboretum, Dev-Logs, Neckties"
modified: 2026-02-19 19:15
---

# Session Digest: Linking Specs — Acknowledgments, Arboretum, Dev-Logs, Neckties

**Date:** 2026-02-19<br/>
**Project:** kairos-webtext<br/>
**Session character:** Rapid architectural session locking link specs for four page types (acknowledgments, arboretum, neckties, dev-logs), updating the nexus neighborhood map with two Nerium additions, and confirming Latin binomials for all twelve trees. Primarily constraint-application and spec lock-in work building on the prior session's neighborhood map.

---

## Executive Summary

**For dashboard "Recent Changes":**
- [x] **Nexus neighborhood map updated**: Illicium (10) and Olea (11) now link to Nerium (4); total primary tree links 46; Nerium graduates from 2 to 4 inbound
- [x] **Acknowledgments spec locked**: 6 outbound (G1, V1, arboretum, Illicium, Olea, Nyssa); hermetic inbound (puzzle completion only); `/tree/` location with `/frame/` styling
- [x] **Arboretum spec locked**: body text link-free; local nav = 5 fragments + alt-index (non-button); sole explicit nav link to arboretum is from acknowledgments
- [x] **Neckties isolation locked**: 2 inbound only (arboretum, spec); 0 outbound; first-person convention exception quarantined
- [x] **Dev-log link spec locked**: 3 links per page (1 mandatory parent tree + 2 discretionary); bestiary exception behaves as tree (6 links, no parent, includes alt-index)
- [x] **Latin binomials confirmed for all 12 trees** (Alnus typo corrected from "Aldus")

**Substantive file changes:**<br/>
| File | Change Type | Description |
|------|-------------|-------------|
| (no files modified this session — all decisions captured in this digest) | — | — |

**Priority escalations:**<br/>
| Item | From | To | Reason |
|------|------|-----|--------|
| Acknowledgments spec | ⚪ | 🟢 | Fully locked |
| Arboretum local nav | 🟡 | 🟢 | Fully locked |
| Neckties access map | ⚪ | 🟢 | Fully locked |
| Dev-log link spec | ⚪ | 🟢 | Scheme and exception locked |
| Dev-log stub assignment | ⚪ | 🟡 | Spec in place; matching exercise next |

---

## Architectural Decisions / Structural Changes

### Nerium Inbound Links Expanded

**Decision:** Add Illicium (10) → Nerium (4) and Olea (11) → Nerium (4) to the nexus neighborhood map.

**Rationale:** Conceptually motivated — circulation (10) presupposes accumulated material; appropriation (11) requires accumulated material as raw material. Structurally, both are late-sequence pages pointing back to early-arc concept, pulling readers backward through QUANTITATION. Nerium's low inbound count (was 2) made it a structural weak point.

**Updated graph properties:**
- Total primary tree links: 46 (up from 44)
- Nerium inbound: 4 (up from 2; now matches Ulmus, Taxus tier)
- Low-inbound nodes now only Acer (2) and Nyssa (2)
- Illicium: 4 tree links, 2 dev-log slots (was 3/3)
- Olea: 4 tree links, 2 dev-log slots (was 3/3)

### Acknowledgments Link Spec Locked

**Decision:** Acknowledgments (acknowledgments.html) lives in `/tree/`, styled with `/frame/` palette. 6 outbound links: G1, V1, arboretum, Illicium (#10), Olea (#11), Nyssa (#12). Hermetic inbound — no page links to ack; accessible only via puzzle completion or direct URL.

**Rationale:** Ack functions as reward space (arrival requires labor; once there, it reopens entire webtext). G1/V1 create re-encounter gesture enacting experience-good principle. Arboretum link is sole explicit nav to the hidden garden. Nexus links 10-11-12 chosen because ack _enacts_ circulation (credit), appropriation (acknowledged value), and decomposition (collaboration into named contributions). Triple-register reach (fiction + nexus + arboretum) appropriate for terminal page.

**Design note:** Ack is the only page linking to both fiction tracks AND nexus trees AND arboretum. Styling should keep it feeling like apparatus, not hub.

### Arboretum Local Nav and Body Link Policy Locked

**Decision:** Arboretum body text is link-free. Local nav contains 6 items (non-button-styled): frag-18 (Multiple Appropriation), frag-01 (New Dark Age), frag-11 (Non-Rivalrous), frag-06 (Embodied Agnostic Subject), frag-23/neckties, alt-index (nav-matched, non-button).

**Rationale:** Every other page trains the reader to navigate; arboretum as a space where you just _read_ enacts the experience-good principle — you can't skim for navigation cues, you walk through it. Link-profuse body text converts reading into scanning, pulling the page back into the webtext's dominant register. The sheltered, text-focused quality is the point: the constraint of _not linking_ generates the page's distinctive reading experience. Fragments in nav provide enough outbound to avoid dead-end feel without disrupting contemplative body.

**Inbound:** 12 Latin binomial filename links + acknowledgments (sole explicit nav link).

### Neckties Isolation Locked

**Decision:** Neckties accessible from exactly 2 pages (arboretum, spec). No outbound links. First-person register (convention exception).

**Rationale:** First-person breaks webtext convention, so it needs containment. Arboretum links to it because whimsy/design are thematically native to the garden. Spec links to it because spec is the meta-layer where "how I built this" lives. These are the only two contexts where first-person doesn't rupture convention. Isolation makes the exception legible as exception rather than inconsistency.

### Dev-Log Link Spec Locked

**Decision:** Standard dev-logs get 3 outbound links: 1 mandatory parent tree (the nexus page the dev-log orbits) + 2 discretionary (other trees or other dev-logs). Network feel — dev-logs link laterally to each other, not just upward.

**Rationale:** Reduced link count (3 vs. 6 for trees) becomes a legibility signal: readers learn through encounter that link density communicates hierarchy. Practically reduces link decisions from 144 to 72-96. Prevents dev-logs from competing with tree pages as navigation hubs.

**Exception — Bestiary:** Behaves as tree-scale node. 6 outbound links, no parent tree. Includes alt-index link styled as tree-link (non-button), rhyming with arboretum's alt-index (nav-matched, non-button). Two pages that catalogue webtext contents from different angles, both offering understated exit with track-appropriate styling.

### Latin Binomials Confirmed

All 12 locked for tree page display (right of pipe and filename):

| # | Filename | Binomial |
|---|----------|----------|
| 1 | quercus | _Quercus alba_ |
| 2 | ulmus | _Ulmus americana_ |
| 3 | acer | _Acer saccharum_ |
| 4 | nerium | _Nerium oleander_ |
| 5 | taxus | _Taxus baccata_ |
| 6 | ilex | _Ilex opaca_ |
| 7 | thuja | _Thuja occidentalis_ |
| 8 | alnus | _Alnus glutinosa_ |
| 9 | tsuga | _Tsuga canadensis_ |
| 10 | illicium | _Illicium verum_ |
| 11 | olea | _Olea europaea_ |
| 12 | nyssa | _Nyssa sylvatica_ |

**Correction:** User initially wrote "Aldus glutinosa" — corrected to _Alnus glutinosa_ (Aldus is the Venetian printer).

---

## Formulation Candidates / Key Phrasings

1. **[arboretum/design]** "The arboretum is the one page in the webtext where the constraint is _not linking_." — Framing for why body-link-free policy is itself a constraint-as-generative move rather than a deficit.

2. **[acknowledgments/architecture]** Ack links enact their own theory: circulation of credit (Illicium), appropriation acknowledgment (Olea), decomposition of collaboration into named contributions (Nyssa). — Structural-conceptual alignment worth noting in spec or design documentation.

3. **[dev-log/hierarchy]** "Link density becomes a legibility signal." — Principle: readers learn page hierarchy through encountering different link counts rather than through explicit labeling.

---

## Open Questions

- **Dev-log stub assignment to neighborhoods**: 24 stubs across 12 trees, each with 2-3 dev-log slots. Matching exercise now tractable. — Urgency: medium; Blocking: no; For: nexus page drafting

- **Arboretum fragment overlap with nexus neighborhoods**: Are the 5 arboretum fragments (18, 01, 11, 06, 23) exclusive to arboretum or also assigned as dev-log stubs in the nexus neighborhood map? Exclusivity reinforces containment metaphor. — Urgency: medium; Blocking: no; For: dev-log stub assignment

- **Bestiary 5 link slots**: Bestiary gets 6 links total (5 + alt-index). What are the 5? Pending bestiary/frag-24 merge completion. — Urgency: low; Blocking: no; For: bestiary spec

- **Symmetry audit**: With 10→4 and 11→4 added, confirm no unintended asymmetries needing bidirectionality and no bidirectional links that should be asymmetric. — Urgency: low; Blocking: no; For: nexus page drafting

---

## Discarded Directions

- **Link-profuse arboretum body text**: User's initial impulse was body-text links connecting "you" address to thematic resonances. Reconsidered and rejected: link-profuse body converts reading into scanning, disrupting the contemplative register that distinguishes arboretum from all other pages. The quiet, text-focused quality is the structural enactment.

---

## Cross-References

- Prior digest: [[900_meta/session_digests_archived/2026-02-19b-dependency-complexity-cycle-next-steps-core]] (contains original neighborhood map this session updates)
- Related project files: `nexus-concept-assignments.md`, `trees_principles.md`, `published-directory-spec.md`

---

## Flagged Updates

### Completed This Session
- [x] Nerium inbound links expanded (10→4, 11→4) — captured in this digest
- [x] Acknowledgments spec locked — captured in this digest
- [x] Arboretum local nav and body link policy locked — captured in this digest
- [x] Neckties isolation spec locked — captured in this digest
- [x] Dev-log link spec and bestiary exception locked — captured in this digest
- [x] Latin binomials confirmed — captured in this digest

### Still Pending
- [ ] Published directory spec update: acknowledgments link set, arboretum local nav, dev-log link scheme, neckties access map
- [ ] Neighborhood map tables: update authoritative copy with Nerium additions and dev-log slot adjustments for Illicium/Olea
- [ ] Dev-log stub assignment: matching exercise (24 stubs to 12 trees)
- [ ] Memory update: dev-log link spec, bestiary exception, neckties isolation
