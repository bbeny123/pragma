---
name: delegating
description: Use when choosing inline or delegated execution or coordinating subagents, including task division, agent context, and combined-result review.
---

# Delegating

Follow applicable instructions and identify coherent outcomes and dependencies. Only one agent edits at a time; read-only agents may run in parallel without unsafe shared state.

Use inline execution for simple work. Choose inline or delegated execution by expected benefit and coordination cost; honor an already chosen method. Ask the user when the choice materially changes scope, cost, or workspace setup.

## Give each agent a usable task

Give every agent an objective, owned files/responsibility, constraints, relevant source/context paths, shared contracts, and expected evidence. Tell workers they are not alone: preserve others' edits and coordinate boundary changes. Scope read-only discovery/review too.

Require coding agents to read and apply [ponytail](../ponytail/SKILL.md); pass its exact path and relevant task guidance. Skill metadata or inherited history does not prove a body was read. Include settled decisions and, when useful, the exact path to an existing session note. Keep context focused.

Choose a model and context strategy that fit the task and available tools. Reuse agents when their context helps; use fresh context when independence or contamination warrants it. For independent review, prefer fresh context with requirements, settled constraints, the change, and relevant sources/evidence, without the implementer's full discussion or rationale.

## Own the combined result

While agents run, continue useful local work; use host-supported completion notifications/waits when idle, without needless polling.

Check returned work and evidence against assigned outcomes; agent success claims are insufficient. Resolve cross-task gaps, conflicting assumptions, and interaction failures. The main agent owns whole-task completeness.

Use independent review of a delegated task when warranted by risk, uncertainty, or downstream impact; choose its scope accordingly. Use [reviewing-code](../reviewing-code/SKILL.md) for whole-change assessment, checking interactions and subsequent edits while reusing valid reviews, and [tests-first](../tests-first/SKILL.md) for proportionate verification.

Read [isolation](references/isolation.md) for requested or necessary workspace isolation, including solo work.
