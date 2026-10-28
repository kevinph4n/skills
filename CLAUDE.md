# skills repo

Personal agent skills. This repo is the single source of truth for everything in the Claude Code skills directory and the global CLAUDE.md.

## Layout
Skills live in bucket folders under `skills/`:
- `engineering/`: building software (stack, build flow, validation)
- `productivity/`: non-code work (ideas, research, planning, routing)
- `in-progress/`: drafts being tested in real use. Linked locally, not in the top-level README.
- `misc/`: kept but rarely used. Not linked.
- `deprecated/`: no longer used. Not linked.

Each skill is `skills/<bucket>/<skill-name>/SKILL.md`. Names are kebab-case and unique across all buckets (Claude Code sees one flat list).

## Index rules
- Every skill in `engineering/` or `productivity/` has an entry in the top-level `README.md`: name linked to its `SKILL.md`, plus a one-line description.
- Every bucket has a `README.md` listing all its skills the same way.
- The top-level README and the promoted bucket READMEs group entries into User-invoked and Model-invoked. Other buckets use a flat list.
- Moving a skill between buckets updates both bucket READMEs and the top-level README in the same commit.

## Invocation
- User-invoked: frontmatter has `disable-model-invocation: true`. Runs only when typed as `/skill-name`. Use for skills that write a lot of code, are expensive, or must never trigger by accident.
- Model-invoked: no flag. The `description` decides when it auto-loads, so it must say when to use it AND when not to.

## Router
`start-here` maps every user-reachable skill and the flows between them. Whenever a skill is added, renamed, removed, or changes how it fits a flow, update `start-here` in the same commit. A router that points to a missing skill, or misses a new one, is broken.

## Linking
After adding, removing, renaming or moving a skill, run `bash scripts/link-skills.sh` (Git Bash). It:
- junctions every skill outside `misc/` and `deprecated/` into `$CLAUDE_CONFIG_DIR/skills/`
- copies `global/CLAUDE.md` to `$CLAUDE_CONFIG_DIR/CLAUDE.md`

Edit global instructions in `global/CLAUDE.md` only. The copy in the config folder is overwritten on every run.

## Writing skills
- English only. No em-dashes anywhere: rewrite the sentence with a comma, colon, period or parentheses instead of swapping the character.
- Shape: Goal, Steps, Rules, Output. Aim for under 50 lines. Cut anything the model already does by default.
- One skill, one job. If it needs "and also", split it.
- Every skill has at least one rule about drawbacks or failure modes.
- Skills that produce project state write it to `docs/` (`idea.md`, `stack.md`, `progress.md`) so later sessions can resume.
- When a skill misbehaves in real use, fix the `SKILL.md` and commit. Don't just correct it in chat.

## Commits
- Never add Co-Authored-By or any AI attribution.
- Never commit `synced/` (app-managed copies of account skills) or `.claude/`.
