#!/usr/bin/env bash
# Link every skill outside misc/ and deprecated/ into the Claude Code skills
# directory as Windows junctions, and copy global/CLAUDE.md into the config dir.
# Run from Git Bash after adding, removing, renaming or moving a skill.
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
CONFIG="$(cygpath -u "${CLAUDE_CONFIG_DIR:-$USERPROFILE\\.claude}")"
TARGET="$CONFIG/skills"
BUCKETS=(engineering productivity in-progress)

case "$TARGET$REPO" in *" "*) echo "Paths with spaces are not supported." >&2; exit 1;; esac

# The skills dir must be a real folder, not a junction to this repo.
if [ -L "$TARGET" ]; then
  echo "$TARGET is a link. Remove it first: cmd //c \"rmdir $(cygpath -w "$TARGET")\"" >&2
  exit 1
fi
mkdir -p "$TARGET"

# Remove old junctions only. Real folders (e.g. synced/) are left alone.
for entry in "$TARGET"/*; do
  [ -L "$entry" ] && cmd //c "rmdir $(cygpath -w "$entry")" > /dev/null
done

count=0
for bucket in "${BUCKETS[@]}"; do
  for dir in "$REPO/skills/$bucket"/*/; do
    dir="${dir%/}"
    [ -f "$dir/SKILL.md" ] || continue
    name="$(basename "$dir")"
    if [ -e "$TARGET/$name" ]; then
      echo "skip $name: a real folder with that name already exists" >&2
      continue
    fi
    cmd //c "mklink /J $(cygpath -w "$TARGET/$name") $(cygpath -w "$dir")" > /dev/null
    echo "linked $bucket/$name"
    count=$((count + 1))
  done
done

cp "$REPO/global/CLAUDE.md" "$CONFIG/CLAUDE.md"
echo "copied global/CLAUDE.md"
echo "done: $count skills linked into $(cygpath -w "$TARGET")"
