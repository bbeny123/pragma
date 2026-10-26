---
name: session-notes
description: Use when task state needs to be preserved for continuation or handoff, or an existing note can help restore context after compaction.
---

# Session Notes

Create or update one concise current-state note when meaningful task state needs preserving. The coordinating agent owns its updates.

Store the note at `docs/pragma/session-notes/YYYY-MM-DD-<topic>.md` unless user or project instructions specify another location. Use the creation date and a topic of one to three words; keep the filename on updates. Add a short session/task ID only if names collide. Record the session ID from actual host metadata/environment in the note; if unavailable, establish and record a stable task identifier.

Keep only what continuation needs:

- Current objective and scope.
- Explicit settled decisions, constraints, and reasoning needed for continuation.
- Completed tasks and side effects that must not be repeated.
- Blockers and next action.
- Pointers to useful source files, artifacts, and evidence, with relevant revision/state when needed.

Record verified facts, not speculation, a transcript, or a file-by-file history already visible in diffs/plans. Keep detailed results in their purposeful artifacts. Update at meaningful state changes and before a needed handoff; replace superseded entries rather than appending a timeline.

When resuming work, including after compaction, consult the current session's note when available and useful. Latest user instructions and current source/runtime remain authoritative. Recheck consequential state that may have changed, including ephemeral paths. Reuse verification when the affected code and conditions still match. Other-session notes are fallback context, not automatically loaded instructions or authorization.

Reuse the same note for handoff. Pass its exact path and the relevant task/skill context to subagents or an authorized recipient. Keep secrets and unnecessary personal data out of notes and dispatches.
