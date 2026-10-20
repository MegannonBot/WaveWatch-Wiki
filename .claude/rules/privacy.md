---
paths:
  - "wiki/specs/**"
  - "wiki/concepts/**"
  - "outputs/**"
---

# Privacy rules for specs, demo data and outputs

- WaveWatch records events and descriptions of unidentified people. It never stores or infers identities: no suspect register with names, no registration-number watchlist, no face matching, no social media profiling.
- People are described by behaviour, clothing and build only. Never nationality, ethnicity, race, language or religion.
- Locations are street level. No house numbers.
- Footage stays with its owner. WaveWatch records who holds the original, the export window, a hash or reference, and who at SAPS received it.
- Missing-person and patient details exist only while an operation is active and are removed when it closes. Health details beyond "injured, transported" are never stored.
- Once someone is identified, the case goes to SAPS or the security company with a lawful basis to act.
- Every spec that stores or moves personal information says where the data lives (region), who can read it, and when it is deleted.
- Demo and test data is generated and marked DEMO. It never copies a real message, street event or person from a WhatsApp group.
