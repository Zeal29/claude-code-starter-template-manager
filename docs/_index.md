# Claude Code Starter - Meta Project Index

**Project:** Template Development Management
**Created:** 2026-01-16
**Purpose:** Manage evolution of claude-code-starter template

---

## Active Epics
| ID | Name | Status | Progress | Active Task | External ID |
|----|------|--------|----------|-------------|-------------|
| E001 | integrate-context-checkpoint | 🟡 in-progress | 35% | T003 | — |
| E002 | meta-learning-system | 🔴 blocked | 0% | None (blocked by E001) | — |

## Active Standalone Tasks
| ID | Name | Status | External ID |
|----|------|--------|-------------|
| T001 | fix-task-and-subtask-behaviour | 🟢 done | — |

---

## Quick Resume
**Last worked on**: E001-T003 - integration-with-work-commands
**Command**: `/work:resume E001-T003`

---

## ID Counters
```yaml
next_epic: E003
next_standalone_task: T002
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

**Last Updated:** 2026-01-18

---

## Recent Changes

### 2026-01-18
- **T001 Complete**: Fix Task and Subtask Behaviour (status: done ✅)
  - All 3 templates updated with WHAT/WHY/HOW structure + Progressive Disclosure Guide
  - Commands updated: subtask-add (single source of truth), draft-process (WHY extraction)
  - New `/work:validate` command to detect state machine issues
  - Comprehensive documentation: work-system.md (~250 lines), progressive-disclosure-examples.md (~300 lines)
  - Validated on E001-T003: correctly detects 9 vs 3 subtask mismatch
  - Workflow correction applied: template-first development
  - All 4 subtasks complete (100%), ready for production use

### 2026-01-17
- **Cleanup**: Removed duplicate E002-context-handover-and-cleanup epic (empty template)
- **E002 Created**: Meta-Learning & Knowledge Capture System epic
  - Progressive design: research → design → implement
  - Blocked by E001 completion
  - 3 initial tasks: Research (T001), Design (T002), Document E001 Patterns (T003)
- **E001-T007 Rescoped**: Renamed from "Document Meta-Learnings" to "Document Checkpoint Patterns"
  - Template-specific patterns only (WHAT/WHY/HOW, context engineering, checkpoint workflow)
  - Universal patterns moved to E002-T003
- **E001-T002 Complete**: Check Context Command done (9/9 subtasks, 17/17 requirements)
  - S9 discovered critical flaw: incomplete state machine (generation vs consumption)
  - Created `/work:complete-handoff` command to fix lifecycle
