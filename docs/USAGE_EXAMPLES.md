# Usage Examples

## Purpose

This file shows realistic ways to use the repository in actual product work.

Use it when you want examples that are more concrete than the README but lighter than a full case study.

## Example 1: Generic sibling-screen review

Situation:

- a team has three related settings-style screens
- they feel inconsistent
- the team wants a reusable way to review them

Use:

- `product-ui-consistency-review-core`

Prompt:

```text
Read README.md and skills/product-ui-consistency-review-core/SKILL.md.
Then compare these related screens for semantic, structural, interaction, and visual drift.
Tell me whether the problem really exists, why it matters, whether it looks intentional or accidental, and the smallest coherent fix.
```

## Example 2: Domain-aware product-family review

Situation:

- a mature app already has repeated page-family structure
- generic language would miss important domain meaning

Use:

- `product-ui-consistency-review-specialized`

Prompt:

```text
Read README.md and skills/product-ui-consistency-review-specialized/SKILL.md.
This product already has stable domain-specific page-family language.
Review these screens using the product's own terms instead of generic placeholders.
```

## Example 3: Validate that a fix actually survives the full flow

Situation:

- a team fixed a few screens
- the UI now looks aligned
- they are not sure whether the same user choice survives navigation, recovery, and history

Use:

- `product-flow-validation`

Prompt:

```text
Read README.md and skills/product-flow-validation/SKILL.md.
Validate this path end-to-end:
Home recommendation -> runtime surface -> completion -> history -> replay.
Tell me where the meaning first diverges.
```

## Example 4: Turn repeated findings into durable product rules

Situation:

- the same product decisions keep being rediscovered
- the team wants to stop re-arguing them every sprint

Use:

- `app-rules-architect`

Prompt:

```text
Read README.md and skills/app-rules-architect/SKILL.md.
Use that skill to turn these repeated product decisions into a durable app rules document.
Separate reusable principles from app-specific behavior.
```

## Example 5: Recommended combined workflow

Use this sequence when a product area needs both diagnosis and stabilization:

1. run `product-ui-consistency-review-core` or `product-ui-consistency-review-specialized`
2. fix the shared structure or state/config model
3. run `product-flow-validation`
4. if the same lesson should persist, run `app-rules-architect`

This is the most common high-value path for product teams using this repository.
