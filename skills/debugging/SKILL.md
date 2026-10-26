---
name: debugging
description: Diagnoses bugs, failing tests or builds, unexpected behavior, and performance regressions using evidence from the affected path. Use before prescribing a fix when the cause is uncertain.
---

# Debugging

Establish the reported symptom, expected behavior, affected inputs/path, and relevant configuration/environment. Read the actual error and connected code, not just a nearby stack frame. Check recent changes and comparable working behavior where they help distinguish causes.

Use an existing reproducer, focused test, logs, debugger, or direct runtime evidence as appropriate. Make the signal specific to the user's failure; "did not crash" may not establish correct behavior. A missing reproducer does not prohibit investigation, but limits claims of confirmed resolution. Improve a slow/flaky feedback loop only as far as the uncertainty requires.

Trace invalid data or state back through real callers to its origin. Separate observed facts from hypotheses. Choose a targeted observation or experiment whose result distinguishes plausible causes; keep changes interpretable. After a failed experiment, reassess rather than stacking speculative fixes. Stop expanding the investigation when evidence supports the cause and fix.

For performance regressions, establish a representative baseline and compare under equivalent conditions, using the relevant profiler, query plan, or measurements. Inspect signal semantics through [observability](../reviewing-code/references/observability.md) when metrics, logs, dashboards, or alerts materially affect the conclusion. Collect only needed evidence; avoid exposing secret values.

Before implementing the fix, read and apply [tests-first](../tests-first/SKILL.md) to choose proportionate regression coverage and verification. Fix the supported cause without unrelated cleanup. Verify the original failure scenario, including relevant conditions that a minimized check omitted; state the limit if that confirmation remains unavailable.

Remove one-off agent-owned diagnostics after investigation; preserve and identify artifacts needed for continuation. Report the supported cause, resulting behavior, evidence, and material uncertainty. Resolve environmental or external failures separately; do not change application code to make an unavailable check appear green.
