# Claude Code Starter - Meta Project Index

**Project:** Template Development Management
**Created:** 2026-01-16
**Purpose:** Manage evolution of claude-code-starter template

---

## Active Epics
| ID | Name | Status | Progress | Active Task | External ID |
|----|------|--------|----------|-------------|-------------|
| E001 | integrate-context-checkpoint | 🟡 in-progress | 30% | T002 | — |
| E002 | context-handover-and-cleanup | 📝 draft | 0% | None | — |

## Active Standalone Tasks
| ID | Name | Status | External ID |
|----|------|--------|-------------|
| — | No active tasks yet | — | — |

---

## Quick Resume
**Last worked on**: E001-T007 - document-meta-learnings (task created)
**Command**: `/work:resume E001-T007` or `/work:resume E001-T002` (in review)

---

## ID Counters
```yaml
next_epic: E003
next_standalone_task: T001
```

---

## State Legend
| Emoji | State | Description |
|-------|-------|-------------|
| 📝 | draft | Created, not fully defined |
| ⚪ | ready | Defined, waiting to start |
| 🟡 | in-progress | Active work |
| 🔴 | blocked | Waiting on dependency |
| 🔵 | review | Code complete, in review |
| 🟢 | done | Completed |
| ⬛ | archived | Closed and archived |

---

## External ID System
```yaml
system: none  # This meta-project doesn't need external tracking
project_key: ""
```

---

## Project Context

### What We're Building
- **Template Name:** claude-code-starter
- **Template Location:** `./claude-code-starter/`
- **Current Version:** Initial release
- **Goal:** Production-ready template for Claude Code projects

### Current Focus
**Integration:** workAt70Percent context checkpoint system

**R&D Location:** `./workAt70Percent/`

**Integration Goals:**
1. Add `/check-context` command to work management suite
2. Replace standalone task.md with *-context.md files
3. Include context-monitor hook in template
4. Auto-generate next steps at 70%+ context
5. Maintain backward compatibility

---

## Progressive Disclosure
<!--
This file is Layer 1 - Overview of all template development work
- Layer 2: Epic/Task context files with full details
- Layer 3: Research, specs, R&D projects
-->

---

**Last Updated:** 2026-01-17
