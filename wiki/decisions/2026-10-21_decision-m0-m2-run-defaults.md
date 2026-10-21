---
type: decision
id: m0-m2-run-defaults
title: The first build run's choices confirmed, with whole @mentions removed
summary: Franco confirmed choices 7 to 19 and 21 from the M0 to M2 run, and ruled that a pasted @mention is removed whole instead of cut to two words.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# The first build run's choices confirmed, with whole @mentions removed

## Decision

1. Confirmed as built: choices 7 to 19 and 21 in the M0 to M2 handover, section 5 (on branch `m0-m2`, `docs/reports/2026-10-20_m0-m2-handover.md`). Among them: joining needs a verified email; members' emails are stored; a delete must write an audit entry in the same batch; the guard also warns on house numbers and a title with a name and asks once more; a coordinator cannot change their own role; operations keep a responder list; responders and viewers read published briefs only; WhatsApp `.zip` exports are refused. Choices 16 to 18 (colours, fonts, sea colour) are now set by [[decisions/2026-10-21_decision-design-system-watch-approved]].
2. Choice 20 changed: an @mention in pasted WhatsApp text is removed whole, from @ to the next punctuation or line end, and the spot is highlighted in the review step.

## Context

Franco, 2026-10-21, asked to confirm: "Confirm all" for 7 to 19 and 21, and "Remove whole mention" for 20. Claude flagged 20 because "@Johan van Wyk" would leave "Wyk" in the record.

## Rationale

Descriptions, never identities ([[decisions/2026-10-20_decision-identity-boundary]]): a surviving part of a name is an identity.

## Consequences

The @mention change is built in the next Mini run (`outputs/technology/2026-10-21_design-watch-run/`, part 2), with tests.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Keep the two-word cut and rely on review | Not chosen by Franco |

## Related

[[reports/2026-10-20_report_m0-m2-run]] · [[specs/intake-and-redaction]]
