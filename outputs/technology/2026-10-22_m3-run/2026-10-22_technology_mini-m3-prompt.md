# WaveWatch: layout fixes, phone access and milestone M3 on the Mac Mini

**Read this first.** You are Claude Code on Franco's Mac Mini, in `~/wavewatch/WaveWatch-App`, in auto mode (vault decision mini-runs-auto-mode). Franco is away. Nothing is in production and nothing you do may touch a cloud service. Commit and push after every finished step. Your last two runs hit the usage limit: if you are close to it, stop at a clean commit and write the handover first.

## Where things are

- App: `~/wavewatch/WaveWatch-App`. `main` now holds M0 to M2 in the Watch look (`5d9a983`). Work on a new branch `m3` from `main`.
- Vault: `~/wavewatch/WaveWatch-Wiki`. Start with `git -C ~/wavewatch/WaveWatch-Wiki pull --rebase`. Add pages only as `wiki/runbooks/mini-vault-writes.md` allows.
- Read before changing code, in this order:
  1. `CLAUDE.md` and `.claude/rules/` in the vault (privacy, legal wording, no em dashes).
  2. `wiki/STATE.md`.
  3. Rulings since the design run, in `wiki/decisions/`: `2026-10-22_decision-design-watch-merge`, `2026-10-22_decision-design-run-final-choices`, `2026-10-21_decision-built-for-wavecrest-watch`, `2026-10-21_decision-design-b-approved` (team positions and calling come in M4, not now), `2026-10-21_decision-m0-m2-run-defaults`.
  4. The design system copy: `outputs/product/2026-10-21_design-system-watch/design-system/` (tokens, README, components). The app's `docs/design/DESIGN-RULES.md` points to it. New M3 screens follow it: no new colours, fonts or spacing without a token.
  5. The layout fixes: `outputs/technology/2026-10-22_layout-fixes/2026-10-22_technology_layout-fixes.md`.
  6. The build plan for M3: `outputs/product/2026-10-20_firebase-build-plan/` (WW-17 to WW-23 in the plan and `...issues.json`).
  7. Specs: `wiki/specs/data-model.md`, `security-model.md`, `privacy-and-evidence.md`, `intake-and-redaction.md`; concept `wiki/concepts/Near-repeat.md`; glossary `wiki/concepts/Glossary.md`.
  8. The artifact source for M3 behaviour and wording: `outputs/product/2026-10-20_artifact-poc/2026-10-20_product_wavewatch-artifact-v4.html` (cases, cameras, `coverage`, `exitRoutes`, `matchCases`, patterns, SAPS texts, `quarters()`). Port logic rather than reinventing it.

## Hard limits

Unchanged from the design run briefs: no cloud or login; emulator only, project `demo-wavewatch`; Java 21 through the `emu` script; long processes in tmux (`emu-ww`, `dev-ww`); leave `~/certech`, `~/skietgoed` and their processes alone even if the Mini is under load; push only `m3` by name, never `main`, never force-push; descriptions never identities, demo data marked `demo: true` (organisation id stays `demo-jbay`); no em dashes; no paid services; `npm audit fix` not run.

If the emulator has stopped (it did overnight on 2026-10-21 with no reason logged), restart it in tmux `emu-ww`, wait until it reports ready, then seed, then test. Record each restart.

## The run

1. Create `m3` from `main` and push it. Run the full suite once and note the starting counts.
2. **The four layout fixes**, one commit each, from the layout-fixes file. Retake the affected screenshots, light and dark.
3. **Phone access for development.** Today the app connects to the emulator at `127.0.0.1`, so a phone on the same Wi-Fi loads the screens but cannot sign in or read data. Make it work for development only:
   - the emulator host follows the address the page was loaded from (`window.location.hostname`), falling back to `127.0.0.1`;
   - the emulators listen on the local network (`host: "0.0.0.0"` in `firebase.json`) and a new `dev:lan` script serves Vite on the network; the normal `dev` script stays local-only;
   - nothing changes for production builds; add a test that a production build never points at an emulator;
   - in the handover, give Franco the exact laptop steps: find the laptop's address, start `emu`, `seed` and `dev:lan`, open `http://<address>:5181` on the phone, and what to do if macOS asks to allow incoming connections.
4. **M3, WW-17 to WW-23, in order**, one or two commits per ticket starting with the ticket id, each meeting its acceptance criteria or recording exactly which are not met:
   - WW-17 cases and series (subjects are descriptions only; sightings draw a timed route; the evidence handover register records holder, window, hash or reference, receiver and CAS number);
   - WW-18 cameras and canvass (camera cones at all zoom levels; canvass status per camera per case; footage request text with no names);
   - WW-19 gap streets and likely exit routes (port `coverage` and `exitRoutes`; tests reproduce the artifact results);
   - WW-20 series matching (port `matchCases`, threshold 45; tests reproduce artifact scores);
   - WW-21 patterns, near-repeats (400 m, 14 days by default), repeat locations, response times (near-repeat note on save; charts readable at 360 px and shapes, not colour alone);
   - WW-22 SAPS liaison (referral summary, follow-ups, case pack, monthly report; a test proves generated text carries no names or identifying numbers; wording supports SAPS and never suggests WaveWatch investigates or acts for it);
   - WW-23 station statistics by quarter (`q-YYYY-M`, matching the artifact's `quarters()`).
   Security rules and their tests for every new collection and every role, as in M1.
5. New screens get Playwright screenshots at 390 px and 1440 px, light and dark, in `docs/screenshots/m3/`.
6. Final full run: typecheck, lint, unit, rules, end-to-end, production build; record counts.

## Handover (always write this, even if you stop early)

`docs/reports/<today>_m3-handover.md` on `m3`, pushed, plain English, shortest first:

1. What Franco can try first, including the phone steps from step 3.
2. Steps and tickets done, partly done, skipped or blocked, with commits.
3. Test counts at the start and the end.
4. Choices you made that the design system or specs did not settle, "to confirm".
5. What the artifact does that you did not port, and why.
6. Anything that went wrong, quoted from the log, including emulator restarts.

Then add `wiki/reports/<today>_report_m3-run.md` following `wiki/runbooks/mini-vault-writes.md`, with the "For Cowork" section, and push the vault. Then stop.
