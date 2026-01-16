# Task: E001-T003 - Integration with Work Commands

## Meta
```yaml
id: E001-T003
name: integration-with-work-commands
epic: E001
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Integrate checkpoint awareness into existing `/work:save`, `/work:resume`, and `/work:status` commands.

## Requirements
- [ ] Update `/work:save` to recognize checkpoint state
- [ ] Update `/work:resume` to show checkpoint info
- [ ] Update `/work:status` to show checkpoint stats

## Relevant Files
- `claude-code-starter/.claude/commands/work/save.md`
- `claude-code-starter/.claude/commands/work/resume.md`
- `claude-code-starter/.claude/commands/work/status.md`

## Subtasks
| ID | Name | Status |
|----|------|--------|
| S1 | Update save.md with checkpoint awareness | pending |
| S2 | Update resume.md to show checkpoint info | pending |
| S3 | Update status.md with checkpoint stats | pending |

## Approach
### /work:save updates
- Check for `.claude/.pending-checkpoint` file
- If exists, include checkpoint data in save
- Clear pending checkpoint after save
- Add checkpoint count to summary

### /work:resume updates
- Parse Progress Log for `[CHECKPOINT]` marker
- Highlight generated next steps if found
- Show "Last checkpoint at X% context"

### /work:status updates
- Count checkpoints from Progress Log
- Show "Checkpoints: N" in status
- Show last checkpoint date

## Definition of Done
- [ ] `/work:save` handles pending checkpoints
- [ ] `/work:resume` shows checkpoint info
- [ ] `/work:status` shows checkpoint count
- [ ] No breaking changes to existing behavior

## Dependencies
- **Blocked by**: E001-T002 (need check-context format defined)
- **Blocks**: None

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
- **Next Step**: Review current command implementations
- **Blocker**: None

## Assumptions
- Checkpoint entries in Progress Log have consistent format
- Existing commands are additive-only changes

## Unanswered Questions
- [ ] Best way to detect [CHECKPOINT] entries in Progress Log?

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | - | Task created |
