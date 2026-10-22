---
type: decision
id: m3-choices-and-merge
title: M3 run choices approved; merge after the phone test
summary: Franco approved all 21 choices from the M3 run and ruled that m3 merges into main after he has timed a quick log on his phone.
date: 2026-10-22
decider: Franco Megannon
status: active
last_updated: 2026-10-22
---

# M3 run choices approved; merge after the phone test

## Decision

1. All 21 choices in the M3 handover (branch `m3`, `docs/reports/2026-10-22_m3-handover.md`, section 4) are approved as built. Among them: case fields refuse identifying details; the SAPS referral gives the position to about 100 m; SAPS texts say "to support SAPS"; the evidence register has the export window and CAS number as fields; only the test database opens to the local network and a production build can never use it.
2. `m3` merges into `main` after Franco has timed a quick log on his phone using the handover's phone steps.
3. Three small fixes found in the check go into the next Mini run: `outputs/technology/2026-10-22_layout-fixes/` items 5 to 8.

## Context

Claude published a check page of all 80 M3 screenshots on 2026-10-22 (https://claude.ai/artifact/SiuAaFtENHMjPGykMaKjaK). Franco chose "Approve all" and "After the phone test".

## Rationale

The choices strengthen existing rules; the phone test is also the first real test of phone access.

## Consequences

Needs Franco 7 (phone timing) now gates the merge.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Merge now from screenshots | Not chosen by Franco |
| Merge after the next run's fixes | Not chosen by Franco |

## Related

[[reports/2026-10-22_report_m3-run]] · [[decisions/2026-10-22_decision-design-watch-merge]]
