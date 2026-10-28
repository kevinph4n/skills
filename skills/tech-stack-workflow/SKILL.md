---
name: tech-stack-workflow
description: Build a project phase by phase from a chosen stack — complete and understood, without wasting time on manual busywork. Use after tech-stack-rec or when the user starts building.
---

# Goal
Ship in small, complete phases so the user understands every part.

# Principles
- One phase at a time. Each ends working, tested, committed. Never leave a phase half-done.
- Generate the boring parts (scaffolding, config, Dockerfile, CI), then explain them in 2–3 lines.
- Build the core (models, business logic, ML pipeline) with the user, explaining the why.
- Before each phase: goal + done criteria. After: how to run/verify it + what was learned.

# Web / backend phases
1. Skeleton: FastAPI app, Docker, docker-compose with Postgres, /health. Done: `docker compose up` works.
2. Data: SQLAlchemy models + Alembic migration. Done: migration runs, tables exist.
3. Core logic + endpoints with Pydantic schemas. Done: works via /docs.
4. Tests: pytest for logic + endpoints. Done: all pass.
5. CI: GitHub Actions lint + test. Done: green on push.
6. Deploy. Done: live URL works.

# ML phases
1. Load + inspect: shape, dtypes, missing values, describe().
2. Clean in pandas, one step at a time; print the effect of each step.
3. EDA with matplotlib: distributions, correlations, target balance.
4. Features + train/test split, with no leakage.
5. Train the chosen model; proper metric; confusion matrix + feature importance plot.
6. One tuning round; compare with the baseline.
7. Optional: serve via FastAPI.

# Rules
- Never skip tests or verification to go faster.
- Never start the next phase while the current one is broken.
- Ask before deviating from the plan.
- When everything is done, run tech-validate (part 2).
