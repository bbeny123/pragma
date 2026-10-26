---
name: session-retro
description: Use for requested retrospectives or diagnosis of agent behavior, including repeated work, ignored decisions, missed skill activation, poor results, or unexplained cost and delay. Product/runtime diagnosis belongs to debugging.
---

# Session Retro

Identify the session/event and expected versus observed agent behavior from available context. Ask only for missing material scope.

Read relevant rules, tool evidence, and bounded transcript regions. For locating or parsing session records, use [session history](references/session-history.md). Preserve exact source paths and event/record locations; the human's words, injected messages, tool results, parent dispatches, and compaction summaries are different evidence.

Establish what happened before explaining why. Separate verified events, causal hypotheses, and unknowns. Check whether a rule, tool, or skill was available and actually applied; a skill mention alone does not establish compliance. Distinguish captured historical rules and environment evidence from current observations; current files or versions do not prove what was present in the investigated session. Quantify repeated work, tokens, cost, and time only when the records and counter semantics support it, disclosing coverage limits.

Recommend the smallest evidence-backed improvement using existing mechanisms: navigation/context pointers, missed or broken checks, conflicting instructions, skill discovery, expensive tool use, or missing information access. Match its scope to the demonstrated problem.

Report prioritized findings in conversation by default, with evidence, consequence, and a narrow recommendation. A durable report under `docs/pragma/`, cross-session comparison, export, instruction/configuration edits, or publication follows actual requested authorization. Recommendations do not themselves authorize implementing them.
