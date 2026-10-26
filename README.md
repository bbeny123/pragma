# Pragma

Agent skills for pragmatic developers who care about quality and are mildly allergic to busywork.

Pragma helps your coding agent write quality code through automatically selected skills and a workflow designed to keep time and token overhead low. Planning, testing, and review scale with the task.

For Codex and Claude Code. Built on [Superpowers](https://github.com/obra/superpowers) and [Ponytail](https://github.com/DietrichGebert/ponytail), with a little inspiration from [Matt Pocock's skills](https://github.com/mattpocock/skills).

## Install

Codex:

```sh
codex plugin marketplace add bbeny123/pragma
codex plugin add pragma@pragma
```

Claude Code:

```sh
claude plugin marketplace add bbeny123/pragma
claude plugin install pragma@pragma
```

Start a new session after installation. In Codex, open `/hooks` and review and trust the Pragma hook definition.

Requires Bash (Git Bash on native Windows). No Node.js or build step.

## Use

Describe the task as usual: "Fix this failing test", "Review these changes", or "Help me design this feature". Pragma selects relevant skills automatically; you can also request one by name.

A `SessionStart` hook loads `using-pragma` on startup, clear, and compaction. Other skills and deeper references are read as needed. Your instructions and repository rules take precedence.

## Skills

| Skill | Purpose |
| --- | --- |
| [using-pragma](skills/using-pragma/SKILL.md) | Select and apply relevant guidance. |
| [ponytail](skills/ponytail/SKILL.md) | Choose the smallest clear, correct, and complete solution. |
| [design-grill](skills/design-grill/SKILL.md) | Clarify requirements and challenge consequential design choices. |
| [tests-first](skills/tests-first/SKILL.md) | Choose meaningful behavior tests and proportionate verification. |
| [debugging](skills/debugging/SKILL.md) | Diagnose failures and regressions from evidence. |
| [reviewing-code](skills/reviewing-code/SKILL.md) | Review changes, feedback, and explicitly requested repository audits. |
| [delegating](skills/delegating/SKILL.md) | Choose execution strategy and coordinate subagents. |
| [research](skills/research/SKILL.md) | Resolve factual uncertainty that affects an answer or decision. |
| [prototype](skills/prototype/SKILL.md) | Run bounded experiments to settle material unknowns. |
| [agent-docs](skills/agent-docs/SKILL.md) | Write skills, AGENTS.md, and supporting agent guidance. |
| [session-notes](skills/session-notes/SKILL.md) | Preserve task state for continuation and handoff. |
| [session-retro](skills/session-retro/SKILL.md) | Diagnose agent behavior, missed guidance, and wasted work. |
| [pr-tickets](skills/pr-tickets/SKILL.md) | Draft concise PR/MR and ticket titles and descriptions. |

MIT licensed. See [LICENSE](LICENSE) for terms and upstream attribution.
