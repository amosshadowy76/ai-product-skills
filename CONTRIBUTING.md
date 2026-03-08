# Contributing

Thanks for contributing to `codex-product-skills`.

## What This Repo Accepts

This repository is for reusable Codex skills, templates, and supporting docs related to:

- product-rule extraction
- UI consistency review
- reusable product-method workflows

Good contributions include:

- improving trigger descriptions
- clarifying skill boundaries
- strengthening reusable workflows
- adding project-agnostic templates
- improving documentation and examples

## What To Avoid

Please avoid:

- adding project-specific business rules into generic skills
- hard-coding one company’s internal terminology into core skills
- mixing generic and specialized behaviors without clarifying boundaries
- making a skill more verbose unless the added context clearly improves outcomes

## Skill Design Principles

When updating a skill:

- keep the frontmatter description precise
- make trigger conditions explicit
- prefer reusable methods over narrow one-off instructions
- keep core skills project-agnostic
- put domain-heavy guidance into specialized skills

## Recommended Contribution Flow

1. Identify the problem:
   - unclear trigger
   - overlapping skill boundary
   - weak workflow
   - missing template or doc
2. Make the smallest coherent change.
3. Update related docs if behavior or positioning changed.
4. Test the wording for clarity and overlap.

## Repository Structure

```text
skills/
templates/
docs/
```

## Naming Guidance

- Use `*-core` for reusable generic methods.
- Use `*-specialized` for domain-aware or product-family-aware variants.
- Use names like `*-architect` when the skill is about extracting or maintaining systems of rules.

## Pull Request Notes

A strong PR should explain:

- what changed
- why it changed
- whether the change is generic or specialized
- whether any related docs or templates were updated

## Documentation Expectations

If you add or significantly change a skill, also consider updating:

- `README.md`
- `docs/SKILL_BOUNDARIES.md`
- related templates if the skill changes how rules are organized
