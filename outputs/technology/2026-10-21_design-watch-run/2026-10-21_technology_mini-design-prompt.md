# WaveWatch: design run "Watch" on the Mac Mini

**Read this first.** You are Claude Code on Franco's Mac Mini, in `~/wavewatch/WaveWatch-App`, in auto mode (allowed by the vault decision mini-runs-auto-mode). Franco is away. Nothing in this project is in production and nothing you do may touch a cloud service. This run changes how the app looks. It adds no features. Commit and push after every finished step.

## Where things are

- App repository: `~/wavewatch/WaveWatch-App`, remote `git@github-wavewatch:MegannonBot/WaveWatch-App.git`. Branch `m0-m2` holds M0 to M2 (not merged to `main`).
- Vault: `~/wavewatch/WaveWatch-Wiki`. Start with `git -C ~/wavewatch/WaveWatch-Wiki pull --rebase`. You may add pages only as `wiki/runbooks/mini-vault-writes.md` allows.
- Read before changing code, in this order:
  1. `WaveWatch-Wiki/CLAUDE.md` and `WaveWatch-Wiki/.claude/rules/` (privacy, legal wording, no em dashes).
  2. `WaveWatch-Wiki/wiki/STATE.md`.
  3. The design rulings: `wiki/decisions/2026-10-21_decision-design-direction-watch.md`, `...-b-refinement-points.md`, `...-design-b-approved.md`, `...-design-system-watch-approved.md`, `...-web-stack-offline-not-required.md`.
  4. **The design system (source of truth for every colour, size and word):** `WaveWatch-Wiki/outputs/product/2026-10-21_design-system-watch/design-system/` (`README.md`, `tokens.json`, `components/*/README.md` and `preview.html`).
  5. **The screens to match:** `WaveWatch-Wiki/outputs/product/2026-10-21_design-system-watch/screens/`. Each `.dc.html` is a static mock-up; read its markup and inline styles as the layout and copy reference. `B2-*` are the phone screens (390 px), `DESK-*` the computer screens (1440 px). The `DESK-op` and `DESK-resp` screens and `OPS-list-light` show M4 features: use them for layout only, do not build operations.
  6. The review behind the fixes: `WaveWatch-Wiki/outputs/product/2026-10-21_design-directions/2026-10-21_product_b-watch-review.md`.
  7. Library documentation for the versions in `package.json`, never your memory.

## Hard limits

1. **No cloud.** No Firebase or Google Cloud login, project or deploy. Emulator only, project id `demo-wavewatch`.
2. **Java 21** from `/opt/homebrew/opt/openjdk@21` through the existing `emu` script. Never `brew link` or change the system Java.
3. **Long-running processes in tmux**, never as a Claude Code background task. The emulator may still be running in tmux `emu-ww`; reuse it, or restart it there if tests slow down (the first run saw a 1.8 GB debug log degrade it).
4. **Leave other projects alone:** `~/certech`, `~/skietgoed`, their tmux sessions, emulators and ports.
5. **Git:** work on branch `design/watch`, created from `m0-m2`. Push only that branch by name. Never push `main` or `m0-m2`, never force-push, never rewrite pushed history.
6. **No new features.** No operations, team positions, calling, offline work or new data fields. Where a mock-up shows something the app does not do yet, leave it out and list it in the handover.
7. **Privacy:** descriptions, never identities. Demo data only, marked `demo: true`. The guard's example stays masked (`0XX XXX XXXX`).
8. **No em dashes** in code, strings, commit messages or reports. The existing `npm run lint` checks this.
9. **No paid services.** npm packages with an open licence are fine; record each one added.

## The run

1. Create `design/watch` from `m0-m2` and push it.
2. **Fonts.** Bundle IBM Plex Sans (400, 500, 600) and IBM Plex Mono (500, 600) from npm (for example the `@fontsource` packages), pinned to exact versions. Nothing loads from Google at run time. Record each package, version and licence (expected SIL OFL 1.1, confirm from the package itself) in the handover.
3. **Tokens.** Replace `src/app/tokens.css` with the colour, spacing, radius and size tokens from `tokens.json`, light and dark. Map colours come from the `map-*` tokens; incident families from `family-*`. Add a unit test that reads `tokens.json` and checks the text pairs named in the token usage notes stay at or above 4.5:1 and `control-border` and `focus-ring` at or above 3:1 against `bg` and `surface`, in both themes.
4. **Theme setting.** Light, Dark and Match phone; Match phone is the default.
5. **Design rules file.** Add `docs/design/DESIGN-RULES.md` that points to the vault design system and states the rules: one accent button per screen, mono only for times, grades and counts, shapes plus words for status, 44 px targets, the focus ring, no em dashes.
6. **Restyle in this order, one commit each,** matching the `B2-*` screens:
   a. Shell: header (WaveWatch, place and role, sync chip), tab bar with the accent line on the active tab.
   b. Map: watch strip in the header (always the last 24 hours, labels "24h ago", "12h ago", "Now HH:MM"), incident markers as shapes per family (square, circle, triangle), the "On this watch" sheet showing one row and pulling up, "Log incident" in the sheet, legend in words.
   c. Quick log: "What happened" list, "Where and when" with a "When: Now" row and Change, the privacy guard as in `PrivacyGuard`, buttons "Save incident", "Remove number", "Keep as typed".
   d. Full incident form and incident detail (detail shows the grade in words and the near-repeat note when it applies).
   e. Reports feed: time column, grade badge with an `aria-label`, "Create incident", "Link", "Dismiss"; empty state as in `B2-empty-light`.
   f. Settings: theme setting; the privacy guard shown as always on.
   g. Sign-in and its error state as in `B2-signin-light` and `B2-error-light`; map loading state as in `B2-loading-dark`.
   h. Computer layout at 1024 px and wider: top bar with the six sections, watch strip full width, and on Map the three columns of `DESK-overview-dark` (list, map, new reports). Other views centred at a readable width. Columns stack at phone width.
7. **Copy changes** (from the review): "Save to log" to "Save incident"; "It is not one" to "Keep as typed"; "Make incident" to "Create incident"; the empty feed, map loading and sign-in error texts exactly as in the design system README. Keep all other labels.
8. **Accessibility:** every input, select and outline button uses `control-border`; a visible 3 px focus ring at 2 px offset; 44 px targets; icon-only buttons have an `aria-label`; legend shapes hidden from screen readers with the words visible.
9. **Tests:** typecheck, lint, unit, rules and end-to-end must all pass at the end. Update end-to-end selectors and expected text for the copy changes only.
10. **Audit, report only:** run `npm audit` and list the findings by package and severity in the handover (the laptop showed 29: 2 low, 11 moderate, 16 high). Do not run `npm audit fix`.
11. **Screenshots** with Playwright, seeded demo data, into `docs/screenshots/design-watch/`: at 390 px the map, quick log with the guard showing, full form, incident detail, reports feed, empty feed, settings, sign-in, sign-in error, each in light and dark; at 1440 px the map overview in light and dark.

## Handover (always write this, even if you stop early)

`docs/reports/<today>_design-watch-handover.md` on `design/watch`, pushed, plain English, shortest first:

1. What Franco can try first: the commands to switch the laptop copy to `design/watch` and run it, in a few lines.
2. Steps done, partly done or skipped, with commits.
3. Test counts and the contrast test result.
4. Packages added, with versions and licences.
5. What the mock-ups show that the app does not do yet.
6. Choices you made that the design system did not settle, listed "to confirm".
7. The `npm audit` findings.
8. Anything that went wrong, quoted from the log.

Then add `wiki/reports/<today>_report_design-watch-run.md` following `wiki/runbooks/mini-vault-writes.md`, with the "For Cowork" section, and push the vault. Then stop.
