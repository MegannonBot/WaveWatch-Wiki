---
type: decision
id: merge-after-design-check
title: Merge design/watch into main once, after the phone check
summary: m0-m2 is not merged on its own; design/watch, which contains it, is merged into main once Franco has checked it on his phone.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Merge design/watch into main once, after the phone check

## Decision

`m0-m2` is not merged on its own. Once Franco has checked `design/watch` on his phone in light and dark, `design/watch` (which contains `m0-m2`) is merged into `main` in one merge. Timing a quick log on a phone (WW-12) waits for the new look.

## Context

Claude recommended waiting; Franco, 2026-10-21: "Fine" (merge) and "Fine" (quick log timing on the new look).

## Rationale

One merge of a checked branch keeps `main` to a build Franco has seen.

## Consequences

Needs Franco 9 and 7 wait on the design run.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Merge `m0-m2` now | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-design-run-first]]
