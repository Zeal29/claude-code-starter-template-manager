# Task: E002-T003 - Document Universal Patterns from E001

## Meta
```yaml
id: E002-T003
name: document-e001-patterns
epic: E002
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Formally document the universal patterns discovered during E001 implementation for reuse across ALL Claude Code projects.

## Requirements
- [ ] Create `.claude/rules/state-machines.md` - incomplete state machine detection
- [ ] Create `.claude/rules/planning.md` - critical planning process
- [ ] Create `agent_docs/patterns/state-machine-verification.md` - full lifecycle testing
- [ ] Create `agent_docs/methodologies/critical-planning.md` - 8-Flaw Analysis
- [ ] Document "Incomplete State Machine" pattern from E001-T002-S9
- [ ] Document "Generation vs Consumption" failure mode
- [ ] Document "End-to-End Workflow Verification" pattern
- [ ] Add real examples from E001-T002
- [ ] Reference template patterns from meta-project

## Universal Patterns to Document

### 1. Incomplete State Machine Detection
**Source**: E001-T002-S9 discovery
**Pattern**: State machine looks complete on paper but missing commands
**File**: `.claude/rules/state-machines.md`

```
INCOMPLETE STATE MACHINE DETECTION

When designing state machines, verify:
1. Every state has a command to ENTER it
2. Every state has a command to EXIT it
3. Terminal states have archive/cleanup logic
4. Workflow is tested END-TO-END (not just creation)

Common failure mode:
- Design generation/creation path ✓
- Forget completion/cleanup path ✗
- State machine diagram looks complete
- Implementation is incomplete

Detection checklist:
[ ] Can I create the entity?
[ ] Can I update the entity?
[ ] Can I complete the entity?
[ ] Can I archive the entity?
[ ] Does each state have enter/exit commands?
[ ] Did I test the FULL lifecycle?
```

### 2. Critical Planning Process
**Source**: E001-T002 planning session
**Pattern**: 8-Flaw Analysis methodology
**File**: `.claude/rules/planning.md`

Principles:
- Find flaws FIRST (never assume initial idea is perfect)
- Test against reality (edge cases, scale, user behavior)
- Question everything (simplest solution? creates new problems?)
- Honest assessment (flawed plans waste time)

### 3. End-to-End Workflow Verification
**Source**: S9 discovery (didn't test full lifecycle)
**Pattern**: Always test complete workflow, not just creation
**Integration**: Add to planning.md checklist

## Definition of Done
- [ ] All 4 documentation files created in template
- [ ] Meta-project references template (not duplicates)
- [ ] Examples from E001-T002 included
- [ ] Patterns are truly universal (not template-specific)
- [ ] Documentation is concise and actionable

## Dependencies
- **Blocked by**: E002-T001, E002-T002 (need research/design context)
- **Blocks**: None

## Git Tracking
```yaml
branch: "master"
commits: []
pr_number: ""
```

## Progress Log

### Session 2026-01-17 (Creation)
- Task created to formally document E001 universal patterns
- Extracted S9 "Incomplete State Machine" pattern from E001-T007
- Documented 3 universal patterns to formalize
- **Current State**: Ready, blocked by T001-T002
- **Next Step**: After T001-T002, implement pattern documentation
- **Blocker**: E002-T001, E002-T002 (research/design first)

## Assumptions
- Patterns from E001-T002 are truly universal
- Template is appropriate place for universal patterns
- Meta-project can reference template files

## Unanswered Questions
- [ ] Should we create visual diagrams for state machines?
- [ ] How to ensure patterns stay updated as template evolves?

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | 10min | Task created, S9 pattern extracted from E001-T007 |
