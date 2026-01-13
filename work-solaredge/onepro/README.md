# OnePro

**Status:** Active

---

## Product Vision

ONE Pro is the professional operating system for managing energy fleets — not just monitoring sites.

It's the professional, paid workspace within SolarEdge ONE for operating, analysing, and optimising commercial & industrial (C&I) energy assets at scale.

## Target Users

| Persona | Description | Primary needs |
|---------|-------------|---------------|
| **O&M Team** | Operations & maintenance professionals | Day-to-day fleet management, issue investigation, coordination |
| **Asset Owner** | Owners of C&I energy assets | Portfolio-level visibility, performance accountability |
| **Portfolio Operator** | Manages fleets across regions/accounts | Unified view across vendors, installers, sub-accounts |
| **Service Partner** | External service providers | Access to operational context, history, coordination tools |
| **Energy Manager** | Corporate energy/sustainability roles | Performance insights, reporting, optimisation |

**Common context:** These users manage fleets across multiple regions, multiple installers/sub-accounts, and multiple hardware vendors (SolarEdge and non-SolarEdge).

## Workspace Model

ONE Pro is **workspace-driven**. This is a key architectural difference from the free tier of SolarEdge ONE.

| Concept | Description |
|---------|-------------|
| **Workspace** | Org-specific container — each organisation (O&M provider, asset owner, installer) has their own workspace |
| **Users** | Belong to a workspace, with workspace-specific permissions |
| **Sites** | Can exist in multiple workspaces — O&M provider, asset owner, and installer might all have the same site |
| **Data ownership** | Logs, comments, and operational data belong to the workspace that created them |
| **Cross-workspace sharing** | Data can be selectively published to other workspaces that have the same site |

This differs from **SolarEdge ONE (free tier)**, which is installer-driven with no workspace concept — installers own the site, and owners may be granted limited access.

## What OnePro Is

- A professional O&M workspace, not a consumer or installer setup tool
- A fleet-level system of record for performance, issues, and operational context
- A vendor-agnostic layer that normalises data across mixed PV, storage, and energy assets
- A modular product catalogue, where advanced capabilities are enabled per workspace or site

## What OnePro Is Not

- Not a replacement for core device configuration tools
- Not limited to SolarEdge hardware
- Not a single-site monitoring UI
- Not a purely technical or engineering-only platform

## Core Goals

1. Provide a **single pane of glass** across diverse energy fleets
2. Enable **portfolio-level insight**, not just site-level visibility
3. Support **day-to-day operational workflows** (investigation, coordination, accountability)
4. Increase **Active Managed Capacity** by encouraging meaningful engagement with sites and data

## Product Philosophy

| Principle | Over |
|-----------|------|
| Clarity | Complexity |
| Operational usefulness | Raw data volume |
| Professional workflows | Dashboards for dashboards' sake |
| Incremental value via modules | Monolithic features |

## Key Capability Themes

- Unified fleet views across vendors and installers
- Standardised performance metrics and benchmarking
- Operational context (comments, logs, history, ownership)
- Advanced analytics and professional tools delivered as add-on modules
- Future-facing AI assistance for summarisation, triage, and insight

## Success Metrics

- Active Managed Capacity (primary)
- [Additional metrics TBD]

## Modules

| Module | Status | Description |
|--------|--------|-------------|
| [operator-log](./operator-log/) | Active | Operational context: comments, logs, history, accountability |

---

*This README is the product-level entry point. See individual module folders for feature-level detail.*
