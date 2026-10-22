---
type: decision
id: design-run-final-choices
title: Five remaining design-run choices
summary: The map keeps type and Pins or Heat on its top bar, More keeps its list of sections, parks and beaches get their own map colours, demo records read "Demo", and "Create incident" is an outline button.
date: 2026-10-22
decider: Franco Megannon
status: active
last_updated: 2026-10-22
---

# Five remaining design-run choices

## Decision

1. The map's top bar keeps "All incident types" and Pins or Heat next to the range and Filters.
2. The More tab keeps its list of sections (members, contacts, sources, audit log, settings).
3. Parks and beaches get their own map colours, `map-park` and `map-beach`, added to the design system; lakes stay in `map-sea`.
4. Demo records show "Demo" in sentence case.
5. In the reports feed "Create incident" is an outline button, so "Log incident" is the only accent button on that screen.

## Context

Choices the Mini made in the design run ([[reports/2026-10-21_report_design-watch-run]] and part 2), put to Franco on 2026-10-22. He chose "Keep them", "Keep the list", "Add park and beach colours" and "Approve both".

## Rationale

Type and heat stay one tap away; members, contacts and the audit log need their own place; park and beach colours were measured: map labels 6.0:1 or more and every family shape 4.8:1 or more on them, light and dark.

## Consequences

The design system and its vault copy were updated on 2026-10-22 (checked by checksum). The Mini copies `tokens.json` into the app and runs `npm run tokens`.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Type and heat inside Filters | Not chosen by Franco |
| A single settings page | Not chosen by Franco |
| Parks and beaches in the land colour | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-design-run-choices]] · [[decisions/2026-10-21_decision-design-system-watch-approved]]
