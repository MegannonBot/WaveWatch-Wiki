# WaveWatch: privacy and legal questions for Hannes

Prepared by Claude for Franco Megannon, 21 October 2026. **Questions only.** Nothing here is legal advice or a statement of the law. Where a section of an Act is named, it is where the vault's notes point, not a checked reading (marked UNVERIFIED). Please answer in writing; the answers are filed in the vault and stay "attorney view" until you sign them off.

## What WaveWatch does (for context)

- A web app for coordinating community safety in Jeffreys Bay. It logs incidents and reports (from WhatsApp groups, control rooms, residents and public sources), grades sources, links them into cases, runs response operations (for example a missing person search), and prepares packs for SAPS.
- **Run by** MEGANNONME (Pty) Ltd, trading as Megannon.ME (Franco's company).
- **Users:** the coordinator first; later analysts, responders (security company control rooms, patrollers, street leaders) and viewers, by invitation, each seeing only what their role allows.
- **Identity boundary:** it records events and descriptions of unidentified people (behaviour, clothing, build), never names, ID, phone or registration numbers, house numbers or faces. A built-in guard warns on these. Identified people go to SAPS.
- **Data stored:** incidents, reports, cases, operations, members' names and email addresses, an audit log of every change and delete. A missing person's description is kept only while the operation is active. Default retention 12 months.
- **Hosting:** Google Firebase, database in the Johannesburg region. Sign-in records: region not yet confirmed. From a later stage (M6), AI features would send report text to the Claude API (Anthropic, servers outside South Africa) to extract fields and draft briefs.
- **New in the design:** responders can mark their team's position on an operation map, visible only inside that operation; responders can call the coordinator from the screen without seeing the number.

## Questions

### A. Who is responsible

1. WaveWatch is built for Wavecrest Watch and run by Megannon.ME. Does that make MEGANNONME (Pty) Ltd the responsible party under POPIA for all data in it, or is that Wavecrest Watch, with Megannon.ME as operator? (The vault noted POPIA s1 definitions; UNVERIFIED.)
2. What written agreements are needed, and between whom: Megannon.ME and the coordinator; Megannon.ME and each security company or watch that joins; Megannon.ME and Google and Anthropic as processors?
3. Does Megannon.ME need to register an information officer for WaveWatch before outside users join? (Skiet Goed has the same open question.)

### B. Prior authorisation and special personal information

4. Reports of suspected crime are about alleged criminal behaviour even when no one is named. Does recording descriptions of unidentified people fall under special personal information (POPIA s26, UNVERIFIED), and if so which exception or authorisation applies?
5. Does WaveWatch need prior authorisation from the Information Regulator before processing starts (POPIA s57, UNVERIFIED), for example as processing of criminal behaviour information on behalf of third parties or for an information-sharing purpose?
6. Health details are limited to "injured, transported". Is that enough minimisation, and what about a missing person's description during a search?

### C. Data leaving South Africa

7. Sending report text to the Claude API outside South Africa at M6: what does POPIA require for that transfer (s72, UNVERIFIED), and is removing identifying details first enough?
8. If Firebase sign-in records are stored outside South Africa, does the same apply to members' names and email addresses?

### D. Retention and specific features

9. Is 12 months a defensible default for incidents and reports? Should cases handed to SAPS be kept longer?
10. **Team positions:** how long may a responder's marked position be kept after an operation closes? Is consent from each responder needed, and in what form?
11. **Calling the coordinator without showing the number:** any privacy or recording concerns, depending on how the call is placed?
12. The audit log keeps who changed or deleted what. How long should it be kept, given the 12-month default for the records themselves?

### E. Working with SAPS and others

13. What wording keeps WaveWatch clearly in a supporting role and avoids suggesting it investigates or acts for SAPS (SAPS Act s18 objects of CPFs; UNVERIFIED how it applies if WaveWatch is not run under a CPF)?
14. Footage stays with whoever owns the camera; WaveWatch records only who holds it and when it went to SAPS. Is that record enough for the evidence to be usable (ECT Act s15, secondary source only)?
15. Before a security company joins: what should their agreement say about what they may see, share and keep?

### F. Before outside users join (Gate 1)

16. What is the minimum set of documents to have in place: privacy notice for users, terms of use, processor agreements, a POPIA impact assessment?
17. Anything here that should change how the app is built now, before more is built?

## A note on your role

You are also WaveWatch's first user and coordinator, and may sign an agreement with Megannon.ME yourself. If any answer touches your own position, please say so, and say if you would rather another attorney looked at that part.
