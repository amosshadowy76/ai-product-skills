# Rules and Skills README

## Purpose

This document explains how the repository fits together as a product-method toolkit.

Use it when you want to understand:

- what belongs in a skill
- what belongs in a reusable template
- what belongs in durable project rules

## The Three Layers

This repository now has three complementary layers:

### 1. Skills

Reusable operational methods for AI assistants.

Current skills:

- `product-ui-consistency-review-core`
- `product-ui-consistency-review-specialized`
- `product-flow-validation`
- `app-rules-architect`

### 2. Templates

Reusable starting documents that teams can copy into projects.

Current template:

- `templates/APP_RULES_TEMPLATE.md`

### 3. Supporting docs

Docs that explain skill boundaries, repository usage, and contribution patterns.

Current docs:

- `docs/SKILL_BOUNDARIES.md`
- `docs/RULES_AND_SKILLS_README.md`
- `docs/USAGE_EXAMPLES.md`

## What Each Skill Does

### `product-ui-consistency-review-core`

- review sibling screens and repeated UI blocks
- detect semantic, structural, interaction, and visual drift
- work as the generic first-pass review method

### `product-ui-consistency-review-specialized`

- review mature product families using in-domain terminology
- keep domain meaning intact when generic review would flatten too much
- act as the domain-aware version of the core review skill

### `product-flow-validation`

- validate that a user choice keeps the same meaning through the full path
- inspect entry, runtime, persistence, recovery, history, and replay together
- work best after consistency fixes or state-model changes

### `app-rules-architect`

- turn repeated product decisions into durable rules
- separate universal principles from app-specific rules
- help create and maintain files such as `APP_RULES.md` and `FEATURE_RULES.md`

## Recommended Usage Order

In many projects, the best order is:

1. review related screens with `product-ui-consistency-review-core`
2. switch to `product-ui-consistency-review-specialized` if domain language matters
3. validate the end-to-end user path with `product-flow-validation`
4. promote repeated outcomes into durable rules with `app-rules-architect`

## What Goes Where

Use this rule of thumb:

- put reusable review or validation method into a skill
- put a reusable document scaffold into `templates/`
- put cross-skill explanations into `docs/`
- put app-specific product behavior into that app’s own rules files, not into this repo’s generic skills

## Generic vs Specialized

Keep content generic when it describes:

- reusable review logic
- reusable validation steps
- output formats
- decision rules

Move content toward specialized when it depends on:

- stable domain terminology
- product-family-specific repeated blocks
- domain-specific meanings that generic wording would weaken

Do not mix one project’s concrete terms into the main workflow of a generic skill.

## How This Connects To Rules

Skills help find and validate product issues.

Rules help preserve the decisions after the issues are understood.

Typical flow:

1. Use a review skill to find drift.
2. Use flow validation to confirm where meaning breaks.
3. Use `app-rules-architect` when the same decision should stop being rediscovered.

## Installation Note

If you are new to the repository, start from [README.md](../README.md).

That file is the best onboarding entry point.
