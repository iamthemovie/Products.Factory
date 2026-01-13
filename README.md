# Products.Factory

A headless product factory — markdown files + git for requirements planning, product scoping, and high-level thinking across domains.

---

## Structure

```
Products.Factory/
├── agents.md              # Global agent personas (the "who")
├── _templates/            # Reusable document templates
├── personal/              # Personal projects
│   └── _context.md        # Personal domain constraints
├── work-solaredge/        # Work domain
│   ├── _context.md        # Org-level constraints (the "where")
│   └── onepro/            # Product
│       └── operator-log/  # Module
│           └── feature-x.md
└── _archive/              # Completed/parked projects
```

## How It Works

**Global Agents + Local Context**

1. `agents.md` defines personas (@Strategist, @Scoper, @Critic, etc.)
2. `_context.md` in each domain defines constraints (budget, stakeholders, goals)
3. When working, combine both: agent skills + domain rules

## Usage

```
"Act as @Scoper. Read work-solaredge/_context.md and onepro/operator-log/README.md.
Now review my notes in feature-xyz.md and draft requirements."
```

## Adding New Work

1. **New domain:** Create folder + `_context.md` (e.g., `work-newcompany/`)
2. **New product:** Create folder + `README.md` under domain
3. **New module:** Create folder + `README.md` under product
4. **New feature:** Create `feature-[name].md` in module folder (use template)

## Lifecycle

- Use `status:` field in README/feature files (Exploring → Scoping → Active → Shipped)
- Move to `_archive/` only when truly done or abandoned

---

*See `agents.md` for available personas. See `_templates/` for document formats.*
