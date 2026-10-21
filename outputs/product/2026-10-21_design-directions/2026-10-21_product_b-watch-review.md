# Direction B, Watch: review before refinement, 2026-10-21

Skills used: design critique, accessibility review (WCAG 2.1 AA), UX copy. Reviewed: the four B screens on the canvas (map light and dark, quick log light, reports feed dark). Contrast measured; everything else is Claude's judgment.

## Design critique

Overall: the watch strip and the time column give B a clear working identity. The biggest gap is that the bottom panel takes too much of the map.

| # | Finding | Severity | Fix in the refinement |
|---|---|---|---|
| 1 | "On this watch" panel covers about 40% of the map | Moderate | A sheet with a handle that peeks one row and pulls up |
| 2 | Main action labelled only "Log" | Moderate | "Log incident" |
| 3 | Quick log has no way to change the time | Moderate | A "When: Now" row with Change |
| 4 | Strip labels 21:00 to 21:00 are hard to read against "now 20:56" | Minor | "24h ago", "12h ago", "Now" |
| 5 | Mono capitals for the wordmark and chips read technical | Minor | Mono for times, grades and counts only; chips in sentence case |
| 6 | Grade "B2" means nothing to a new user | Minor | Spelled out on the incident and report detail |
| 7 | Offline banner and "waiting" labels | n/a | Removed: offline is not a requirement |

## Accessibility (WCAG 2.1 AA)

| # | Finding | Criterion | Severity | Fix |
|---|---|---|---|---|
| 1 | Input, select and outline button borders 1.4:1 (light), about 1.5:1 (dark) | 1.4.11 | Major | Control border `#7A8594` light (3.74:1 on white, 3.40:1 on the page), `#6A7889` dark (3.89:1) |
| 2 | No visible focus indicator drawn | 2.4.7 | Major | 3 px amber outline, 2 px offset, shown on one control per screen |
| 3 | Legend uses text glyphs (■ ● ▲) that screen readers announce as "black square" | 1.1.1 | Minor | Drawn shapes, hidden from screen readers, with the family name as text |
| 4 | Some labels at 12 px | 1.4.4 | Minor | 13 px minimum |
| 5 | Map pins are drawing only | 1.1.1 | Pass | The list under the map carries the same incidents as text |
| 6 | Touch targets | 2.5.5 | Pass | All 44 px or more |

All text pairs: pass (see the comparison file). Shape colours on the strip and map: 6.06:1 or more against their background.

## Copy

| Where | Was | Now |
|---|---|---|
| Quick log save | Save to log | Save incident |
| Guard second button | It is not one | Keep as typed |
| Report action | Make incident | Create incident |
| Empty feed | (none) | No new reports. Reports from WhatsApp, control rooms and residents appear here. Paste WhatsApp messages to add some. |
| Map loading | (none) | Loading the last 24 hours |
| Sign-in error | (none) | That email and password do not match. Check both and try again, or ask your coordinator for a new invite. |
