# Glossary: SolarEdge

Domain-specific terms, jargon, product names, and abbreviations.

*@Clarifier checks this before generating follow-up questions. Update when new terms are clarified.*

---

## Products & Apps

| Term | Definition | Notes |
|------|------------|-------|
| **ONE** | SolarEdge ONE — the broader platform/ecosystem | Parent of ONE Pro. Free tier is installer-driven, no workspace concept. |
| **ONE Pro** | Professional paid workspace for C&I fleet management | Workspace-driven. Our focus product. |
| **SolarEdge GO** | Installer mobile app for O&M | Separate from ONE Pro. Installer-only. |

## Platform Concepts

| Term | Definition | Notes |
|------|------------|-------|
| **Workspace** | Org-specific container in ONE Pro | Each org (O&M provider, asset owner, installer) has their own workspace with their own users and data |
| **Site in multiple workspaces** | Same physical site can exist in multiple workspaces | O&M provider, asset owner, and installer might all have the same site in their respective workspaces |
| **Workspace-scoped data** | Logs, comments, etc. belong to the workspace that created them | By default, my logs stay in my workspace |
| **Cross-workspace publishing** | Making data visible to other workspaces that have the same site | Sharing logs/comments beyond your own workspace |
| **Customer visibility** | Making data visible to asset owners or other parties | Customer = any party with the site in their workspace (could be asset owner, partner, etc.) |

## Technical Terms

| Term | Definition | Notes |
|------|------------|-------|
| **C&I** | Commercial & Industrial | Market segment, as opposed to residential |
| **PV** | Photovoltaic | Solar panel technology |
| **O&M** | Operations & Maintenance | The work of keeping sites running |
| **NOC** | Network Operations Centre | Remote monitoring hub |
| **Inverter** | Device that converts DC from panels to AC | Core monitored equipment |
| **Optimiser** | Power optimiser — panel-level DC/DC converter | SolarEdge-specific hardware |
| **String** | Series-connected group of solar panels | e.g., "String 3 underperforming" |
| **MC4 connector** | Standard solar panel connector type | Common failure point |
| **EXIF** | Exchangeable Image File Format | Photo metadata (timestamp, GPS) |
| **Communication** | Inverter-to-cloud connection | Devices connect via cellular/network to the monitoring platform |
| **Communication Restored** | Device came back online | Inverter reconnected to cloud after being offline (power, cellular, hardware issue) |
| **Offline** | Device not communicating with cloud | Could be power loss, cellular issues, or hardware failure. Cloud detects disconnection. |

## Asset Naming

| Pattern | Meaning | Example |
|---------|---------|---------|
| **INV-##** | Inverter number | INV-02 = second inverter |
| **BAT-##** | Battery unit | BAT-01 = first battery |
| **STR-##** | String number | STR-03 = third string |

## Metrics

| Term | Definition | Notes |
|------|------------|-------|
| **Active Managed Capacity** | Key success metric for ONE Pro | [Needs fuller definition] |

## Processes

| Term | Definition | Notes |
|------|------------|-------|
| **Site survey** | Pre-installation assessment | |
| **Commissioning** | Initial setup and verification | |
| **Decommissioning** | Taking a site offline | |
| **Official maintenance** | SolarEdge-mandated maintenance schedules | e.g., battery check-up every 6 months. Required for warranty/support. |

---

*Add new terms as they're clarified.*
