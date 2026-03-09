#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="${CODEX_HOME:-$HOME/.codex}/skills"

DEFAULT_SKILLS=(
  "product-ui-consistency-review-core"
  "product-flow-validation"
)

ALL_SKILLS=(
  "app-rules-architect"
  "product-flow-validation"
  "product-ui-consistency-review-core"
  "product-ui-consistency-review-specialized"
)

print_usage() {
  cat <<'EOF'
Usage:
  ./scripts/install_for_codex.sh
  ./scripts/install_for_codex.sh --all
  ./scripts/install_for_codex.sh <skill-name> [<skill-name> ...]

Default:
  Installs the beginner set:
  - product-ui-consistency-review-core
  - product-flow-validation
EOF
}

copy_skill() {
  local skill_name="$1"
  local source_path="$ROOT_DIR/skills/$skill_name"
  local target_path="$SKILLS_DIR/$skill_name"

  if [[ ! -d "$source_path" ]]; then
    echo "Skipping missing skill: $skill_name" >&2
    return
  fi

  mkdir -p "$SKILLS_DIR"
  rm -rf "$target_path"

  if command -v rsync >/dev/null 2>&1; then
    rsync -a "$source_path/" "$target_path/"
  else
    cp -R "$source_path" "$target_path"
  fi

  echo "Installed: $skill_name"
}

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  print_usage
  exit 0
fi

if [[ "${1:-}" == "--all" ]]; then
  SELECTED_SKILLS=("${ALL_SKILLS[@]}")
elif [[ "$#" -gt 0 ]]; then
  SELECTED_SKILLS=("$@")
else
  SELECTED_SKILLS=("${DEFAULT_SKILLS[@]}")
fi

echo "Installing skills into: $SKILLS_DIR"

for skill in "${SELECTED_SKILLS[@]}"; do
  copy_skill "$skill"
done

echo
echo "Done. Restart Codex to load the updated skills."
