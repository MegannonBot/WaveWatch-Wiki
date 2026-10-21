---
type: decision
id: design-direction-watch
title: Design direction is B, Watch
summary: The web app's look is direction B, Watch: a control room log with a 24-hour watch strip, IBM Plex type and an amber accent.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Design direction is B, Watch

## Decision

The web app takes direction B, Watch, as drawn on the canvas https://claude.ai/artifact/UAf7RoHQDn82UNjNBzRCSE (private to Franco), row B:

1. **Type:** IBM Plex Sans for text, IBM Plex Mono for times, grades and labels (open licence; bundling check UNVERIFIED until the refinement pass).
2. **Colour:** near-black ink on light grey, amber accent (`#8A5300` light, `#F2A93B` dark); light and dark both designed.
3. **Identity from content:** a 24-hour watch strip with each incident as a tick and a marker for now; times in a fixed column in lists and the feed.
4. **Status without colour alone:** a shape per incident family on the map (square, circle, triangle), text on every chip.
5. **Shapes:** square-cornered (4 to 6 px radius), hairline borders.

Next: one refinement pass that draws the remaining screens and states and fixes the control border contrast found in the comparison, then a Design System artifact for Franco to approve ([[decisions/2026-10-21_decision-design-run-first]]).

## Context

Franco, 2026-10-21, after seeing the three directions: "I like B the most." Claude had recommended C, Beacon, with B's watch strip (`outputs/product/2026-10-21_design-directions/2026-10-21_product_direction-comparison.md`).

## Rationale

Franco's choice. From the comparison: B has the strongest working feel for the coordinator, and the watch strip answers what happened tonight at a glance.

## Consequences

- Risk carried from the comparison: monospace may feel technical to role players. The refinement pass keeps mono to times, grades and labels only.
- Every text pair measured passes WCAG AA; input and outline button borders are below 3:1 and are fixed in the refinement pass.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| A Tide, the artifact v4 look refined | Not chosen by Franco |
| C Beacon, suburbs as the spine (Claude's recommendation) | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-design-run-first]] · [[reports/2026-10-21_report_design-directions]]
