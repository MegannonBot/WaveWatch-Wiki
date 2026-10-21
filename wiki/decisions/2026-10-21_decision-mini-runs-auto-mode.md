---
type: decision
id: mini-runs-auto-mode
title: Mini build runs may use auto mode
summary: Claude Code build runs on the Mac Mini may run in auto mode; the hard limits in each brief still apply.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# Mini build runs may use auto mode

## Decision

Build runs on the Mac Mini may run in Claude Code's auto mode. The project allow-list stays in place, and every brief keeps its hard limits (no cloud, no pushes to `main`, no force-push, other projects untouched).

## Context

The first run (M0 to M2) ran in auto mode although the brief assumed normal mode ([[reports/2026-10-20_report_m0-m2-run]]). Franco, 2026-10-21: "Auto is Fine".

## Rationale

Franco is away during runs, and the run respected every limit.

## Consequences

Briefs state auto mode and rely on the hard limits and the deny list, not on permission prompts. Each handover still lists commands outside the allow-list.

## Alternatives considered

Normal mode with the allow-list, where unlisted commands wait for Franco.

## Related

[[runbooks/mini-vault-writes]], [[decisions/2026-10-20_decision-vault-repos-and-builder]]
