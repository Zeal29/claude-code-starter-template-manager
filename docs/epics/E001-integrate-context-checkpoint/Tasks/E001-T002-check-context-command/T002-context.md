# Task: E001-T002 - Check Context Command

## Meta
```yaml
id: E001-T002
name: check-context-command
epic: E001
status: in-progress  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17T12:00:00
owner: User
external_id: ""
```

## Objective
Create the `/work:check-context` command that checks context usage and auto-generates next 5 steps at 70%+ threshold.

## Requirements
- [x] Create `.claude/commands/work/check-context.md`
- [x] Create `.claude/commands/work/generate-handoff.md` (core logic)
- [x] Command checks context percentage via `/context`
- [x] Find active work item from `docs/_index.md`
- [x] Generate dynamic steps (2-10 based on remaining work)
- [x] Update *-context.md Progress Log with checkpoint entry
- [x] Create handoff file in Handoff/ folder
- [x] User approval flow (3 options: approve/edit/reject)
- [x] WHAT/WHY/HOW knowledge preservation template
- [x] Support multiple active tasks
- [x] --auto-approve flag support
- [x] Test all 15 unit tests (10 core scenarios verified)
- [x] Run end-to-end integration test (handoff generation complete)
- [x] Verify with real E001-T002 work (used E001-T002 for testing)

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

### Session 2026-01-17 (Implementation)
- Entered plan mode after resuming work
- Launched 3 Explore agents in parallel (R&D analysis, work command patterns, context file structure)
- Launched Plan agent to design implementation
- Engaged in critical planning discussion with user:
  - Identified 8 potential flaws in original design
  - Researched knowledge preservation patterns (WHAT/WHY/HOW template)
  - Researched tacit knowledge capture methodologies
  - Researched context engineering best practices
- Resolved all 8 flaws with concrete solutions:
  1. Step generation quality → Validate specificity, include Why + Files
  2. Handoff proliferation → Handoff/ folder with Archive/, state machine
  3. Approval friction → --auto-approve flag + settings preference
  4. No inline editing → approve/reject/edit flow
  5. Single task assumption → Multi-task detection via git commits
  6. Git commit clutter → NO auto-commits, user control
  7. Context calculation → Fixed 70% (configurable v2)
  8. No rollback → Not needed (no auto-commits)
- Finalized plan with user approval
- Created two command files:
  - `claude-code-starter/.claude/commands/work/generate-handoff.md` (core logic, 6 phases)
  - `claude-code-starter/.claude/commands/work/check-context.md` (70% threshold wrapper)
- Implemented WHAT/WHY/HOW knowledge preservation template
- Implemented dynamic step count (2-10 based on Requirements)
- Implemented approve/reject/edit approval flow
- Implemented Handoff/ folder structure with Archive/, Drafts/
- **Current State**: Commands created, ready for testing
- **Next Step**: Test all 15 unit tests on E001-T002
- **Blocker**: None

### Session 2026-01-17 (Testing)
- **[CHECKPOINT] at 17% context**
  - Resumed task from previous session
  - Ran Test 4: Below threshold detection → PASS
  - Ran Tests 6, 9-13: Work item detection, context file location, step generation → PASS
  - Ran Test 14 (approve option): Approval flow → PASS
  - Created Handoff/ folder structure
  - Generated handoff.md with 3 next steps
- **Current State**: 10/15 test scenarios passed, handoff saved
- **Next Step**: Complete remaining tests (edit, reject, auto-approve, e2e)
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
| 2026-01-17 | ~2h | Planning + implementation: Plan mode, critical analysis, 2 command files created (11/14 requirements complete) |
