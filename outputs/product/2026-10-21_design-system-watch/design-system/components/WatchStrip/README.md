# WatchStrip

The last 24 hours as a ruled band, one cell per hour, each incident a mark in its family shape and an accent line at Now.

- Always 24 hours, whatever range the map shows.
- Marks: square `family-breakin`, rounded `family-suspicious`, triangle `family-vehicle`, 9 to 10px wide.
- Edge: 1px `control-border`, `radius-md`. Cells alternate `surface` and `bg` (dark: `surface-2`).
- Labels under it in `time` style at 13px: "24h ago", "12h ago", "Now 20:56" (Now in `accent`). On a computer, hour labels every 3 hours.
- On a computer an active operation runs as a bar along the bottom edge in `error-line`.
- Screen readers get one sentence listing the times: `role="img"` with an `aria-label`.
