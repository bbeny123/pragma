# Planning meaningful work

Read when dependencies, migrations, uncertain scope, or handoff make a plan useful.

- State the destination, scope, and constraints, including settled exclusions. Separate unsettled decisions from tasks; record known blockers precisely without inventing details for dependent unknowns.
- Resolve currently answerable material user decisions through design-grill before implementing that scope. Read settled design/requirements alongside a plan; correct routine plan defects within authorization, and return consequential changes to discussion.
- Choose coherent tasks with concrete outcomes, real prerequisites, relevant affected areas/contracts, and useful verification. Carry exact agreed identifiers or values when they matter; leave routine implementation details to the builder.
- Prefer independently verifiable behavior slices when appropriate. A mechanical cross-cutting change can be one task. Use staged compatibility or expand/contract work when actual rollout or concurrent consumers require it.
- Check coverage of the agreed outcome and consistency of shared contracts across tasks. Fold setup and necessary cleanup into the work that needs them; identify consequential failure cases concretely.
- When a durable plan is useful, save it to `docs/pragma/plans/YYYY-MM-DD-<topic>.md` (use the creation date and keep the filename on updates). Keep planned structure here; link existing artifacts where they hold relevant detail.
- For nontrivial plans, read and apply [session-notes](../../session-notes/SKILL.md). Track task status, blockers, and the next action in the note, linking the plan.
- Before larger execution where delegation is viable and could materially help, read [delegating](../../delegating/SKILL.md) to settle the execution method.
- Execute in dependency order, reusing valid evidence and completed work. Revise invalidated assumptions/dependencies rather than following stale steps literally. A plan does not authorize commits, publication, or integration.
