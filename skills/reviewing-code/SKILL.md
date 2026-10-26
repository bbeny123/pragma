---
name: reviewing-code
description: Reviews changes and incoming feedback for concrete defects, contract gaps, runtime cost, and useful simplification. Use for code review or after implementation; repository audits require an explicit request.
---

# Reviewing Code

Establish intended behavior, settled decisions, and review scope. For incoming feedback, start with specific claims and affected code. For a change review, use the named diff/files/PR; if unspecified, use pending changes or, when none, the last commit. Resolve material ambiguity before choosing the comparison range.

Read connected **production code, callers, and contracts before tests**. Trace consequential data/lifecycle paths and expected load. For change reviews, inspect the diff and limit the assessment to what it modifies or affects, including unchanged consumers.

## Find problems that matter

Assess correctness, completeness, safety/compatibility, runtime cost under expected load, and worthwhile simplification. Check meaningful coverage and brittle, duplicated, or implementation-coupled tests; use [tests-first](../tests-first/SKILL.md) for concrete evidence gaps.

Ground findings in reachable failures, violated contracts, or concrete runtime or maintenance costs. Confirm callers, inputs, usage, and scale. Thin adapters, single implementations, or documented shortcuts alone are not defects; broken contracts still are. Exclude stylistic preferences and pattern mandates without practical impact.

Read conditional guidance only for the relevant topic:

- [Architecture](../design-grill/references/architecture.md): material boundary/interface or restructuring concern.
- [Observability](references/observability.md): signal semantics, instrumentation, dashboards, or alerts.
- [Repository/debt audit](references/repository-audit.md): explicitly requested subsystem/repository audit or documented-deferral assessment.

## Review the completed result

Assess the whole change once after implementation: brief self-review for small, clear changes; independent review when risk or complexity justifies its cost. Individual delegated tasks may warrant earlier independent review. Reuse valid evidence while checking interactions and subsequent edits; re-review significant fixes and their effects as needed.

Verify feedback against code and constraints before acting. Clarify consequential uncertainty; retain evidence-backed disagreement. Suggestions do not override settled user choices or authorize out-of-scope fixes.

## Report

Return concise, prioritized, deduplicated findings with location, practical consequence, and the smallest useful remedy. Separate confirmed defects from consequential uncertainty and state coverage limits. Report no findings honestly; review alone authorizes neither edits, publication, nor shipping/merging.
