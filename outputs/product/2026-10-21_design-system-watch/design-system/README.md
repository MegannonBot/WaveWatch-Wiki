# WaveWatch Watch

The design system for WaveWatch, the incident coordination app for community safety in Jeffreys Bay. It reads like a control room log: what happened, where, and when, at a glance, by day and by night.

Approved by Franco Megannon on 2026-10-21. Source: the design canvas https://claude.ai/artifact/UAf7RoHQDn82UNjNBzRCSE, rows "B Watch, refined" and "Operator screens in B". Rulings live in the WaveWatch vault under `wiki/decisions/` (design-direction-watch, b-refinement-points, design-b-approved).

## Who it is for

- **The coordinator** (Hannes): logs incidents on a phone, runs responses from a laptop in the control room.
- **Responders**: security company control rooms and patrollers who see only the operations they are added to.
- Phone first at 390px, and every screen also works at laptop width (1440 by 900).

## Content fundamentals

- Plain South African English. Short sentences. No jargon.
- **Never use an em dash** anywhere: copy, labels, code comments.
- Buttons start with a verb and say what happens: "Save incident", "Create incident", "Mark sector D cleared", "Log incident".
- Errors say what went wrong and how to fix it: "That email and password do not match. Check both and try again, or ask your coordinator for a new invite."
- Empty states say what goes here and how to start: "No new reports. Reports from WhatsApp groups, control rooms and residents appear here. Paste WhatsApp messages to add some."
- **Descriptions, never identities.** Copy and demo data never carry names of private people, phone, ID or registration numbers, house numbers or health details. People are described by what they did and wore.
- Dates read `21 Oct 2026`; times are 24-hour (`20:41`); money is ZAR (`R200`).
- Product words come from the vault glossary: incident, report, case, operation, response log, sector, near-repeat, grade, quick log.

## Visual foundations

**The watch strip** is the signature. A ruled band, one cell per hour, showing the last 24 hours with each incident as a mark in its family shape and an accent line at Now. It always shows 24 hours, whatever range the map shows. On a computer an active operation runs as a bar along its bottom edge.

**The time column.** Lists, the reports feed, the response log and timelines put the time first, in a fixed 52px mono column, so the eye runs down the times like a logbook.

**Shapes carry meaning, not colour alone.** Each of the eight incident families has its own shape and colour: break-ins squares (`family-breakin`), suspicious activity circles (`family-suspicious`), vehicle crime triangles (`family-vehicle`), robbery and assault diamonds (`family-violent`), theft and damage hexagons (`family-property`), road safety wide bars (`family-road`), emergencies a plus (`family-emergency`), drug-related and other pentagons (`family-other`). Every legend names the shape in words. Added 2026-10-21 after the first design run found five families without one (see FamilyShapes).

**Map ranges and marks.** The map offers 24 h, 7 d, 30 d, 90 d and All. The newest incident gets a ring. "Not reported to SAPS" is a filter, not a marker. Status chips always pair an icon with text: Saved with a check, Searching with a clock, Active with a dot and the word.

**Mono is for data only.** IBM Plex Mono sets times, grades, counts and the operation clock. Everything else is IBM Plex Sans.

**Square, quiet surfaces.** Corners of 3 to 6px, hairline dividers, no shadows except the sheet under the map. One accent action per screen in `accent`; everything else is outline (`control-border`) or text.

**Light and dark are both first-class.** Night use is normal. The theme setting offers Light, Dark and Match phone; Match phone is the default.

## Colour

- Grounds: `bg` for the page, `surface` for bars, sheets, cards and inputs, `surface-2` for selection.
- Text: `ink` and `ink-muted`. Every text pair passes WCAG AA in both themes; the lowest measured pair is 4.84:1 in the drafts and 5.75:1 in this system.
- Controls: `control-border` on every input, select and outline button (3:1 or more). `divider` is for hairlines between rows only.
- Accent: `accent` for the one main action, the Now marker and `focus-ring`. `accent-soft` with `accent-ink` for the privacy guard, selected options, near-repeats and searching.
- States: `saved-ink` (saved, cleared), `error-bg`, `error-ink`, `error-line` (errors, the Active operation).
- Map: `map-sea` (sea and lakes), `map-land`, `map-park`, `map-beach`, `map-road`, `map-road-major`, `map-label`, with incidents drawn in the family colours.

## Type

IBM Plex Sans and IBM Plex Mono, both open licence (SIL OFL). The app bundles the font files so nothing loads from Google at run time; this system names them as hosted faces until the files are added. Styles: `title` 24, `heading` 20, `section` 15, `body` 16, `small` 14, `caption` 13 (the smallest size used), and in mono `time` 15, `clock` 30, `grade` 14.

## Spacing, radius, size

- Spacing on a 4px step: `space-1` 4 to `space-6` 24. Phone gutter `space-4`, computer gutter `space-5`.
- Radius: `radius-sm` badges, `radius-md` chips and the strip, `radius-lg` controls and cards, `radius-sheet` the map sheet.
- `touch-target` 44px minimum for anything tappable. Focus: `focus-width` 3px at `focus-offset` 2px in `focus-ring`.

## Layout

- **Phone:** header (WaveWatch, place and role, sync chip), the view, a six-tab bar: Map, Log, Cases, Ops, Insights, More. The active tab gets a 3px accent line on top.
- **Map on a phone:** the watch strip in the header, the map, and a sheet that shows one row of "On this watch" and the Log incident button, pulling up for the rest.
- **Computer:** a top bar with the same sections, the watch strip full width, then three columns: a list on the left (300 to 340px), the map in the middle, a working panel on the right (340 to 440px). Columns wrap to one at phone width.
- **Responder view:** only "My operations" and "Send a report". A note says case details stay with the coordinator.

## Privacy in the interface

- The **privacy guard** checks every text box, is always on and cannot be switched off. It names what it found ("This looks like a phone number") and offers "Remove number" or "Keep as typed".
- Street fields say "No house numbers".
- A missing person's description shows only while the operation is active and says so: "Removed when it closes."
- Responders can mark their team's position, visible only inside that operation.

## Iconography

Inline stroke icons, 2px stroke, round caps, 18 to 22px, drawn in `currentColor`. Icon-only buttons carry an `aria-label`. No emoji, no icon fonts, no logos of SAPS, the CPF or any security company.

## Components

Button, WatchStrip, LogRow, GradeBadge, SyncChip, PrivacyGuard. Each has guidelines and a live preview below.

## Not decided yet

- Font files bundled in the app (licence check per family to be filed).
- How "Call the coordinator" places the call, and how long team positions are kept.
