---
name: tech-validate
description: Part 1, audit a proposed stack so no tech is used without reason. Part 2, after the project is finished, quiz the user to confirm they understand every technology used. Use after tech-stack-rec and when a project is completed.
---

# Part 1: Stack audit (before building)
For each tool: which concrete requirement does it serve? Could the core stack or something simpler do it? What does it cost to learn and maintain? What is its worst failure mode here?
Verdict per tool: Keep / Replace with X / Remove.
Flag overengineering on small projects: microservices, Kubernetes, message queues, multiple databases, unneeded frameworks.

# Part 2: Understanding check (ONLY after the project is complete)
For each technology actually used:
1. Ask the user to explain, in their own words, what it does in THIS project and why it beat the alternative.
2. Ask one scenario question, e.g. "what breaks if you remove docker-compose?", "why RandomForest over XGBoost here?", "what happens if a migration fails in CI?".
3. One question at a time. Wait for the answer. Don't give it away.
4. Grade: understands / partial / gap. For gaps, give a short explanation, point to the exact file in the project, then re-ask.

End with a table: tech | status | what to review.

# Rules
- Questions about this project's code, not textbook trivia.
- Vague answers ("it's for the database") don't pass.
