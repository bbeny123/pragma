# Workspace isolation

Read when requested isolation, concurrent edits, conflicting experiments, or workspace/branch requirements make it useful, including for solo work.

- Establish the actual path, revision, ownership, and relevant pending edits. Reuse suitable existing host-managed isolation; a linked worktree alone does not establish exclusive ownership. Prefer a suitable native tool when available, otherwise a local Git worktree within authorization.
- A new worktree does not automatically contain source-checkout uncommitted or staged changes. If they matter, preserve and transfer the needed state deliberately. Do not discard user work, switch their checkout, or commit merely to construct a baseline.
- Use the declared location or a suitable ignored/external path. Treat submodules as external repositories unless inspection is requested.
- Isolate the resource that can conflict. Working files and indexes may be separate while repository configuration/refs, databases, ports, services, and caches remain shared. Ownership and serialized access can be sufficient; separate directories alone do not make parallel execution safe.
- Perform setup/baseline checks only when needed for the task or to distinguish existing failures. Use actual repository procedures and provision only what the work needs.
- Preserve the result and relevant evidence before cleaning up agent-owned resources. Do not force-remove dirty worktrees or prune unrelated state. Integration, commits, and remote changes retain their actual authorization requirements.

If required isolation is blocked, resolve the restriction or choose a suitable alternative; do not silently fall back to modifying the user's checkout.
