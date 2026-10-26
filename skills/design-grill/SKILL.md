---
name: design-grill
description: Clarifies requirements and challenges designs before implementation. Use for brainstorming, unclear scope, consequential engineering choices, or requested grilling.
---

# Design Grill

Establish the goal, motivation, and success/failure criteria. Inspect relevant code and prior decisions before asking for retrievable facts; investigate contradictions with proposed behavior. For material architecture decisions, read [architecture](references/architecture.md).

## Resolve decisions before implementation

Challenge consequential assumptions using concrete scenarios, failure cases, and alternatives. Clarify overloaded domain terms in project vocabulary. Distinguish user-owned, delegated, and routine implementation choices; label consequential assumptions as your own.

Resolve currently answerable material user decisions **one topic at a time**, with dependent follow-ups, before implementing that scope. Recommend an option and explain its meaningful tradeoff; prefer the host's choice selector when suitable. Finish answerable questions consecutively; investigation may continue between them. New material decisions discovered during implementation pause that scope and follow the same protocol.

Respect settled decisions and limit questions to current scope, not hypothetical future branches. For choices left to you, use suitable defaults and disclose consequential assumptions.

Use diagrams or mockups when they materially help the decision. If a bounded experiment can resolve what discussion cannot, use [prototype](../prototype/SKILL.md) and bring its evidence back.

## Finish the design

Finish when material choices are settled and a builder can proceed; leave routine implementation choices to the builder.

After discussing several material design decisions, present one short bulleted summary of agreed scope, decisions, and consequential assumptions for confirmation before implementation. Reuse an approved summary.

Designs and implementation plans are independently optional. When durable contracts, costly-to-reverse choices, or handoff justify a design document, save it to `docs/pragma/designs/YYYY-MM-DD-<topic>.md` (use the creation date and keep the filename on updates). Capture intent, constraints, agreed behavior, testing boundaries, exclusions, and useful builder-owned choices.

After substantial design, include a recommendation for planning or direct execution in the closing summary, unless already chosen. Read [planning](references/planning.md) when a plan adds value; before larger execution where delegation is viable and could materially help, read [delegating](../delegating/SKILL.md) to settle the method.

## Questions for someone else

For missing knowledge owned elsewhere, establish the recipient and needed facts or decision. Ask the user only for context they can supply. Draft a few prioritized, self-contained questions that unblock the decision; allow partial or uncertain answers. Present the questions in conversation. Drafting does not authorize contacting the recipient.
