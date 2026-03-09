# AI Product Skills

Reusable product-review and product-rules skills for AI coding assistants, including Codex.

This repository helps teams turn vague product feedback into repeatable methods that an assistant can reuse across projects.

## What This Repo Is For

Use this repository when you need to:

- review related screens for structural, semantic, interaction, or visual drift
- validate whether a fix survives the full user flow
- turn repeated UX decisions into durable product rules

The goal is simple: spend less time re-explaining your review method and get more consistent product reasoning from your assistant.

## Start Here

Most users only need this flow:

1. Read this `README.md`.
2. Pick one skill for the current task.
3. Either install that skill into Codex or ask your assistant to follow its `SKILL.md`.

Repository URL:

```text
https://github.com/rushairer/ai-product-skills
```

If your assistant supports repo-aware workflows, pointing it at this repository and asking it to read `README.md` first is usually enough.

## Choose The Right Skill

### `product-ui-consistency-review-core`

Use for generic sibling-screen review.

Best for:

- comparing related pages
- finding shared page skeleton drift
- deciding whether a difference is intentional or accidental

### `product-ui-consistency-review-specialized`

Use for domain-aware review in mature product families.

Best for:

- products with stable in-domain terminology
- repeated page families with specialized meaning
- cases where generic wording would flatten important distinctions

### `product-flow-validation`

Use for end-to-end path validation.

Best for:

- checking whether a user choice keeps the same meaning through navigation, runtime, persistence, recovery, history, and re-entry
- verifying fixes after UI consistency or state-model work

### `app-rules-architect`

Use for extracting and maintaining durable product rules.

Best for:

- creating or updating `APP_RULES.md`, `FEATURE_RULES.md`, or similar files
- separating reusable principles from app-specific behavior

## Recommended Usage Order

In most projects:

1. Start with `product-ui-consistency-review-core`.
2. Switch to `product-ui-consistency-review-specialized` only if product-specific terminology materially affects the review.
3. Use `product-flow-validation` after consistency fixes when the remaining question is whether meaning survives the full path.
4. Use `app-rules-architect` when the same review outcomes keep recurring and should become rules.

## Fastest Setup For Codex

Install the beginner set:

```bash
./scripts/install_for_codex.sh
```

That installs:

- `product-ui-consistency-review-core`
- `product-flow-validation`

Install every skill:

```bash
./scripts/install_for_codex.sh --all
```

Install one or more specific skills:

```bash
./scripts/install_for_codex.sh product-ui-consistency-review-core app-rules-architect
```

After installation, restart Codex.

## Manual Installation

If you prefer to copy folders yourself:

```bash
mkdir -p ~/.codex/skills
cp -R skills/product-ui-consistency-review-core ~/.codex/skills/
cp -R skills/product-flow-validation ~/.codex/skills/
```

For the full set:

```bash
cp -R skills/product-ui-consistency-review-specialized ~/.codex/skills/
cp -R skills/app-rules-architect ~/.codex/skills/
```

## Using This Repo With Other Assistants

If your assistant cannot install Codex skills natively, use this repository as a structured prompting toolkit:

1. Point the assistant to this repository.
2. Ask it to read `README.md`.
3. Point it to exactly one relevant `SKILL.md`.
4. Tell it to use that skill as the working method for the task.

If you want ready-made prompts:

```bash
./scripts/print_bootstrap_prompts.sh
```

For more concrete examples, see [docs/USAGE_EXAMPLES.md](docs/USAGE_EXAMPLES.md).

## Repository Structure

```text
skills/
  app-rules-architect/
  product-flow-validation/
  product-ui-consistency-review-core/
  product-ui-consistency-review-specialized/
templates/
  APP_RULES_TEMPLATE.md
docs/
  RULES_AND_SKILLS_README.md
  SKILL_BOUNDARIES.md
  USAGE_EXAMPLES.md
```

## Documentation Map

Use these documents by purpose:

- [README.md](README.md): onboarding and skill routing
- [docs/SKILL_BOUNDARIES.md](docs/SKILL_BOUNDARIES.md): when two skills seem similar
- [docs/RULES_AND_SKILLS_README.md](docs/RULES_AND_SKILLS_README.md): how skills, templates, and rules fit together
- [docs/USAGE_EXAMPLES.md](docs/USAGE_EXAMPLES.md): concrete prompting examples
- [templates/APP_RULES_TEMPLATE.md](templates/APP_RULES_TEMPLATE.md): reusable starting point for app rules
- [CONTRIBUTING.md](CONTRIBUTING.md): contribution expectations

## Helper Scripts

- `scripts/install_for_codex.sh`: install the default, full, or custom skill set into `~/.codex/skills`
- `scripts/print_bootstrap_prompts.sh`: print ready-to-copy prompts for common assistant setups

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT
