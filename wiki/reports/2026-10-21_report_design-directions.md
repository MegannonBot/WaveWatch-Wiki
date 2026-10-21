---
type: report
title: Rulings, laptop build and three design directions
summary: Franco ruled on the architecture, the operator and Hannes's start; ran the build on his laptop; and three design directions were drawn for him to choose from.
status: active
last_updated: 2026-10-21
---

# Rulings, laptop build and three design directions

## What was asked

Start of session summary; rulings on the open Needs Franco items; a first look at the M0 to M2 build; then a design run before M3 and M4.

## What was done

- Rulings filed: six architecture proposals approved, [[decisions/2026-10-21_decision-operator-megannon-me]], [[decisions/2026-10-21_decision-hannes-starts-on-web-app]], [[decisions/2026-10-21_decision-design-run-first]].
- The Certech and Skiet Goed vaults were read (read only) to compare stacks.
- Franco cloned `WaveWatch-App` to `~/WaveWatch-App` on the laptop, installed Java 21 (Homebrew, not linked), ran `npm install`, the emulator, the seed and the dev server, and signed in as the demo coordinator. npm reported 29 vulnerabilities (2 low, 11 moderate, 16 high), not investigated.
- Three design directions drawn on the canvas https://claude.ai/artifact/UAf7RoHQDn82UNjNBzRCSE (12 screens), checked and compared: `outputs/product/2026-10-21_design-directions/`.

## Needs a decision

1. Which direction: A Tide, B Watch or C Beacon. Claude recommends C with B's 24-hour strip (proposed).

## Not done

- WW-12: timing a quick log on a phone.
- The 15 run defaults (handover section 5) and the merge of `m0-m2`.
- Sign-in, full form, settings and empty, loading and error states: drawn only for the chosen direction.
- The npm audit findings: for the next Mini brief.
