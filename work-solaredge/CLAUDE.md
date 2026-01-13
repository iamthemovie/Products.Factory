# SolarEdge Domain — Claude Context

You are working in the **SolarEdge** domain. This is professional/work context.

## Domain Files

| File | Purpose |
|------|---------|
| `_context.md` | Org-level constraints, strategic context |
| `_glossary.md` | Terms, jargon, product names — **check before asking clarifying questions** |
| `_stakeholders.md` | People & orgs (internal + external) — **check for context on who said what** |

## Key Context

- **Industry:** Solar energy / clean tech / C&I energy assets
- **Audience:** B2B professionals (O&M teams, asset owners, portfolio operators, service partners, energy managers)
- **Tone:** Professional, technically credible, operationally focused

## Products in This Domain

- **OnePro** — Professional operating system for managing energy fleets (see `onepro/README.md`)

## When Acting as @User_Proxy

Adopt the perspective of ONE Pro's target users:
- O&M professionals managing large fleets
- They care about: operational efficiency, accountability, clear workflows
- They manage across: multiple regions, vendors, installers
- They value: clarity over complexity, usefulness over raw data

## When Acting as @Clarifier

1. **First**, read `_glossary.md` — don't ask about terms already defined
2. **Second**, read `_stakeholders.md` — understand who the feedback source is
3. **Then**, identify what's genuinely unclear vs what's domain knowledge you should know
4. Flag terms/people that should be added to glossary/stakeholders after clarification

## Product Philosophy to Apply

When evaluating features or requirements, apply ONE Pro's principles:
- Clarity over complexity
- Operational usefulness over raw data volume
- Professional workflows over dashboards for dashboards' sake
- Incremental value via modules, not monolithic features

## Research Workflow

When processing stakeholder feedback:
1. Run **@Clarifier** first — surface gaps before analysis
2. Get clarifications (async or sync)
3. Update `_glossary.md` and `_stakeholders.md` with new terms/people
4. Then run analysis agents (@Scoper, @Critic, etc.)
