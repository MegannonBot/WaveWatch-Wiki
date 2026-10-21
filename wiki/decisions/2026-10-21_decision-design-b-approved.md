---
type: decision
id: design-b-approved
title: Direction B design approved, with team positions and calling the coordinator
summary: The refined direction B screens, phone and computer, are approved; responders may mark their team's position inside an operation and call the coordinator without seeing the number.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Direction B design approved, with team positions and calling the coordinator

## Decision

1. The design of direction B as drawn on the canvas https://claude.ai/artifact/UAf7RoHQDn82UNjNBzRCSE (rows "B Watch, refined" and "Operator screens in B") is approved.
2. Responders can mark their team's position on the operation map, visible only inside that operation.
3. "Call the coordinator" starts a phone call from the screen without showing the number.

Next: record direction B as a Design System artifact for Franco's approval ([[decisions/2026-10-21_decision-design-run-first]], step 4).

## Context

Franco, 2026-10-21, after seeing the computer screens for the control room and the two open points listed in `outputs/product/2026-10-21_design-directions/2026-10-21_product_b-watch-review.md`: "Approve both new additions and the design".

## Rationale

Franco's ruling. The screens follow [[decisions/2026-10-21_decision-design-direction-watch]] and [[decisions/2026-10-21_decision-b-refinement-points]].

## Consequences

- Team positions are location data about responders. How long they are kept and whether they fall under the retention purge is open; POPIA treatment UNVERIFIED, attorney to confirm.
- Calling without showing the number needs a way to place the call (a phone link on the device, or a telephony service at M6). How it works is not decided; any paid service needs Franco's yes.
- The missing person's description shows only while an operation is active, as the privacy spec already says ([[specs/privacy-and-evidence]]).

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Leave out team positions | Not chosen by Franco |
| Show the coordinator's number instead | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-design-direction-watch]] · [[decisions/2026-10-21_decision-b-refinement-points]] · [[decisions/2026-10-20_decision-roles]]
