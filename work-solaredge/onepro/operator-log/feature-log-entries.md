# Feature: Log Entries (MVP)

**Status:** Scoping
**Module:** [Operator Log](./README.md)
**Owner:** [TBD]
**Scoped by:** @Scoper

---

## Scope Definition

**MVP = Log Entries + Attachments** (per @Prioritizer recommendation)

This scope covers creating, viewing, and listing log entries with photo attachments at the site level. Asset linking, visibility control, filtering, and AI features are explicitly OUT of MVP scope.

---

## Context Applied

- **Philosophy:** Clarity over complexity. Must be operationally useful, not just a data capture form.
- **Key constraint:** Field technicians have ~90 seconds, hands may be occupied. Online connection required.
- **Success metric:** Adoption. If nobody logs, nothing else matters.

---

## MUST HAVE Requirements

### 1. Create Log Entry

| ID | Requirement | Acceptance Criteria |
|----|-------------|---------------------|
| **1.1** | User can create a log entry from site view | Entry creation accessible within 2 taps from site detail screen |
| **1.2** | Entry has free-text body (required) | Min 1 character, max 5000 characters. No required fields beyond this. |
| **1.3** | Entry has optional title/subject line | Max 200 characters. If blank, UI shows truncated body as title. |
| **1.4** | Entry records author automatically | Display name + user ID captured. Not editable by user. |
| **1.5** | Entry records timestamp automatically | UTC timestamp at creation. Displayed in user's local timezone. |
| **1.6** | Entry is associated with exactly one site | Site context inherited from where user initiated entry. |

### 2. Attach Photos

| ID | Requirement | Acceptance Criteria |
|----|-------------|---------------------|
| **2.1** | User can attach photos to entry | Supports 1-5 images per entry |
| **2.2** | User can capture photo in-app | Opens device camera, returns to entry form with photo attached |
| **2.3** | User can select from device gallery | Standard photo picker, supports multi-select up to limit |
| **2.4** | Photos display as thumbnails before submit | User can remove attached photo before submitting |
| **2.5** | Photos compressed for upload | Max 2MB per image after compression. Preserve EXIF for timestamp/location if present. |

### 3. View Log Entry

| ID | Requirement | Acceptance Criteria |
|----|-------------|---------------------|
| **3.1** | User can view full entry detail | Shows: title, body, author, timestamp, attachments |
| **3.2** | Attached photos viewable full-screen | Tap thumbnail to expand. Pinch to zoom. Swipe between photos. |
| **3.3** | Entry displays relative timestamp | "2 hours ago", "Yesterday", then date after 7 days |

### 4. List Log Entries

| ID | Requirement | Acceptance Criteria |
|----|-------------|---------------------|
| **4.1** | Site view shows log entry list | Reverse chronological (newest first) |
| **4.2** | List shows entry preview | Title (or truncated body), author, relative timestamp, attachment indicator |
| **4.3** | List supports pagination/infinite scroll | Initial load: 20 entries. Load more on scroll. |
| **4.4** | Empty state is clear | "No log entries yet. Add the first one." with CTA button. |

---

## SHOULD HAVE (v1.1, not MVP)

| ID | Requirement | Rationale |
|----|-------------|-----------|
| **S.1** | Entry type selector (Issue/Action/Observation/Note) | Adds friction. Start unstructured, add types once we see how people use it. |
| **S.2** | Edit entry after creation | Complexity. MVP: create-only. If wrong, add clarifying entry. |
| **S.3** | Delete entry | Audit implications. MVP: entries are permanent. |
| **S.4** | @ mention other users | Requires notification system. Defer. |
| **S.5** | Voice-to-text input | High value for field UX, but platform-dependent complexity. Defer. |

---

## WON'T HAVE (MVP)

| Item | Why not |
|------|---------|
| Asset linking | Requires clean asset registry. Separate feature. |
| Customer visibility toggle | Requires customer portal. Separate feature. |
| Filtering & search | Not useful until volume exists. v1.1. |
| AI briefing | Needs data volume. v3. |
| PDF/document attachments | Photos only for MVP. Documents add complexity. |
| Entry templates | Premature. See how people write first. |

---

## Dependencies

| Dependency | Status | Blocker? |
|------------|--------|----------|
| Site data model | Assumed exists | No |
| User authentication & identity | Assumed exists | No |
| File storage (photo uploads) | Needs confirmation | **Yes — confirm infra** |
| Mobile app exists | Assumed yes | No |
| Network connectivity | Required | Online-only feature |

---

## Risks

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Nobody uses it | High | Fatal | Measure adoption weekly. Kill or pivot fast if flat. |
| Photo upload fails on slow connection | Medium | Medium | Compression. Progress indicator. Retry on failure. |
| Entries too low-quality to be useful | Medium | Medium | Review samples early. Consider prompts/templates in v1.1 if needed. |
| Storage costs scale unexpectedly | Low | Medium | Set image size limits. Monitor early. |

---

## Open Questions (Need Answers Before Dev)

| # | Question | Who can answer? | Source |
|---|----------|-----------------|--------|
| **Q1** | What's the max storage per site/workspace for attachments? | Infra / Product | Scoping |
| **Q2** | What's the data retention policy for log entries? Forever? | Legal / Product | Scoping |
| **Q3** | Will this be mobile-only MVP or also web? | Product | Scoping |
| **Q4** | Is there an existing image upload service or do we build new? | Engineering | Scoping |
| **Q5** | Should entry types be required, optional, or inferred post-creation? | Product | Jacques |
| **Q6** | Is cross-workspace visibility same as customer-visibility, or separate permission model? | Product | Jacques |
| **Q7** | Video support: max file size/duration? Storage cost implications? | Infra / Product | Jacques |
| **Q8** | Is maintenance scheduling (battery check-up every 6mo) Operator Log or separate module? | Product | Jacques |
| **Q9** | Go app: in scope for ONE Pro, or separate product decision? | Product | Jacques |

---

## Acceptance Test Scenarios

| Scenario | Steps | Expected Result |
|----------|-------|-----------------|
| **Happy path** | Open site → Tap "Add log" → Type note → Attach photo → Submit | Entry appears in list with photo |
| **View history** | Open site with 50 entries → Scroll list | Loads 20, infinite scroll loads more |
| **Photo capture** | Tap camera icon → Take photo → Confirm | Photo appears as thumbnail in form |
| **Empty state** | Open site with no entries | Shows "No log entries yet" with CTA |

---

## Recommendation

**Answer Q1-Q4 first.** Then this is ready for engineering estimation.

MVP is deliberately minimal: text + photos, online-only. That's it. Prove adoption before adding structure.

---

## Research & Feedback

- [2025-01-13 Jacques (Field Tech Manager)](./_research/2025-01-13-jacques-feedback.md) — Validates mobile, challenges deferred entry types, expands attachment scope

---

## Audit Trail

| Date | Event | Notes |
|------|-------|-------|
| 2025-01-13 | Initial scoping | @Scoper pass. Informed by @Critic and @User_Proxy (Field Technician) feedback. |
| 2025-01-13 | Jacques feedback | Added Q6-Q10. Entry types and video support may need reconsideration. |
| 2025-01-13 | Removed offline support | Online-only. Removed Section 5 and related requirements. |
