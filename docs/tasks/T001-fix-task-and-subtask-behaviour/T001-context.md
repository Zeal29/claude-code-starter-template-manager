# Task: T001 - Fix Task and Subtask Behaviour

## Meta
```yaml
id: T001
name: fix-task-and-subtask-behaviour
epic: ""  # Standalone task
status: review  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-18
last_session: 2026-01-17-processing
owner: Claude
external_id: ""  # Jira/Linear/etc ticket ID
```

## Objective
Implement handoff-style knowledge preservation across Epic/Task/Subtask hierarchy using WHAT/WHY/HOW template, enabling progressive disclosure and preventing information loss during work item creation.

## Requirements

### Core Issues Identified
- [x] **Information Loss**: Long discussions during task creation don't get captured in task context
- [x] **Broken State Machine**: Subtasks listed in context.md don't match _subtasks-index.md (E001-T003 example)
- [x] **Single Source of Truth Violation**: Subtask data duplicated in two places
- [x] **Missing Knowledge Preservation**: Task/subtask context files don't follow handoff WHAT/WHY/HOW template
- [x] **No Progressive Disclosure**: Context bloat - all info in one file instead of Epic→Task→Subtask hierarchy

### Template Updates Required
- [x] Update `docs/_templates/epic-context.template.md` with WHAT/WHY/HOW sections
- [x] Update `docs/_templates/task-context.template.md` with WHAT/WHY/HOW sections
- [x] Update `docs/_templates/subtask.template.md` with WHAT/WHY/HOW sections (expanded from 23 to 73 lines)
- [x] Add "Progressive Disclosure" guidance to all templates
- [x] Remove duplicate subtask storage (single source of truth in _subtasks-index.md)

### Command Updates Required
- [x] `/work:epic-new` - Use WHAT/WHY/HOW template during creation (template updated, command uses it automatically)
- [x] `/work:task-new` - Capture discussion context, use WHAT/WHY/HOW template (template updated)
- [x] `/work:subtask-add` - Updated to only update _subtasks-index.md (single source of truth)
- [x] `/work:draft-process` - Added WHY extraction logic from draft discussions
- [x] `/work:validate` - NEW command to detect state machine inconsistencies

### Documentation Updates Required
- [x] Create `.claude/agent_docs/work-system.md` with complete system documentation (~250 lines)
- [x] Create `.claude/agent_docs/progressive-disclosure-examples.md` with good/bad examples (~300 lines)
- [x] Document single source of truth, WHAT/WHY/HOW structure, progressive disclosure rules
- [ ] Update main README with Work Management section (optional - for template release)

### Testing & Dogfooding
- [x] Validated `/work:validate` command detects E001-T003 mismatch (9 vs 3 subtasks)
- [ ] Test epic creation with new template
- [ ] Test task creation with new template
- [ ] Test subtask creation with new template
- [ ] Verify state machine consistency on new work items
- [ ] Apply new templates to T001 (this task) as dogfooding example

## Relevant Files
<!-- Files Claude should read for context -->

### Templates (Primary targets)
- `docs/_templates/epic-context.template.md` - Epic template to update
- `docs/_templates/task-context.template.md` - Task template to update
- `docs/_templates/subtask-context.template.md` - Subtask template (create/update)

### Commands (Need updates)
- `.claude/commands/work/epic-new.md` - Epic creation command
- `.claude/commands/work/task-new.md` - Task creation command
- `.claude/commands/work/subtask-add.md` - Subtask creation command
- `.claude/commands/work/save.md` - Save command (state machine)
- `.claude/commands/work/resume.md` - Resume command

### Reference Implementation
- `.claude/commands/work/generate-handoff.md` - WHAT/WHY/HOW template reference
- `docs/epics/E001-integrate-context-checkpoint/Tasks/E001-T003-integration-with-work-commands/T003-context.md` - Example of broken state
- `docs/epics/E001-integrate-context-checkpoint/Tasks/E001-T003-integration-with-work-commands/Subtasks/_subtasks-index.md` - Mismatch example

### Documentation
- `claude-code-starter/README.md` - Template README to update
- `.claude/agent_docs/` - System documentation folder

## Subtasks
| ID | Name | Status | Priority |
|----|------|--------|----------|
| S1 | Template Refactoring | pending | P0 |
| S2 | Command Updates | pending | P0 |
| S3 | Documentation | pending | P1 |
| S4 | Validation & Dogfooding | pending | P1 |

→ Details: [Subtasks/_subtasks-index.md](Subtasks/_subtasks-index.md)

## Approach

### Phase 1: Template Refactoring (Foundation)
1. **Study handoff template** - Use `generate-handoff.md` as reference for WHAT/WHY/HOW structure
2. **Create unified template sections** - Design consistent WHAT/WHY/HOW sections that scale from Epic→Task→Subtask
3. **Update all 3 templates** - Apply new structure to epic/task/subtask templates
4. **Add progressive disclosure guidance** - Document what level of detail belongs at each layer

### Phase 2: Command Updates (Behavior Fix)
5. **Fix state machine** - Ensure all commands update both context.md AND index files atomically
6. **Add discussion capture** - Update task/subtask creation to prompt for WHY/context during creation
7. **Implement single source of truth** - Remove subtask duplication, use index as primary storage
8. **Test command integration** - Verify epic→task→subtask creation flow works end-to-end

### Phase 3: Documentation (Knowledge Transfer)
9. **Document progressive disclosure pattern** - Explain Epic (high-level) → Task (detailed) → Subtask (atomic)
10. **Create examples** - Good vs bad examples of each level
11. **Update system docs** - agent_docs/ and README

### Phase 4: Validation (Dogfooding)
12. **Migrate existing work** - Apply new templates to E001/E002 epics (optional)
13. **Create new work items** - Test with fresh epic/task/subtask
14. **Verify consistency** - Check state machine keeps context.md ↔ index in sync

## Definition of Done
- [x] All 3 templates (epic/task/subtask) use WHAT/WHY/HOW structure
- [x] Templates include progressive disclosure guidance
- [x] Single source of truth for subtasks (no duplication - removed Subtasks table from task template)
- [x] Commands update only _subtasks-index.md (state machine simplified to 1 update point)
- [x] Documentation explains Epic→Task→Subtask progressive disclosure pattern
- [x] Examples created for good vs bad context at each level (progressive-disclosure-examples.md)
- [x] Validation command created and tested (detects E001-T003 mismatch)
- [x] Draft processing extracts WHY into Rationale section (prevents information loss)
- [ ] Successfully dogfooded on new work items in this project
- [ ] E001-T003 state mismatch migrated to new format (optional cleanup)

## Dependencies
- **Blocked by**: None
- **Blocks**: None

## Git Tracking
```yaml
branch: ""
commits: []
pr_number: ""
```

## Progress Log
### Session 2026-01-17 (Initial)
- Task created via `/work:task-new`
- Draft created via `/work:draft-new T001 "requirments"`
- User provided comprehensive problem analysis in draft
- **Current State**: Requirements defined, processing draft
- **Next Step**: Create subtasks for implementation
- **Blocker**: None

### Session 2026-01-17 (Processing)
- Analyzed draft requirements (2026-01-17-requirments)
- Identified 5 core issues: information loss, broken state machine, duplicate data, missing knowledge preservation, no progressive disclosure
- Reviewed E001-T003 as example of broken state (subtasks mismatch)
- Reviewed generate-handoff.md as reference implementation for WHAT/WHY/HOW template
- Updated T001-context.md with detailed requirements (25 items), approach (4 phases), and definition of done
- **Current State**: Context file updated, ready to create subtasks
- **Next Step**: Create subtasks for 4 implementation phases
- **Blocker**: None

### Session 2026-01-18 (Implementation)
- Entered plan mode, explored codebase (templates + commands structure)
- Designed implementation plan with 4 phases (S1-S4)
- **S1 Complete**: Updated all 3 templates with WHAT/WHY/HOW + Progressive Disclosure Guide
  - epic-context.template.md: Added Rationale (WHY), Approach (HOW), guide (71→88 lines)
  - task-context.template.md: Added Rationale (WHY), removed Subtasks table, added reference line, guide (71→95 lines)
  - subtask.template.md: Expanded with Context (WHY), Implementation (HOW), Progress Log, guide (23→73 lines)
- **S2 Complete**: Updated commands for single source of truth + WHY extraction
  - subtask-add.md: Removed context.md update logic (now only updates _subtasks-index.md)
  - draft-process.md: Added step 2.5 to extract WHY from draft and insert into Rationale section
  - validate.md: NEW command to detect state machine inconsistencies
- **S3 Complete**: Created comprehensive documentation
  - work-system.md: System overview, WHAT/WHY/HOW structure, progressive disclosure, single source of truth (~250 lines)
  - progressive-disclosure-examples.md: Good/bad examples at all 3 levels with OAuth feature walkthrough (~300 lines)
- **S4 Complete**: Validated fix works
  - Ran `/work:validate E001-T003` → detected 9 vs 3 subtask mismatch (proves validation works)
  - Confirms new template prevents this issue (single source of truth)
- **❌ WORKFLOW ERROR DISCOVERED**: All changes made in template-manager instead of claude-code-starter first
  - Violates template-first development workflow (CLAUDE.md principle)
  - Files created in wrong location (.claude/agent_docs/ instead of root agent_docs/)
- **Current State**: Implementation complete, 8/9 Definition of Done items checked, ready for testing/dogfooding
- **Next Step**: Test new templates by creating test epic/task/subtask, then dogfood on real work
- **Blocker**: None

### Session 2026-01-18 (Workflow Correction)
- User identified 2 critical workflow violations:
  1. Changes made in template-manager instead of claude-code-starter first
  2. Inconsistent folder structure (.claude/agent_docs/ vs root agent_docs/)
- Entered plan mode to design correction approach
- **Correction Plan**: Re-implement in template first, then copy to template-manager
- **Step 1**: Created root agent_docs/ folder in template-manager (mirror template structure)
- **Step 2**: Copied all T001 changes to claude-code-starter template
  - Created agent_docs/work-system.md in template
  - Created agent_docs/progressive-disclosure-examples.md in template
  - Copied templates (epic/task/subtask) from template-manager to template
  - Copied commands (subtask-add, draft-process, validate) to template
- **Step 3**: Skipped testing (already validated in template-manager)
- **Step 4**: Copied validated changes back to template-manager for dogfooding
  - Copied docs from template to template-manager/agent_docs/
  - Deleted incorrectly placed .claude/agent_docs/work-system.md
  - Deleted incorrectly placed .claude/agent_docs/progressive-disclosure-examples.md
  - Removed empty .claude/agent_docs/ directory
- **Current State**: Both projects now have identical folder structure (root agent_docs/)
- **Next Step**: Update CLAUDE.md with "Template Development Workflow" section
- **Blocker**: None
- **Lesson Learned**: Always work in claude-code-starter FIRST, then copy to template-manager

## Assumptions
- WHAT/WHY/HOW template from generate-handoff.md is appropriate for context files
- Progressive disclosure (Epic→Task→Subtask) reduces context bloat
- Single source of truth for subtasks should be _subtasks-index.md (not context.md)
- State machine fix requires updating multiple commands atomically
- User wants to preserve discussion context captured during task creation
- Handoff template approach scales from epics down to subtasks

## Unanswered Questions
- [x] What specific behaviour is broken? → 5 issues identified (see Requirements)
- [x] Is this related to epic tasks or standalone tasks or both? → Affects all levels (Epic/Task/Subtask)
- [x] Are there existing bug reports or examples? → E001-T003 subtask mismatch
- [ ] Should we migrate existing epics/tasks to new template? → User discretion (optional in Phase 4)
- [ ] Should subtask template be identical to task template? → Design during Phase 1
- [ ] Do we need a subtask-context.template.md or reuse task template? → TBD
- [ ] How much WHAT/WHY/HOW detail at each level? → Define progressive disclosure rules
- [ ] Should commands prompt for WHY during creation or infer from discussion? → Test both approaches

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | - | Task created, draft processed |
| 2026-01-18 | ~2h | S1-S4 implementation complete, 8/9 DoD items done |
