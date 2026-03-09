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

## Adding A New Skill

Before adding a new skill, answer these questions:

1. Is this really a new reusable method, or should an existing skill be improved?
2. Is the method generic across many projects, or only useful in one app family?
3. Is the skill about:
   - finding problems
   - validating a flow
   - extracting rules
   - something else clearly distinct

Add a new skill only when the method has a clear job that is not already owned by another skill.

## How To Judge Generality

Use this rule:

- if the method works in many product types, keep it generic
- if the method depends on stable in-product terminology, page-family structure, or domain-specific concepts, make it specialized
- if the content depends on one specific app, do not hard-code it into the core skill

Good generic content:

- reusable reasoning steps
- path-based validation method
- output format
- decision rules

Bad generic content:

- one company’s internal labels
- one app’s exact tab names in the main workflow
- one project’s private business rules

## How To Write Project Customization Sections

If a skill benefits from project-specific examples, keep them separate from the core workflow.

Prefer this shape:

1. core method
2. customization points
3. one example project instantiation

That means:

- the main instructions stay reusable
- project-specific mappings stay easy to replace
- another team can adopt the skill without rewriting the whole file

Use example headings like:

- `Customization points for each project`
- `Example project instantiation`

Avoid headings like:

- `MindFlow rules`
- `App-specific workflow`

unless the repository is intentionally app-specific

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
- `docs/RULES_AND_SKILLS_README.md`
- `docs/USAGE_EXAMPLES.md`
- related templates if the skill changes how rules are organized
