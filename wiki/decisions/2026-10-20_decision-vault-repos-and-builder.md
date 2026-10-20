---
type: decision
id: vault-repos-and-builder
title: Vault at ~/WaveWatch, repositories on MegannonBot, built on the Mini
summary: The vault lives in ~/WaveWatch, the repositories are on the MegannonBot GitHub account, and Claude Code on the Mac Mini writes the app code.
date: 2026-10-20
decider: Franco Megannon
status: active
last_updated: 2026-10-20
---

# Vault at ~/WaveWatch, repositories on MegannonBot, built on the Mini

## Decision

The second brain lives in `~/WaveWatch` (created as `~/Wavewatch`) in the Skiet Goed vault shape. GitHub account `MegannonBot` owns `WaveWatch-Wiki` and `WaveWatch-App`. Claude Code on the Mac Mini writes the code from prompts filed in `outputs/technology/`.

## Context

Franco, 2026-10-20, answered three questions: vault "~/WaveWatch", GitHub "MegannonBot", builder "Claude Code on the Mini". He asked that the structure be copied from another project; the Skiet Goed vault was read on 2026-10-20 as the template.

## Rationale

Same pattern as Skiet Goed, which already works with two writers and an autosave.

## Consequences

First-time setup in [[runbooks/first-time-setup]]. Mini rules in [[runbooks/mini-vault-writes]].

## Alternatives considered

| Alternative | Why not chosen |
|---|---|
| Certech account | Franco chose MegannonBot |
| Build in Cowork | No emulator runs here |

## Related

[[runbooks/first-time-setup]] · [[runbooks/mini-vault-writes]]
