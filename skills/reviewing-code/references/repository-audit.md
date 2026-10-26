# Repository and documented-debt audit

Read only for an explicitly requested audit or assessment of documented deferrals. Ordinary change review does not expand into a whole-repository scan.

Map the requested area's entrypoints, relevant build/deploy context, dependencies, and important data/lifecycle paths. Inspect consequential paths first, considering actual expected load. Say which areas were sampled, not read, or not exercised; sampling is not an exhaustive audit. Apply reviewing-code's concrete evidence and priority rules.

Before proposing deletion, inspect actual usage and contracts, including configuration, generated/dynamic references, and relevant external consumers. An absence of text matches alone does not prove dead code. Recommend only worthwhile simplifications within scope; thin adapters or one implementation alone do not prove bloat.

For documented deferrals, inspect TODO, FIXME, and user-specified comment markers. Exclude generated/build/dependency noise and mentions that are not deferrals. Trace connected code to establish the real current limitation and evidence-supported revisit conditions. Distinguish obsolete comments, actual deferrals, and unknowns. A documented ceiling does not exempt a broken contract; a missing written trigger alone is not a defect. Git blame shows authorship, not current ownership.

Return prioritized findings, or a complete marker listing when requested, with useful locations and practical impact. Zero matching markers does not prove no technical debt or a healthy repository. Reporting is read-only unless fixes are also authorized.
