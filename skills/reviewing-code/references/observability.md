# Trustworthy operational signals

Read when instrumentation, metric or log interpretation, dashboards, or alerts materially affect the task.

- Define the operational question and inspect existing equivalent signals. Add instrumentation for a concrete gap.
- Trace what each signal counts or times and when: attempts versus outcomes, queue wait versus execution versus total latency. Count durable success only after the relevant commit. Check whether failed and cancelled operations are included in counts and latency measurements.
- Estimate series count from label combinations, instances, and histogram buckets where applicable, along with data volume and runtime overhead. Use bounded labels and distributions suited to the question. Avoid unbounded metric labels such as request IDs or raw URLs.
- Check units, time windows, and aggregation across instances. Handle counter resets per instance before aggregating rates. Calculate global percentiles from compatible aggregated distributions, not averaged per-instance percentiles. Choose averages, maxima, percentiles, or distributions to answer the operational question.
- Base dashboards on emitted fields and series; alerts should identify conditions that warrant action. Automatic resolution alone does not make an alert a false positive; assess the condition, expected response, and noise.
- Match verification to the claim: source and registry checks, exported data, and live queries establish different things. Valid dashboard JSON alone does not confirm data availability or query correctness.
- Keep logs purposeful and traceable; avoid duplicate noise and secret values. Preserve existing audit and correlation requirements, following the project's logging conventions.

Reuse valid evidence and add checks only for a concrete gap, following [tests-first](../../tests-first/SKILL.md). Keep versions, endpoints, sampling settings, destinations, and metric catalogs in their authoritative sources.
