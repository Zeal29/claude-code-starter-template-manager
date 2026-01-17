# Subtasks Index - T001

## Overview
**Total**: 4 subtasks
**Completed**: 0 (0%)
**Task**: T001 - Fix Task and Subtask Behaviour

## Subtasks
| ID | Name | Status | Priority | Folder |
|----|------|--------|----------|--------|
| S1 | Template Refactoring | pending | P0 | T001-S01-template-refactoring/ |
| S2 | Command Updates | pending | P0 | T001-S02-command-updates/ |
| S3 | Documentation | pending | P1 | T001-S03-documentation/ |
| S4 | Validation & Dogfooding | pending | P1 | T001-S04-validation-dogfooding/ |

## Subtask Details

### S1: Template Refactoring
**Objective**: Update Epic/Task/Subtask templates with WHAT/WHY/HOW structure from handoff template

**Requirements**:
- Study generate-handoff.md WHAT/WHY/HOW structure
- Design progressive disclosure guidelines (what detail at each level)
- Update epic-context.template.md
- Update task-context.template.md
- Create/update subtask-context.template.md
- Add progressive disclosure guidance to all templates

**Files**: `docs/_templates/*.md`
**Blocks**: S2, S3, S4

---

### S2: Command Updates
**Objective**: Fix state machine and capture discussion context during work item creation

**Requirements**:
- Fix duplicate subtask storage (single source in _subtasks-index.md)
- Ensure commands update both context.md AND index files atomically
- Add discussion/WHY capture during task/subtask creation
- Update `/work:epic-new` for WHAT/WHY/HOW
- Update `/work:task-new` for WHAT/WHY/HOW + discussion capture
- Update `/work:subtask-add` for deep detail capture
- Fix `/work:save` state machine consistency

**Files**: `.claude/commands/work/*.md`
**Blocked by**: S1

---

### S3: Documentation
**Objective**: Document progressive disclosure pattern and provide examples

**Requirements**:
- Document Epic→Task→Subtask progressive disclosure in README
- Update agent_docs/work-system.md (if exists)
- Create good vs bad examples for each level
- Document single source of truth for subtasks
- Explain WHAT/WHY/HOW at each hierarchy level

**Files**: `claude-code-starter/README.md`, `.claude/agent_docs/*.md`
**Blocked by**: S1, S2

---

### S4: Validation & Dogfooding
**Objective**: Test new system and apply to this meta-project

**Requirements**:
- Test epic creation with new template
- Test task creation with new template + discussion capture
- Test subtask creation with new template
- Verify state machine consistency (context.md ↔ index files)
- Apply new system to meta-project work items (dogfooding)
- Optional: Migrate E001/E002 to new templates

**Files**: Test across project
**Blocked by**: S1, S2, S3

## Notes
- S1 is foundation - templates must be done first
- S2 implements behavior changes
- S3 documents the patterns
- S4 validates everything works
- All subtasks follow same WHAT/WHY/HOW structure they're implementing (meta!)
