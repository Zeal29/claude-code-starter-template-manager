# Task: E001-T002 - Check Context Command

## Meta
```yaml
id: E001-T002
name: check-context-command
epic: E001
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Create the `/work:check-context` command that checks context usage and auto-generates next 5 steps at 70%+ threshold.

## Requirements
- [ ] Create `.claude/commands/work/check-context.md`
- [ ] Command checks context percentage via `/context`
- [ ] Find active work item from `docs/_index.md`
- [ ] Generate 5 next steps based on current work
- [ ] Update *-context.md Progress Log with checkpoint entry
- [ ] Create handoff file in work item folder
- [ ] Git commit checkpoint with proper format
- [ ] User approval flow (3 options: reject/edit/save)

## Relevant Files
- `docs/epics/E001-integrate-context-checkpoint/Research/workAt70Percent/check-context.md` - source to adapt
- `claude-code-starter/.claude/commands/work/save.md` - pattern reference
- `claude-code-starter/.claude/commands/work/resume.md` - find active item logic

## Subtasks
| ID | Name | Status |
|----|------|--------|
| S1 | Core command structure | pending |
| S2 | Active work item detection | pending |
| S3 | Context percentage parsing | pending |
| S4 | Next steps generation | pending |
| S5 | Context file update | pending |
| S6 | Handoff file creation | pending |
| S7 | Git integration | pending |
| S8 | User approval flow | pending |

## Approach
1. Adapt R&D check-context.md for template
2. Replace task.md logic with:
   - Read `docs/_index.md` "Last worked on" field
   - Locate context file based on ID type (E###/T###/E###-T###)
3. Keep context checking and step generation logic
4. Update context file's Progress Log with `[CHECKPOINT]` marker
5. Create handoff in same folder as context file
6. Use `/git:commit` format for commit message

## Definition of Done
- [ ] `/work:check-context` command works
- [ ] Detects context percentage correctly
- [ ] Generates contextual next steps
- [ ] Updates active context file
- [ ] Creates handoff file
- [ ] Git commits checkpoint

## Dependencies
- **Blocked by**: None (can run parallel with T001)
- **Blocks**: E001-T003, E001-T005

## Git Tracking
```yaml
branch: ""
commits: []
pr_number: ""
```

## Progress Log
### Session 2026-01-17
- Task created from draft processing
- **Current State**: Not started
- **Next Step**: Adapt check-context.md from R&D
- **Blocker**: None

## Assumptions
- `/context` command output format is parseable
- Context percentage reflects actual token usage
- Active work item always has context file

## Unanswered Questions
- [ ] Exact format of `/context` command output?

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | - | Task created |
