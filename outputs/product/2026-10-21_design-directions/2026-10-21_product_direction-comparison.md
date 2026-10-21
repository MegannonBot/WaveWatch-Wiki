# WaveWatch design directions: comparison, 2026-10-21

Canvas: "WaveWatch design directions", https://claude.ai/artifact/UAf7RoHQDn82UNjNBzRCSE (private to Franco). Brief: `2026-10-21_product_design-brief.md` in this folder.

Each direction is drawn on four phone screens at 390 px: map (light), quick log with the privacy guard warning (light), reports feed offline with 3 waiting (dark), map (dark). Sign-in, the full incident form, settings, and the empty, loading and error states are drawn in the refinement pass for the chosen direction only.

## The three

| | A Tide | B Watch | C Beacon |
|---|---|---|---|
| Idea | Artifact v4, refined | Control room log | Suburbs as the spine |
| Type | Barlow, Barlow Condensed | IBM Plex Sans, IBM Plex Mono | Archivo, Archivo Narrow |
| Accent | Teal | Amber | Signal orange |
| Identity from content | 7-day bar strip; ringed pins for the last 24 hours | 24-hour watch strip with each incident as a tick; times in a fixed column | Map shaded by incidents per suburb; area board with change on last week |
| Quick log order | Type, area, time, description | Type, place, description (numbered) | Area first, then type, description |
| Feed | Cards, one main action, rest under "more" | Log rows with a time column | Grouped by suburb |
| Status without colour | Text chips, legend with counts | Shapes per family (square, circle, triangle) | Numbers on every area |

## Checks (Claude, 2026-10-21)

- Contrast, measured: all base text pairs pass WCAG AA in light and dark (lowest 4.84:1, A light muted text). 37 further pairs used on the screens were measured; all text passes (lowest 5.99:1).
- Found in all three: grey borders on inputs and outline buttons are below 3:1 against their background (WCAG 1.4.11). To fix in the refinement pass.
- Privacy: demo content only, no names, no numbers except the masked example "0XX XXX XXXX" used to show the guard; no logos; no images of people.
- No em dashes.
- Fonts: all six families are open licence and can be bundled with the app (licence check per family UNVERIFIED until the refinement pass).

## Judgment (Claude's, not measured)

- A is the safest: it fixes what exists. It still looks close to the artifact Franco called early days.
- B has the strongest working feel for the coordinator: the watch strip answers "what happened tonight" at a glance. Monospace may feel technical to role players.
- C fits the ruling that areas are suburbs (vault decision suburbs-as-zones): area-first logging is fewer taps when Hannes knows where it happened, and the area board sets up the patterns work in M3. Shading by suburb hides single incidents until Pins is chosen.

## Recommendation

C Beacon, with B's 24-hour watch strip added on the map in the refinement pass. Proposed, for Franco to rule.
