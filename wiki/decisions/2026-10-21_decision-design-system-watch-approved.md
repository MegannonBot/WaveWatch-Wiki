---
type: decision
id: design-system-watch-approved
title: The WaveWatch Watch design system is approved
summary: The Design System artifact "WaveWatch Watch" is the approved design system for the web app; a Mini design run applies it on its own branch.
date: 2026-10-21
decider: Franco Megannon
status: active
last_updated: 2026-10-21
---

# The WaveWatch Watch design system is approved

## Decision

1. The Design System artifact "WaveWatch Watch", https://claude.ai/artifact/NL9nPKd5FdBfVvLMiTwZwV (private to Franco), is the approved design system for the WaveWatch web app.
2. A copy for builders sits in the vault at `outputs/product/2026-10-21_design-system-watch/` (design system files and the approved screen mock-ups), because the Mini cannot open private artifacts.
3. Next is the Mini design run on branch `design/watch`, from the brief in `outputs/technology/2026-10-21_design-watch-run/` ([[decisions/2026-10-21_decision-design-run-first]], step 5).

## Context

Asked "Do you approve WaveWatch Watch as it stands, or is there anything to change?", Franco answered on 2026-10-21: "Approve".

## Rationale

It records the approved direction B design ([[decisions/2026-10-21_decision-design-b-approved]]) as tokens, a brand book and components.

## Consequences

- New screens and changes take colours, type and spacing from the design system only.
- The fonts are named as hosted faces in the artifact; the app bundles the files (licence confirmed per package in the design run).
- If the artifact changes, the vault copy is refreshed in the same session.

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Change the design system first | Not chosen by Franco |

## Related

[[decisions/2026-10-21_decision-design-b-approved]] · [[decisions/2026-10-21_decision-design-run-first]]
