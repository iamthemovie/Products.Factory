# Feedback: Jacques (Field Technical Manager)

**Date:** 2025-01-13
**Source:** Internal stakeholder interview
**Role:** Field Technical Manager
**Relevance:** Operator Log MVP scoping

---

## Raw Feedback

1. iPhone / Mobile app required
2. Would be good in Go (though installer only)
3. Needs to include information about / easy way to mark things like:
   - I cleaned my panels
   - Fan clean
   - Communication Restored
4. Needs to allow for publishing these logs across workspaces so anyone who has access to the site can see it
5. Attachments / Photos / Videos / Files
   - Type of photo
6. Maintenance log and checking against:
   - Replace optimiser
   - Replace panel
   - Communication stuff
   - Replacement
   - Cleaning of Fans
   - Batteries and Check-Up (Official maintenance - half a year)

Additional context:
- Whole spread of the O&M provider
- Brand agnostic

---

## Analysis (@Scoper)

### Validated assumptions

| Item | Status |
|------|--------|
| Mobile is critical | **Confirmed** — iPhone specifically called out |
| Photos/attachments are high value | **Confirmed** — expanded to videos/files |
| Brand agnostic | **Confirmed** — aligns with ONE Pro philosophy |

### Challenges to current MVP scope

| Current MVP decision | Jacques' feedback | Tension |
|---------------------|-------------------|---------|
| Deferred structured entry types (adds friction) | Wants quick-mark for common actions (cleaned panels, fan clean, comms restored) | Field tech wants speed, manager wants categories — **not mutually exclusive** |
| Photos only | Wants videos + files + photo type | Scope expansion — video is high-value field evidence |
| Site-level only | Wants cross-workspace publishing | New visibility model beyond single workspace |

### New capabilities surfaced

| Capability | Description | Module fit |
|------------|-------------|------------|
| **Quick-tap entry types** | Pre-defined common actions (clean, replace, restore) | Operator Log — reconsider for MVP? |
| **Cross-workspace visibility** | Anyone with site access sees logs, regardless of workspace | Operator Log — new requirement |
| **Video attachments** | Field evidence beyond photos | Operator Log — scope expansion |
| **Attachment categorization** | "Type of photo" metadata | Operator Log — v1.1? |
| **Maintenance taxonomy** | Structured categories: replacements, cleaning, check-ups | Operator Log or separate Maintenance module? |
| **Scheduled maintenance** | Battery check-up every 6 months, official maintenance cycles | Likely separate module (Maintenance Scheduling) |
| **Go app support** | Installer-focused mobile app | Product-level decision — separate from ONE Pro? |

### New open questions

| # | Question | Who |
|---|----------|-----|
| Q6 | Should entry types be required, optional, or inferred post-creation? | Product |
| Q7 | Is cross-workspace visibility same as customer-visibility, or a separate permission model? | Product |
| Q8 | Video support: max file size/duration? Storage cost implications? | Infra / Product |
| Q9 | Is maintenance scheduling (battery check-up every 6mo) part of Operator Log or a separate module? | Product |
| Q10 | Go app: in scope for ONE Pro, or separate product decision? | Product |

---

## Recommendations

### For MVP (`feature-log-entries.md`)

1. **Add Q6-Q10** to open questions
2. **Reconsider structured entry types** — maybe optional quick-tap, not required fields
3. **Confirm video scope** — if low-effort, include in MVP; if complex, defer

### For module roadmap (`operator-log/README.md`)

1. **Add cross-workspace visibility** as a planned feature
2. **Consider maintenance scheduling** as separate module or v2 capability

### For product level (`onepro/README.md`)

1. **Note Go app request** — may warrant separate product discussion
2. **Validate O&M provider breadth** — are we covering their full workflow?

---

## Action items

- [ ] Review with Product: structured types in MVP or v1.1?
- [ ] Review with Product: cross-workspace visibility model
- [ ] Review with Infra: video storage feasibility
- [ ] Decide: Maintenance scheduling — Operator Log or separate module?
- [ ] Decide: Go app — ONE Pro scope or separate?

---

*This feedback supports the Operator Log direction but expands scope. Key decision: how much structure in MVP vs post-launch iteration.*
