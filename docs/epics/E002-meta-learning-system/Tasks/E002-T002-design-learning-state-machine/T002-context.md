# Task: E002-T002 - Design Learning State Machine & Capture Flow

## Meta
```yaml
id: E002-T002
name: design-learning-state-machine
epic: E002
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Design the learning state machine, capture flow, and `/work:learn` command based on T001 research findings.

## Requirements
- [ ] Design learning state machine (states, transitions, terminal states)
- [ ] Design capture flow (trigger → capture → analyze → document → archive)
- [ ] Design learning taxonomy/categories based on research
- [ ] Design `/work:learn` command specification
- [ ] Design metadata schema for learnings
- [ ] Design integration with existing work management
- [ ] Design archive/retrieval strategy
- [ ] Create command specification document
- [ ] Validate design against E001 learnings

## Definition of Done
- [ ] State machine designed and documented
- [ ] `/work:learn` command spec complete
- [ ] Learning taxonomy defined
- [ ] Design validated against real learnings from E001
- [ ] Ready for implementation

## Dependencies
- **Blocked by**: E002-T001 (need research findings)
- **Blocks**: E002-T003, future implementation tasks

## Git Tracking
```yaml
branch: "master"
commits: []
pr_number: ""
```

## Progress Log

### Session 2026-01-17 (Creation)
- Task created as part of E002 Meta-Learning Epic
- Will design based on T001 research
- **Current State**: Ready, blocked by E002-T001
- **Next Step**: After T001, design state machine and command
- **Blocker**: E002-T001 research must complete first

## Assumptions
- Research from T001 will inform design
- Manual trigger sufficient initially
- State machine pattern applicable to learning capture

## Unanswered Questions
- [ ] Should learning be its own work item type (like Epic/Task)?
- [ ] How granular should states be?

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | 5min | Task created, blocked by T001 |
