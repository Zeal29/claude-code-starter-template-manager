# Draft: requirments

## Meta

```yaml
id: 2026-01-17-requirments
target: T001 # Epic or Task ID this draft is for
status: completed # open|ready|processing|completed|failed
created: 2026-01-17
updated: 2026-01-17
processed_at: ""
```

## Intent

<!-- What should Claude do when processing this draft? Check all that apply -->

- [ ] Create new tasks
- [x] Update epic/task context
- [ ] Add to Research/
- [ ] Update agent_docs/
- [x] Create subtasks
- [ ] Other:

## Summary

Epic task and subtask are not capturing enough info they should follow [handoff](../../../../../claude-code-starter/.claude/commands/work/generate-handoff.md) technique and learning to capture full info.

Epic are progressively disclosure of info to Task which contains more details and task are progressive disclosure to subtasks which contains max details for a very specific things which is atomic.

update all the system docs Readme templates and command where ever we have to explain this new update.

test it and verify it work

dogfood it as we need it in this project

## Details

I think there is a big issue in this task system. which is when we create a new task Claude AI dont add enough information in the task. it add very good point and summery of what we want to do. and the acceptance criteria and other stuff is good also but what i think is missing is the details i dont know the details i see when we create a task like E003-T003 i had a very long discussion of what this task is and what we want to do in this task and i also modify the task on the spot and add more to it. i increased the scope of that task. i had a long discussion with claude code on why we want this and we discuss back and forth and i was expecting big description on why we want this and so many sub tasks with details following progressive disclosure for the task because each point will have so much background but what is see is we are not using subtask at all i mean just read the T003-context.md and see the subtask there and then go to the sub task folder and read the subtask in the \_subtasks-index.md both subtask dont even match in the \_subtasks-index.md we didnt even updated the subtask which mean we have a broken state machine and our it is not properly documented in our system what the flow of updating the a task should be because it never updated the subtask also why are we not following single source of truth why subtask info is in 2 places.

according to my understand the task should have full overview of context and follow the same principle for storing knowledge which [handoff](../../../../../claude-code-starter/.claude/commands/work/generate-handoff.md) use as handoff are created by good amount of research and contains all the questions we should ask when we preserve knowledge.

also subtasks should also follow the same [handoff](../../../../../claude-code-starter/.claude/commands/work/generate-handoff.md) knowledge preserving system/technique but in deep details for that specific step.

and subtask should work as a progressive disclosure for the task as keeping too much info in a single task can bloat the context window that is why we have created the subtask system.

so I want you to fix this by refactoring the workflow and the documentation where ever it is needed
update the template for Epic, Task and Subtask and yes Epic too this is same issue with epic.
Epic progressively disclose to Task and Task progressively disclose to subtasks that is what my thinking is please you are welcome to cretic the system and the mental image and give me a better idea and explain why is is bad its flaws and what should we do instead or all of this is invalid some how be critical.

and after fixing all this Dogfooding it and apply it in the project too the template-manager project as it is really needed now. but first test is good and then Dogfood it.

also fix/update all the command which need to be fixed for this task.

## Supporting Files

<!-- List any additional files in this draft folder -->

| File | Description |
| ---- | ----------- |
| -    | -           |

## Questions for Claude

<!-- Things you want Claude to figure out or decide -->

- [x] Identify root cause of behavior issues
- [ ] Determine if this affects epic tasks, standalone tasks, or both
- [x] Propose fix approach

## Processing Instructions

<!-- Special instructions for how Claude should process this -->

When processing:

1. Read through requirements
2. Update T001-context.md with specific requirements
3. Create subtasks if multiple fixes needed
4. Update approach section with implementation plan

## After Processing

<!-- What should happen after Claude processes this draft -->

- Update `T001-context.md` with: detailed requirements, approach, subtasks
- Create folders/files: subtasks if needed
- Archive this draft: Yes

---

<!-- PROCESSING LOG - Claude fills this when processing -->

## Processing Log

```yaml
processed_by: Claude
processed_at: 2026-01-17
status: completed
```

### Actions Taken

- Analyzed comprehensive draft requirements (information loss, state machine issues, knowledge preservation)
- Reviewed reference implementation (generate-handoff.md WHAT/WHY/HOW template)
- Reviewed problem example (E001-T003 subtask mismatch)
- Updated T001-context.md with 25 detailed requirements across 5 categories
- Defined 4-phase implementation approach (Template Refactoring, Command Updates, Documentation, Validation)
- Created 4 subtasks (S1-S4) with detailed objectives and requirements
- Updated Subtasks/_subtasks-index.md with comprehensive subtask breakdown

### Files Modified

- `T001-context.md` - Updated Objective, Requirements (25 items), Relevant Files, Approach (4 phases), Definition of Done (9 items), Progress Log (2 sessions), Assumptions (6 items), Unanswered Questions (8 items)
- `Subtasks/_subtasks-index.md` - Created 4 subtasks with details, dependencies, and blocking relationships
- `Subtasks/T001-S01-template-refactoring/` - Created folder
- `Subtasks/T001-S02-command-updates/` - Created folder
- `Subtasks/T001-S03-documentation/` - Created folder
- `Subtasks/T001-S04-validation-dogfooding/` - Created folder

### Errors/Warnings

None

### Key Insights

- Core issue: Missing WHAT/WHY/HOW knowledge preservation across Epic/Task/Subtask hierarchy
- Progressive disclosure critical: Epic (overview) → Task (detailed) → Subtask (atomic implementation)
- State machine broken: context.md and _subtasks-index.md out of sync
- Single source of truth needed: subtasks should live only in index, not duplicated in context.md
- Handoff template provides proven WHAT/WHY/HOW structure to apply across all work items
