# Epic: E001 - Integrate Context Checkpoint System

## Meta
```yaml
id: E001
name: integrate-context-checkpoint
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-16
updated: 2026-01-16
owner: User
external_id: ""  # Not using external tracker for meta-project
```

## Objective

Integrate the workAt70Percent context checkpoint automation system into the claude-code-starter template, enabling automatic context monitoring, intelligent checkpoint creation, and seamless session handoffs.

## Success Criteria
- [ ] `/check-context` command added to work management suite
- [ ] Context monitoring hook integrated and working
- [ ] Replaces standalone task.md with *-context.md files
- [ ] Auto-generates next 5 steps at 70%+ context
- [ ] User approval flow implemented
- [ ] Documentation updated for new workflow
- [ ] Zero breaking changes to existing commands
- [ ] Template tested with real epic/task workflow

## Tasks Overview
| ID | Name | Status | Progress | External ID |
|----|------|--------|----------|-------------|
| - | No tasks yet | - | - | - |

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
**Active Task**: None (ready to start)
**Blocker**: None
**Next Session**: Create tasks to break down the integration work

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
- [ ] Should the hook be opt-in or opt-out?
- [ ] Should context percentage be configurable per project?
- [ ] How to handle epics vs tasks vs subtasks in checkpoint?
- [ ] Should we auto-commit on checkpoint or ask user?
- [ ] What to do if user rejects checkpoint suggestions?

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

## Time Log
| Date | Duration | Task | Notes |
|------|----------|------|-------|
| 2026-01-16 | 10min | Setup | Epic created, meta-project initialized |
