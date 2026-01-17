# Task: E001-T003 - Integration with Work Commands

## Meta

```yaml
id: E001-T003
name: integration-with-work-commands
epic: E001
status: in-progress # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective

Integrate checkpoint awareness into existing work commands AND implement progressive disclosure for Progress Logs.

**Decision**: Split into two subtasks for better risk management:

- **T003a**: Checkpoint Awareness (quick win, low risk)
- **T003b**: Progressive Disclosure Refactor (structural change, medium risk)

## Requirements

### T003a: Checkpoint Awareness

- [x] Update `/work:save` to detect and display handoff status
- [x] Update `/work:resume` to show active checkpoint with next steps
- [x] Update `/work:status` to show checkpoint counts

### T003b: Progressive Disclosure

- [ ] Create ProgressLogs/ folder structure with daily files
- [ ] Implement auto-updating progress index
- [ ] Create migration logic (old format → new format)
- [ ] Create `/work:archive-progress` command
- [ ] Update context file templates (Progress Log → Checkpoints)

## Relevant Files

### T003a Files

- `claude-code-starter/.claude/commands/work/save.md`
- `claude-code-starter/.claude/commands/work/resume.md`
- `claude-code-starter/.claude/commands/work/status.md`

### T003b Files

- `docs/_templates/progress-index.md` (NEW)
- `docs/_templates/daily-progress-log.md` (NEW)
- `claude-code-starter/.claude/commands/work/archive-progress.md` (NEW)
- `docs/_templates/epic-context.md` (UPDATE)
- `docs/_templates/task-context.md` (UPDATE)
- All three command files from T003a (UPDATE again)

## Subtasks

| ID  | Name                                                    | Status  |
| --- | ------------------------------------------------------- | ------- |
| S1  | T003a: Implement checkpoint awareness in commands       | done    |
| S2  | T003a: Test checkpoint awareness (15 tests)             | pending |
| S3  | T003a: Commit checkpoint awareness changes              | pending |
| S4  | T003b: Create new templates (progress-index, daily-log) | pending |
| S5  | T003b: Implement migration logic                        | pending |
| S6  | T003b: Update commands for daily logs                   | pending |
| S7  | T003b: Create archive-progress command                  | pending |
| S8  | T003b: Test progressive disclosure (32 tests)           | pending |
| S9  | T003b: Commit progressive disclosure changes            | pending |

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

### Session 2026-01-17 (Implementation)

- ✅ **S1 Complete**: Implemented checkpoint awareness in all three commands
- Modified `save.md`: Added handoff detection (step 2.5), Progress Log includes handoff progress, final report shows active checkpoint
- Modified `resume.md`: Added handoff parsing (step 4), displays active checkpoint with next 3 steps
- Modified `status.md`: Added checkpoint counts to project overview, epic status, and task status views
- **Changes**: 3 files modified, +61 lines, -3 lines
  - `.claude/commands/work/save.md`: +20 lines (handoff detection & reporting)
  - `.claude/commands/work/resume.md`: +29 lines, -3 lines (checkpoint display)
  - `.claude/commands/work/status.md`: +15 lines (checkpoint stats)
- **Design Principles**: Additive only, progressive disclosure, graceful degradation
- **Current State**: T003a implementation complete, ready for testing
- **Next Step**: S2 - Test checkpoint awareness (15 test cases) or commit changes
- **Blocker**: None

## Assumptions

- Checkpoint entries in Progress Log have consistent format
- Existing commands are additive-only changes

## Unanswered Questions

- [ ] Best way to detect [CHECKPOINT] entries in Progress Log?

## Time Log

| Date       | Duration | Notes        |
| ---------- | -------- | ------------ |
| 2026-01-17 | -        | Task created |
