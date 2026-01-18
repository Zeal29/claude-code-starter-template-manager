# Epic: E001 - Integrate Context Checkpoint System

## Meta
```yaml
id: E001
name: integrate-context-checkpoint
status: in-progress  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-16
updated: 2026-01-17
owner: User
external_id: ""  # Not using external tracker for meta-project
```

## Objective

Integrate the workAt70Percent context checkpoint automation system into the claude-code-starter template, enabling automatic context monitoring, intelligent checkpoint creation, and seamless session handoffs.

## Success Criteria
- [ ] `/check-context` command added to work management suite
- [x] Context monitoring hook integrated and working
- [x] Replaces standalone task.md with *-context.md files
- [ ] Auto-generates next 5 steps at 70%+ context
- [ ] User approval flow implemented
- [ ] Documentation updated for new workflow
- [x] Zero breaking changes to existing commands
- [ ] Template tested with real epic/task workflow

## Tasks Overview
| ID | Name | Status | Progress | External ID |
|----|------|--------|----------|-------------|
| T001 | Infrastructure Hook Setup | done | 100% | - |
| T002 | Check Context Command | done | 100% | - |
| T003 | Integration with Work Commands | in-progress | 44% | - |
| T004 | Template Updates | ready | 0% | - |
| T005 | Documentation | ready | 0% | - |
| T006 | Testing & Verification | ready | 0% | - |
| T007 | Document Meta-Learnings | ready | 0% | - |

→ Full task details: `Tasks/E001-T###/`

## Key Decisions
| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-01-16 | Use *-context.md instead of task.md | Leverage existing epic/task context files for consistency |
| 2026-01-16 | Hook reminds every 4-5 steps | Balance between helpful and annoying |
| 2026-01-16 | 70% threshold for checkpoint | Gives buffer before hitting limits |

→ Full history: `Archive/_archive-index.md`

## Dependencies
- **Depends on**:
  - workAt70Percent R&D project (completed)
  - claude-code-starter template (current structure)
- **Blocks**: None

## Git Tracking
```yaml
branch: ""  # Will create feature branch when starting
related_branches: []
```

## Current Focus
**Active Task**: E001-T003 (Integration with Work Commands)
**Blocker**: None
**Completed**: T001, T002 complete - hook infrastructure and check-context command ready
**Next Session**: Start T003 - integrate commands with existing /work:* suite

## Quick Links
- Research: `Research/` (will contain analysis of workAt70Percent)
- Latest Draft: `Drafts/` (can use drafts to plan tasks)
- Archive: `Archive/`
- R&D Source: `../../workAt70Percent/`
- Template: `../../claude-code-starter/`

## Assumptions
- workAt70Percent system is complete and tested
- Template structure supports adding new commands
- Hooks are supported in Claude Code CLI
- Users want automatic context management
- 70% threshold is appropriate for most workflows

## Unanswered Questions
- [x] Should the hook be opt-in or opt-out? **Decision: Opt-out (enabled by default)**
- [x] Should context percentage be configurable per project? **Decision: Yes, via .checkpoint-config**
- [x] How to handle epics vs tasks vs subtasks in checkpoint? **Decision: Active work item only**
- [x] Should we auto-commit on checkpoint or ask user? **Decision: Ask user (configurable)**
- [x] What to do if user rejects checkpoint suggestions? **Decision: 3 options - reject/edit/save**

## Integration Requirements

### From workAt70Percent
1. **context-monitor.sh** - Hook script (bash)
2. **check-context.md** - Slash command
3. **hook-config.json** - Hook configuration
4. **Logic**: Track edits, remind at 4-5 steps, check context, generate next steps

### Into claude-code-starter
1. Add to `.claude/commands/work/check-context.md`
2. Add to `.claude/hooks/context-monitor.sh`
3. Update templates to support checkpoint fields
4. Update documentation in README.md
5. Add examples to agent_docs/

### Adaptation Needed
- Replace `task.md` references with current task's `*-context.md`
- Detect which task/epic is active from `/work:resume` state
- Update "Next 5 Steps" section in context file (not separate file)
- Integrate with existing git workflow from `/git:commit`

## Progress Log

### Session 2026-01-17 (Planning & T001-T002 Implementation)
- Processed draft `2026-01-17-implementation-of-rd`
- Deep analyzed workAt70Percent R&D (context.md, check-context.md, context-monitor.sh)
- Created implementation plan with 6 phases, 16 sub-tasks
- Resolved all 5 design questions (hook opt-out, configurable threshold, etc.)
- Created 6 tasks: T001-T006 with full folder structures
- **T001 completed**: Infrastructure hook setup (100%)
- **T002 completed**: Check context command implementation (100%)
  - Engaged in critical planning with 8-flaw analysis
  - Researched knowledge preservation patterns
  - Created 2 commands: generate-handoff.md, check-context.md
  - Implemented WHAT/WHY/HOW template, state machines, dynamic step count
- **T007 created**: Document Meta-Learnings (for universal patterns)
- **Current State**: T002 in review, T007 ready
- **Next Step**: User review T002, then continue with T003-T006
- **Blocker**: None

## Time Log
| Date | Duration | Task | Notes |
|------|----------|------|-------|
| 2026-01-16 | 10min | Setup | Epic created, meta-project initialized |
| 2026-01-17 | 4h | Planning + T001-T002 | Draft processed, critical planning, 2 commands created, T007 created |
