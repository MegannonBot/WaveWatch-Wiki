---
type: decision
id: design-watch-merge
title: The Watch look passes its check and design/watch merges into main
summary: Franco passed the look check from screenshots, approved four small part 2 choices, and ruled to merge design/watch into main now with four layout fixes first in the next Mini run.
date: 2026-10-22
decider: Franco Megannon
status: active
last_updated: 2026-10-22
---

# The Watch look passes its check and design/watch merges into main

## Decision

1. The look check of `design/watch` at `7a99b46` passes. Franco chose to check from the 20 screenshots, not on a phone.
2. `design/watch` (which contains `m0-m2`) merges into `main` now, in one merge ([[decisions/2026-10-21_decision-merge-after-design-check]]).
3. Four part 2 choices are approved: the full form's type chips collapse to the chosen type with "Change type"; incident detail shows the linked report's grade, else the source's usual reliability; quick log offers the three types most logged this month; editing text after "Keep as typed" brings the guard back.
4. Four layout fixes go first in the next Mini run: `outputs/technology/2026-10-22_layout-fixes/`.

## Context

Claude published a look-check page of the screenshots on 2026-10-22 and listed four layout fixes. Franco: "Looks great", then, asked to confirm all of the above, "Yes, all of that".

## Rationale

All tests pass; the fixes are layout tweaks that need not hold back the branch. The phone check was skipped by Franco's choice because a phone cannot reach the test database yet (the app points at `127.0.0.1`).

## Consequences

- `main` holds M0 to M2 in the Watch look once Franco pushes the merge.
- Timing a quick log on a phone (WW-12) still needs the app to reach the test database from a phone; to be added to the next Mini run.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Fix first, then merge | Not chosen by Franco |
| Check on a real phone first | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-merge-after-design-check]] · [[decisions/2026-10-22_decision-design-run-final-choices]]
