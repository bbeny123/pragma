---
name: tests-first
description: Chooses behavior tests and proportionate verification for features, fixes, refactors, and test review. Use when coverage or checks matter.
---

# Tests First

Inspect changed behavior and existing coverage. Protect current behavior and explicit contracts; each test should catch a meaningful regression or contract violation, rather than freeze implementation or chase coverage.

## Write useful tests

When coverage is needed, **prefer a complete behavior test before implementation; afterward is also valid**. Verify final behavior and use intermediate checks to resolve concrete uncertainty. Do not force a RED/GREEN/REFACTOR sequence or revert working code merely to manufacture a failing test.

- Derive expectations from the contract, checked examples, or known-good data, independently of production logic and its helpers.
- Prefer classical testing with real dependencies; assert results, state, and side effects. Use real infrastructure for SQL, transactions, wiring, or protocol contracts; E2E for full-journey risks. Choose the smallest trustworthy boundary, without fixed test ratios.
- Keep purposeful unit tests. Use test doubles when real dependencies are impractical or a narrow interaction is itself contractual. Understand side effects before mocking; preserve the behavior under test. Keep fixtures faithful to the relevant real shape, omitting irrelevant fields.
- Assert calls, arguments, counts, or ordering only when contractual. Assert persisted state when persistence is the behavior under test.
- Keep setup/helpers simple. Avoid test-only production APIs, tests that only verify mock interactions, source-text snapshots, and trivial-forwarding tests unless they protect a meaningful transformation or contract.
- Trigger asynchronous operations once and await an observable outcome with a bounded check; use delays only for a real timing reason.
- Remove duplicate, brittle, or discarded-alternative tests that protect no current behavior. Tiny editorial/mechanical edits or adequate existing coverage can need no new test.

## Verify proportionately

Choose checks from affected contracts, risk, and repository requirements. Tests, builds, static inspection, manual checks, and runtime/integration evidence establish different claims.

Read results and exit status; distinguish code failures from unavailable infrastructure before changing code or builds. Repeat or broaden checks for relevant edits, failures, unresolved concerns, or explicit requirements; small changes do not automatically require a full suite.

Report what was checked, observed failures, and material limits. Reuse evidence that still applies to the final state; a focused check does not establish a full-suite pass.
