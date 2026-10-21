# PrivacyGuard

The warning under a text box when it holds something that could identify a person. Always on; cannot be switched off.

- `accent-soft` ground, `accent-ink` text, 1px `accent` border, `radius-lg`, `role="alert"`, linked to its field with `aria-describedby`.
- Says what it found in the title: "This looks like a phone number". Then one line: "Describe what people did and wore. Never identify them."
- Two buttons: "Remove number" (filled `accent-ink`) and "Keep as typed" (outline).
- Catches names with titles, phone, ID and registration numbers, and house numbers.
- Demo text masks the example: `0XX XXX XXXX`. Never a real number.
