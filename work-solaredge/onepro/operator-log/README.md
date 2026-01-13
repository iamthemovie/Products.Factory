# Operator Log Module

**Status:** Active
**Product:** [OnePro](../README.md)
**One-liner:** A shared operational memory for every site — so nothing gets lost, repeated, or forgotten.

---

## What It Is

The Site Operator Log is ONE Pro's **site-level operational timeline**: a single place to record and review everything that matters day-to-day for operating a PV / storage site — issues, actions taken, observations, and notes — linked to the actual equipment on site.

## Why It Exists

O&M work gets fragmented across tickets, emails, spreadsheets, and people's memory. The Operator Log creates an **authoritative "operational memory"** so teams can understand what happened, what's been done, and what's next — fast.

## Target Users

| Persona | Role | Primary use |
|---------|------|-------------|
| **Field Technician** | On-site service | Logging work and findings in the field |
| **Remote Operator** | NOC / monitoring | Recording observations, coordinating actions |
| **O&M Manager** | Team lead | Coordinating teams, ensuring accountability |
| **Asset Owner / Customer** | Site owner | Viewing customer-visible updates (where enabled) |

## Core Capabilities

| Capability | Description |
|------------|-------------|
| **Structured log entries** | Issue / Action / Observation / Note — typed entries for clarity |
| **Asset-linked history** | Tie entries to specific equipment (e.g., INV-02, BAT-01) |
| **Internal vs customer-visible** | Controlled transparency — choose what customers see |
| **Attachments** | Photos, reports for evidence and handover |
| **Filtering & search** | By type, user, asset, keywords |
| **AI briefing** | (Optional) Summarises latest site state and key next actions |

## Value Delivered

| Outcome | How |
|---------|-----|
| Faster troubleshooting | See what's been tried and what's recurring |
| Better handovers | Context travels across shifts, teams, partners |
| Reduced repeat work | Don't re-diagnose known issues |
| Auditable record | Clear operational history per site |
| Customer trust | Curated visible updates build confidence |

## Features

| Feature | Status | Description |
|---------|--------|-------------|
| [feature-log-entries.md](./feature-log-entries.md) | Scoping | Core log entry creation + photo attachments (MVP) |
| feature-asset-linking.md | Deferred | Link entries to specific site equipment (v1.2) |
| feature-visibility-control.md | Deferred | Internal vs customer-visible entry management (v2) |
| feature-filtering-search.md | Deferred | Filter and search log history (v1.1) |
| feature-ai-briefing.md | Deferred | AI-generated site state summary (v3) |

*Note: Attachments bundled into log-entries MVP. Prioritisation set by @Prioritizer.*

## Module Boundaries

**In scope:**
- Site-level operational logging and history
- Entry creation, viewing, filtering
- Asset linking within a site
- Visibility control for customer transparency
- Attachments for evidence

**Out of scope:**
- Fleet-level log aggregation (separate module?)
- Ticketing / workflow management (integration point, not replacement)
- Device configuration or control
- Alerting / notifications (separate capability)

## Dependencies

- **Depends on:** Site data model, asset registry, user permissions
- **Integrates with:** Alerting (entries from alerts?), Ticketing systems (export/sync?)

## Open Questions

- [ ] How does AI briefing source its summary? (Recent entries only? Alerts too?)
- [ ] What's the retention policy for log entries?
- [ ] How do customer-visible entries interact with customer portal/access?

---

*Add feature files to this folder as `feature-[name].md`. Use the template in `/_templates/feature.md`.*
