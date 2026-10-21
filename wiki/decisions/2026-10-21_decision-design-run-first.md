---
type: decision
id: design-run-first
title: A design run comes before milestones M3 and M4
summary: The web app gets its own look through a design run, as for Skiet Goed, before any new features are built.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# A design run comes before milestones M3 and M4

## Decision

Before the M3 and M4 build run, WaveWatch goes through a design run in six steps: an approved brief; three directions on a Claude Design canvas; Franco picks one and rules on one refinement pass; the result is recorded as a Design System artifact; a Mini session applies it on its own branch with no new features; Franco checks it on his phone in light and dark before merge. The brief is `outputs/product/2026-10-21_design-directions/2026-10-21_product_design-brief.md`.

## Context

After running the M0 to M2 build on his laptop on 2026-10-21, Franco said it "seems like it is still very early days" and "I think we should do a design run first, like we do for the other apps". He approved the six-step plan and the brief the same day: "I approve".

## Rationale

Same process as Skiet Goed, where it produced an approved design system and a merged look. Building M3 and M4 in the final look avoids restyling them later.

## Consequences

- The M3 and M4 brief for the Mini waits until the look is merged.
- One direction refines the artifact v4 look, so the choice includes keeping it.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Carry on with M3 and M4 in the current look | Not chosen by Franco |

## Related

[[decisions/2026-10-20_decision-web-stack]] · [[specs/firebase-architecture]]
