# WaveWatch: layout fixes for the next Mini run

From the look check of `design/watch` at `7a99b46` on 2026-10-22 (screenshots in `docs/screenshots/design-watch/`). Franco approved putting these first in the next Mini run. Same hard limits as the design run briefs. Work on a new branch from `main` after the merge.

1. **Phone map is too small.** One control row only: range and Filters; on phones under 1024 px, incident type and Pins or Heat move inside Filters (the computer layout keeps them on the bar, ruling design-run-final-choices). The "On this watch" sheet peeks one row only; the legend and Replay move into the pulled-up sheet.
2. **A map marker sits under the controls** on the phone (below the 24 h row). Pad the map's top inset by the height of the control row so markers and the fit-to-incidents view stay clear of it.
3. **Suburb labels collide** on the computer overview ("Noorsekloof" and "Supertubes" on one line; a marker over "Kabeljous-on-Sea"). Let the map style avoid label overlap and keep markers from covering labels.
4. **The Log screen starts low.** Three rows of buttons sit above the first report. Keep "Log incident" as the one accent button; put Add report, Full form and Paste WhatsApp messages in one row or a menu; keep the Incidents and Reports switch and the New, Linked, Dismissed, All filter.

Each fix: one commit, tests updated, phone and computer screenshots retaken for the screens it touches, light and dark.

## Added after the M3 check (2026-10-22), for the next Mini run on `m3`

5. **Insights screenshots taken while loading.** In light, "When and where", "Incidents per week" and "Repeat locations" show zeros and "Loading". Retake them after data has loaded, and make charts say "Loading" while data loads instead of showing 0.
6. **Case map legend cut off on the phone** under the Delete case and Case pack buttons. Keep the whole legend visible or let it scroll.
7. **Canvass status menu cut off on the computer** ("Checked, nothing se..."). Widen the menu or shorten the labels.
8. **Quick log top three types** frozen when the form opens (the Mini offered this; Franco's answer pending at the time of writing).
