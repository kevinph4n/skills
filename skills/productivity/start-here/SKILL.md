---
name: start-here
description: Route the user to the right skill or flow. Use when the user is unsure what to do next, asks which skill to use, or starts work without a clear step.
---

# Goal
Pick the right next skill. Do not do the work here.

# Flows
New idea: idea-hunt -> idea-validate -> idea-stress-test -> tech-stack-rec -> tech-validate (part 1) -> /tech-stack-workflow -> tech-validate (part 2)
- Validated idea already: start at tech-stack-rec
- Stack chosen, ready to build: /tech-stack-workflow
- Project finished: tech-validate (part 2)
- Any UI work (new page, redesign, "make it look better"): front-end-design, also during /tech-stack-workflow phases that touch the frontend

# Skills
| Skill | Use when | Invocation |
|---|---|---|
| idea-hunt | no idea yet, vague domain | model |
| idea-validate | concrete idea, is it worth it? | model |
| idea-stress-test | validated idea, will it scale? | model |
| tech-stack-rec | choosing what to build with | model |
| tech-validate | audit a stack, or quiz the user after finishing | model |
| tech-stack-workflow | building the project phase by phase | user only (/tech-stack-workflow) |
| front-end-design | designing or restyling any UI | model |

# Steps
1. If inside a project, read `docs/idea.md`, `docs/stack.md`, `docs/progress.md` to see where the user is.
2. Name the next skill and why, in 1-2 lines. If two fit, state the tradeoff.
3. If nothing fits, say so. If the user has done this task manually 3+ times, suggest writing a skill for it.
