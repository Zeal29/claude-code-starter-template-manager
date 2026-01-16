# Task: E001-T004 - Template Updates

## Meta
```yaml
id: E001-T004
name: template-updates
epic: E001
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Update template files to support checkpoint functionality including CLAUDE.md, handoff template, and config template.

## Requirements
- [ ] Update CLAUDE.md with `/work:check-context` command
- [ ] Create handoff.template.md for checkpoint handoffs
- [ ] Create .checkpoint-config.template for configuration
- [ ] Add Checkpoint section to task-context.template.md
- [ ] Add Checkpoint section to epic-context.template.md

## Relevant Files
- `claude-code-starter/CLAUDE.md`
- `claude-code-starter/docs/_templates/task-context.template.md`
- `claude-code-starter/docs/_templates/epic-context.template.md`

## Subtasks
| ID | Name | Status |
|----|------|--------|
| S1 | Update CLAUDE.md | pending |
| S2 | Create handoff template | pending |
| S3 | Create checkpoint config template | pending |
| S4 | Update context templates | pending |

## Approach
### CLAUDE.md
- Add `/work:check-context` to Essential Commands
- Add to Core Workflow section

### handoff.template.md
```markdown
# Handoff: {{ID}} - {{DATE}}
## Context at Handoff
## Completed This Session
## Next 5 Steps
## Critical Context
## Files Modified
```

### .checkpoint-config.template
```yaml
threshold_percent: 70
step_interval: 4
auto_commit: ask
create_handoff: true
```

### Context templates
Add after Progress Log:
```markdown
## Checkpoints
| Session | Context % | Steps Generated | Date |
```

## Definition of Done
- [ ] CLAUDE.md documents check-context command
- [ ] Handoff template exists
- [ ] Config template exists
- [ ] Context templates have Checkpoints section

## Dependencies
- **Blocked by**: E001-T002 (need command format finalized)
- **Blocks**: E001-T005

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
- **Next Step**: Update CLAUDE.md
- **Blocker**: None

## Assumptions
- Template {{PLACEHOLDER}} syntax is consistent
- Users read CLAUDE.md for command reference

## Unanswered Questions
- None

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | - | Task created |
