# Custom Alerts Module

**Status:** Exploring
**Product:** ONE Pro
**Origin:** Prologis DAS RFP requirements (Section V — Fault, Alarm, and Alert Register Alignment)

## Problem Statement

Asset owners need custom alerting on their solar/BESS estates, but current powerful rule engines (tag-based, query-driven) are too complex for everyday users. Meanwhile, simpler systems create "alarm storm" conditions where users don't know what's important or understand that rules fire constantly across large estates.

**Core tension:** Flexibility to create custom rules vs. not drowning in noise.

---

## User Needs Framing

What does an asset owner actually care about? Five categories:

### 1. "Am I losing money right now?"
- Site producing zero when it should be generating
- Significant underperformance vs. expectation
- Meter offline (can't bill/claim RECs)

### 2. "Is something broken that will get worse?"
- Equipment faults that need intervention
- Degradation trends (inverter efficiency dropping)
- Communication loss (can't see what's happening)

### 3. "Am I meeting my commitments?"
- Performance guarantee thresholds at risk
- REC/EAC reporting deadlines
- Tenant/customer SLA breaches

### 4. "What do I need to tell someone else?"
- O&M provider needs to dispatch
- Customer asking why generation is low
- Investor/finance reporting anomalies

### 5. "What should I have known sooner?"
- Pattern that was visible in hindsight
- Recurring issue across multiple sites
- Seasonal or time-based problems

---

## Persona-Based Priorities

All five categories matter, but priority varies by role:

| Persona | Primary Focus | View Level |
|---------|---------------|------------|
| **Asset Owner** | Generation losses = money | Portfolio |
| **O&M Provider** | Performance guarantees, dispatch | Site/Asset |
| **Engineer** | Troubleshooting, root cause | Asset |
| **Executive** | Portfolio health, trends | Portfolio |

**Key insight:** Portfolio-level views for oversight, asset-level for hands-on engineers.

### Communication Loss — Special Case

Comms issues are the "big unknown" category:
- Is it cellular/network infrastructure? (not an operational issue)
- Or actual equipment failure? (needs intervention)
- Need to distinguish between connectivity problems vs. real faults
- Avoid false alarms from transient network blips

---

## Alarm Instance Lifecycle

### Existing Pattern (Hark)
- Rules open **alarm instances** of a type — this works well
- Instances track state: open → acknowledged → closed

### Auto-Closure Requirements
- **Needed:** Auto-close transient issues to reduce human burden
- **But:** Preserve history for repeat indication analysis
- Don't lose visibility into patterns just because issues self-resolved

### Notification Channels
- **Email notifications** — required
- **Digest mode** — important for avoiding alert fatigue
- **Other integrations** (Slack, SMS, ticketing) — future, not priority now

---

## Open Questions

### Remaining unknowns
- How to distinguish comms loss (network) from operational issues?
- What digest frequency makes sense? (Daily? Per-shift?)
- How do auto-closed instances surface in repeat pattern analysis?

### Scale considerations
- Estates range from a few sites to thousands
- Rules must work across variable portfolio sizes

---

## Emerging Solution Shape

### Rule Library (curated starting point)
- Pre-built rules for common scenarios
- User enables/disables, adjusts thresholds
- Doesn't require building from scratch

### Guided Rule Builder (accessible layer)
- Wizard-style: "Alert me when [equipment type] has [condition] for [duration]"
- Hides query complexity, translates to underlying engine
- Power users can "eject" to advanced mode

### Impact Preview (anti-storm mechanism)
- Before activating: *"This rule would have fired 847 times across your estate in the last 30 days"*
- Shows which sites/assets most affected
- Forces acknowledgment if high-frequency

### Severity & Grouping
- Rules have severity levels (critical / warning / info)
- Related alerts roll up to incidents (not per-asset noise)
- Digest options vs. real-time per severity

---

## Technical Context

Hark platform has existing alarm system:
- Tag-based rules using Haystack ontology
- Query-based rule application across large estates
- Supports math, logical operators, custom metadata filtering
- Powerful for power users, too complex for everyday users

**Module approach:** Layered access — same engine underneath, different interfaces on top.

---

## References

- Prologis DAS RFP (Section V: Fault, Alarm, and Alert Register Alignment)
- RFP requires: custom alarm thresholds, escalation, acknowledgment tracking, severity alignment
