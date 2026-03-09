#!/usr/bin/env bash

set -euo pipefail

cat <<'EOF'
== Generic bootstrap ==

Use this repository as your product-method toolkit:
https://github.com/rushairer/ai-product-skills

First read README.md.
Then tell me which skill best matches my task.
Then either install that skill or use it as your working method for the rest of this task.

== Generic consistency review ==

Read:
- README.md
- skills/product-ui-consistency-review-core/SKILL.md

Then use that skill to review these related screens for structural, semantic, interaction, and visual drift.
Report findings in the format required by the skill.

== Domain-aware review ==

Read:
- README.md
- skills/product-ui-consistency-review-specialized/SKILL.md

This product already has established page-family language and repeated card roles.
Use the specialized skill, not the generic one.

== Flow validation ==

Read:
- README.md
- skills/product-flow-validation/SKILL.md

Validate this user path end-to-end:
[replace with your real flow]

Trace the user choice from entry surface through runtime, persistence, recovery, history, and re-entry.
Tell me where the meaning first diverges.

== Rules extraction ==

Read:
- README.md
- skills/app-rules-architect/SKILL.md

Use that skill to turn the repeated decisions in this project into a durable app-rules document.
Separate reusable principles from app-specific rules.
EOF
