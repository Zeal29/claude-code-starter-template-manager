# Task: E001-T006 - Testing & Verification

## Meta
```yaml
id: E001-T006
name: testing-verification
epic: E001
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Test the complete checkpoint system end-to-end and verify all components work together.

## Requirements
- [ ] Create manual test checklist
- [ ] Test hook triggering
- [ ] Test command execution
- [ ] Test context file updates
- [ ] Test integration with save/resume/status
- [ ] Test with real E001 workflow

## Relevant Files
- All files created in T001-T005

## Subtasks
| ID | Name | Status |
|----|------|--------|
| S1 | Create test checklist | pending |
| S2 | Hook trigger test | pending |
| S3 | Command execution test | pending |
| S4 | Context file update test | pending |
| S5 | Integration test | pending |
| S6 | E001 end-to-end test | pending |

## Approach
### Test Checklist
1. **Hook Test**: Make 5 file edits, verify reminder appears
2. **Command Test**: Run `/work:check-context`, verify context detection
3. **Context File Test**: Verify Progress Log updated correctly
4. **Integration Test**: Run `/work:resume`, verify checkpoint info shown
5. **End-to-End**: Create task under E001, work, checkpoint, resume in new session

### E001 Real Test
Use this meta-project to dogfood the feature:
1. Work on a task (T001-T005)
2. Trigger checkpoint
3. Verify handoff created
4. Clear context
5. Resume and verify continuity

## Definition of Done
- [ ] All test cases pass
- [ ] Hook works on Windows
- [ ] Command generates useful steps
- [ ] Integration is seamless
- [ ] Dogfooding successful

## Dependencies
- **Blocked by**: E001-T001 through T005
- **Blocks**: None (final task)

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
- **Next Step**: Wait for implementation tasks to complete
- **Blocker**: None

## Assumptions
- Testing can use meta-project as testbed
- Manual testing is sufficient (no automated tests)

## Unanswered Questions
- None

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | - | Task created |
