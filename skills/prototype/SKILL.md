---
name: prototype
description: Runs a bounded experiment when existing evidence cannot settle a material design, feasibility, or runtime question cheaply. Use for prototypes, spikes, and proof-of-concept work.
---

# Prototype

Define the question, an observable criterion for an answer, and a practical time or resource limit. Reuse cheaper existing evidence first. Build the smallest probe, demo, or measurement that can settle the uncertainty, including real dependencies and conditions that matter to the conclusion. Use assertions or tests when they make the result trustworthy.

Keep it easy to run and inspect; expose the relevant state or output. Avoid polish, speculative flexibility, and production hardening unrelated to the question. Persistence, network calls, or realistic load belong in the experiment when they are what it must establish.

Finish currently answerable user decisions through [design-grill](../design-grill/SKILL.md) before implementation. If a blocked decision needs experimental evidence, limit the experiment to obtaining that evidence and resume the decision discussion before implementing the agreed feature.

Keep one-off experimental artifacts outside production code by default. Use project infrastructure temporarily when necessary, with clear ownership and purpose. Stop when the question is answered or the limit is reached. Report the conclusion, conditions, and material limits, including an inconclusive outcome; startup alone does not establish the hypothesis.

Before handoff, remove one-off agent-owned files, routes, instrumentation, and resources from completed experiments; retain conclusions and necessary evidence. Keep useful repeatable checks as maintained tests/benchmarks. Preserve and identify artifacts needed for active experiments; preserve user-owned artifacts and do not silently promote prototypes to production.
