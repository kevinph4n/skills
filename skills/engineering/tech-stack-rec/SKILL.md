---
name: tech-stack-rec
description: Recommend a tech stack for a project. Use when moving from idea to implementation or when the user asks what to build with. Proven core stack first, niche tech only when the project demands it.
---

# Goal
The smallest proven stack that solves the problem. Boring first, exotic only with a reason.

# Core stack (default, deviate only with a concrete reason)
- API: FastAPI + Pydantic
- DB: PostgreSQL + SQLAlchemy ORM + Alembic migrations
- Tests: pytest
- Container: Docker + docker-compose
- CI/CD: GitHub Actions (lint, test, build)
- Deploy: Vercel. If the backend needs long-running processes, background workers or websockets, flag Vercel's serverless limits and propose a container host.

# ML projects
- Cleaning: pandas, step by step (load, inspect, missing values, dtypes, duplicates and outliers, features)
- Model: pick ONE and justify it from the data:
  - RandomForest: small or medium data, fast robust baseline, little tuning
  - XGBoost: larger tabular data, accuracy matters, imbalanced classes, time to tune
  - Unsure: RandomForest baseline first
- Visualization: matplotlib
- Serving (if needed): FastAPI

# Extensions
Add tech beyond the core only when a specific requirement needs it (realtime, queues, search, caching). For each: the requirement, why the core can't handle it, the cost of adding it.

# Output
Table: layer | choice | why | main drawback. Then extensions with justification, then rejected alternatives (one line each).
Save to `docs/stack.md`, then run tech-validate (part 1).

# Rules
- Every tool must map to a requirement of THIS project.
- Fewer pieces wins. Each tool is something to learn and maintain.
