# Task: E001-T007 - Document Meta-Learnings

## Meta
```yaml
id: E001-T007
name: document-meta-learnings
epic: E001
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective
Document the meta-learnings and universal patterns discovered during E001 implementation for reuse across ALL Claude Code projects.

## Requirements
- [ ] Create `.claude/rules/planning.md` in template (critical planning rules)
- [ ] Create `agent_docs/patterns/knowledge-preservation.md` (WHAT/WHY/HOW template)
- [ ] Create `agent_docs/patterns/state-machines.md` (state machine pattern)
- [ ] Create `agent_docs/methodologies/critical-planning.md` (8-Flaw Analysis)
- [ ] Reference template patterns from meta-project (symlink or pointer)
- [ ] Add real examples from E001-T002 (handoff template, critical analysis)
- [ ] Document research sources (context engineering, tacit knowledge)
- [ ] Verify patterns are universal (not template-specific)

## Relevant Files
- `C:\Users\pc\.claude\plans\soft-kindling-forest.md` - Implementation plan with all design decisions
- `docs/epics/E001-integrate-context-checkpoint/Tasks/E001-T002-check-context-command/T002-context.md` - Example of critical planning process
- `claude-code-starter/.claude/commands/work/generate-handoff.md` - WHAT/WHY/HOW template implementation
- Web research sources (preserved in plan)

## Subtasks
| ID | Name | Status |
|----|------|--------|
| S1 | Create planning.md rules | pending |
| S2 | Document knowledge-preservation pattern | pending |
| S3 | Document state-machines pattern | pending |
| S4 | Document critical-planning methodology | pending |
| S5 | Add examples from E001 | pending |
| S6 | Reference from meta-project | pending |

## Approach

### 1. Create `.claude/rules/planning.md` (Template)
**Location:** `claude-code-starter/.claude/rules/planning.md`

**Content (SHORT - enforces behavior):**
```markdown
# Critical Planning Process

When creating implementation plans:

1. **Find Flaws First**
   - NEVER assume initial idea is perfect
   - Ask: "What could go wrong?"
   - Challenge every assumption
   - Think like a critic, not a cheerleader

2. **Test Against Reality**
   - How does it fit existing patterns?
   - What edge cases break it?
   - What happens at scale?
   - How do users actually work?

3. **Question Everything**
   - "Is this the simplest solution?"
   - "Does this create new problems?"
   - "What am I not seeing?"
   - "What if X assumption is wrong?"

4. **Honest Assessment**
   - If design has flaws, SAY SO
   - Better to find issues in planning than implementation
   - Flawed plans waste everyone's time

## Checklist Before Finalizing Plan

- [ ] Identified at least 3 potential flaws
- [ ] Tested against existing patterns
- [ ] Considered edge cases
- [ ] Evaluated alternatives
- [ ] Validated with user (asked clarifying questions)
- [ ] Design survives critical analysis
```

### 2. Create `knowledge-preservation.md` (Template)
**Location:** `claude-code-starter/agent_docs/patterns/knowledge-preservation.md`

**Content (DETAILED - reference material):**
- Full WHAT/WHY/HOW template structure
- When to use it (session handoffs, design decisions, research findings)
- Philosophy based on research (context chaining, tacit knowledge capture)
- Real examples from E001-T002 handoff
- References to research sources

### 3. Create `state-machines.md` (Template)
**Location:** `claude-code-starter/agent_docs/patterns/state-machines.md`

**Content:**
- Why use state machines (clarity, valid transitions, auditability)
- When to use them (workflows, status tracking, lifecycle management)
- Template structure (states, transitions, terminal states)
- Examples from template (Drafts, Handoffs, Tasks, Epics)
- Implementation pattern (status field, status_history tracking)

### 4. Create `critical-planning.md` (Template)
**Location:** `claude-code-starter/agent_docs/methodologies/critical-planning.md`

**Content:**
- The 8-Flaw Analysis methodology (from E001-T002)
- How to think critically about designs
- Checklist for implementation plans
- Real examples from E001 (all 8 flaws + solutions)
- When to use this methodology (non-trivial features)

### 5. Reference from Meta-Project
**Location:** `claude-code-starter-template-manager/.claude/rules/planning.md`

**Content (pointer to template):**
```markdown
# Planning Rules

See template version for full rules:
→ `../claude-code-starter/.claude/rules/planning.md`

This meta-project uses the template's planning rules as source of truth.
```

Or use symlink if file system supports.

## Definition of Done
- [ ] All 4 documentation files created in template
- [ ] Meta-project references template (not duplicates)
- [ ] Examples from E001 included
- [ ] Research sources cited
- [ ] Patterns are universal (not template-specific)
- [ ] Documentation is concise and actionable

## Dependencies
- **Blocked by**: E001-T002 (needs to be complete to extract examples)
- **Blocks**: None

## Git Tracking
```yaml
branch: "master"
commits:
  - 5ba1de6  # docs: create E001-T007 and update epic progress tracking
pr_number: ""
```

## Progress Log

### Session 2026-01-17 (Creation)
- Task created during E001-T002 review to preserve meta-learnings
- Documented approach for 4 documentation files:
  - planning.md (critical planning rules)
  - knowledge-preservation.md (WHAT/WHY/HOW template)
  - state-machines.md (state machine pattern)
  - critical-planning.md (8-Flaw Analysis)
- Created full task structure with 8 requirements, 6 subtasks
- Added context explaining why this task matters (universal patterns)
- Documented research sources from E001-T002 planning session
- Updated E001 epic context to include T007 in task list
- Committed changes: docs updates, T007 creation
- Cleaned up workspace (removed nul artifact)
- **Current State**: Task defined, committed, workspace clean, ready to implement
- **Next Step**: Wait for E001-T002 user approval, then extract examples and implement documentation
- **Blocker**: E001-T002 must be approved first (source of examples)

## Assumptions
- Patterns discovered in E001-T002 are truly universal
- Template is appropriate place for universal patterns (vs separate repo)
- Meta-project can reference template files (symlink or pointer)

## Unanswered Questions
- [ ] Should we create visual diagrams for state machines?
- [ ] Should we add video/tutorial for critical planning methodology?
- [ ] How to ensure patterns stay updated as template evolves?

## Time Log
| Date | Duration | Notes |
|------|----------|-------|
| 2026-01-17 | 25min | Task created, documented approach, committed, workspace cleaned |

---

## Context: Why This Task Matters

During E001-T002 implementation, we discovered several **universal patterns** that apply to ALL Claude Code projects, not just this template:

### 1. Critical Planning Process
- Identified 8 potential flaws BEFORE implementation
- Researched best practices (knowledge preservation, context engineering)
- Engaged in collaborative design refinement
- Result: Robust design that survived critical analysis

### 2. WHAT/WHY/HOW Knowledge Preservation
- Based on tacit knowledge capture research
- Structured template preserves context across sessions
- Answers: What (objective), Why (rationale), How (approach)
- Prevents information loss at session boundaries

### 3. State Machine Pattern
- Used consistently across: Drafts, Handoffs, Tasks, Epics
- Provides clarity, auditability, valid transitions
- Simple but powerful organizational pattern

### 4. 8-Flaw Analysis Methodology
- Systematic approach to finding design issues
- Quality Risk, State Management, User Friction, etc.
- Concrete solutions for each identified flaw
- Prevented implementation rework

**These patterns are too valuable to lose.** This task ensures they're documented as reusable knowledge for future projects.

## Research Sources to Document

From E001-T002 planning session:
- [Context in Prompt Engineering - Complete Guide for 2025](https://gudprompt.com/blog/context-in-prompt-engineering-2025)
- [Context Engineering Guide](https://www.promptingguide.ai/guides/context-engineering-guide)
- [Context Engineering: Moving Beyond Prompting in AI](https://www.digitalocean.com/community/tutorials/context-engineering-moving-beyond-prompting-ai)
- [Context Engineering - Session Memory Management](https://cookbook.openai.com/examples/agents_sdk/session_memory)
- [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
