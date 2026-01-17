# Epic: E002 - Meta-Learning & Knowledge Capture System

## Meta
```yaml
id: E002
name: meta-learning-system
status: ready  # draft|ready|in-progress|blocked|review|done|archived
created: 2026-01-17
updated: 2026-01-17
owner: User
external_id: ""
```

## Objective

Build a systematic meta-learning and knowledge capture system that automatically triggers, documents, and organizes learnings from errors, insights, and pattern discoveries across ALL work.

## Success Criteria
- [ ] Learning triggers identified and documented
- [ ] Learning state machine implemented
- [ ] `/work:learn` command created for manual capture
- [ ] Learning subagent created for specialized knowledge processing
- [ ] Universal patterns from E001 formally documented
- [ ] Learning documentation integrated with template
- [ ] System tested with real learning moments

## Tasks Overview
| ID | Name | Status | Progress | External ID |
|----|------|--------|----------|-------------|
| T001 | Research Learning Documentation Best Practices | ready | 0% | - |
| T002 | Design Learning State Machine & Capture Flow | ready | 0% | - |
| T003 | Document Universal Patterns from E001 | ready | 0% | - |

→ Full task details: `Tasks/E002-T###/`

## Key Decisions
| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-01-17 | Comprehensive research FIRST, then build | User wants well-researched foundation before implementation |
| 2026-01-17 | Specialized subagent for learning | Delegate learning processing, avoid polluting main agent context |
| 2026-01-17 | Manual trigger initially | Research will determine automatic trigger patterns |
| 2026-01-17 | Progressive epic design | Research determines future tasks, not pre-planning |

→ Full history: `Archive/_archive-index.md`

## Dependencies
- **Depends on**:
  - E001 completion (need real learnings to validate system)
- **Blocks**: None

## Git Tracking
```yaml
branch: ""
related_branches: []
```

## Current Focus
**Active Task**: None (blocked by E001)
**Blocker**: E001 must be complete first (provides real learnings to work with)
**Next Session**: After E001 done, start T001 - Research Learning Best Practices

## Quick Links
- Research: `Research/` (will contain learning methodology research)
- Latest Draft: `Drafts/`
- Archive: `Archive/`
- Source of Learnings: `../E001-integrate-context-checkpoint/` (S9 discovery, critical planning)

## Assumptions
- Learning is predictable work (follows patterns)
- Errors/mistakes are reliable learning triggers
- Systematic capture prevents knowledge loss
- Specialized subagent better than inline documentation
- Progressive approach better than pre-planning all tasks

## Unanswered Questions
- [ ] What are optimal learning triggers? (error detection, manual, context analysis?)
- [ ] When should learning be ignored vs documented? (signal vs noise)
- [ ] How to categorize learnings? (error, insight, pattern, anti-pattern, etc.)
- [ ] What's the right granularity? (every mistake or just significant ones?)
- [ ] How to integrate with existing work management?
- [ ] Should learning subagent auto-trigger or require permission?

## Core Ideas to Preserve

### 1. Learning is Predictable Work
**Insight**: Errors → Learning moments (predictable trigger)
- Learning follows same pattern every time
- Should be managed like any other work (Epic → Tasks → State Machine)
- Currently ad-hoc, should be systematized

### 2. Specialized Learning Subagent
**Rationale**: Delegate to avoid context pollution
- Main agent focuses on task execution
- Learning agent specializes in knowledge capture/processing
- Knows learning taxonomies, documentation patterns
- Manual trigger initially: `/work:learn`
- Research will determine if/when to auto-trigger

### 3. Learning State Machine
**Lifecycle**: trigger → capture → analyze → document → archive
- States track learning progression
- Prevents incomplete documentation
- Auditability of what was learned when
- Integration with work management

### 4. Progressive Epic Design
**Approach**: Research determines tasks
- Don't pre-plan all tasks (research may invalidate assumptions)
- T001: Research (comprehensive, time-boxed)
- T002: Design based on research findings
- T003: Document E001 learnings
- T004+: Created based on T001-T002 insights

### 5. Types of Learnings
**Preliminary Taxonomy** (will be validated in T001 research):
- **Errors**: Mistakes made, how fixed
- **Insights**: New understanding gained
- **Patterns**: Repeatable solutions discovered
- **Anti-Patterns**: Common failure modes identified
- **Meta-Patterns**: Patterns about patterns (like this epic!)

### 6. When to Capture Learning
**Signal vs Noise** (to be researched in T001):
- **Capture**: Significant errors, novel insights, universal patterns
- **Ignore**: Typos, obvious mistakes, one-off situations
- **Research**: What criteria distinguish signal from noise?

## Integration Requirements

### From E001 (Universal Patterns to Document)
**In T003 - Document Universal Patterns from E001:**

1. **Incomplete State Machine Detection Pattern**
   - Source: E001-T002-S9 discovery
   - Universal pattern: Generation vs Consumption failure mode
   - Create: `.claude/rules/state-machines.md`
   - Create: `agent_docs/patterns/state-machine-verification.md`

2. **Critical Planning Process**
   - Source: E001-T002 planning session
   - 8-Flaw Analysis methodology
   - Create: `.claude/rules/planning.md`
   - Create: `agent_docs/methodologies/critical-planning.md`

3. **End-to-End Workflow Verification**
   - Source: S9 discovery (didn't test full lifecycle)
   - Pattern: Always test complete workflow, not just creation
   - Integration: Add to planning.md checklist

4. **Knowledge Preservation (WHAT/WHY/HOW)**
   - Source: E001-T002 handoff template design
   - Template-specific (stays in E001-T007)
   - Universal principle: Preserve context across sessions
   - Document general pattern, reference E001 implementation

## Research Topics (T001)

**Time-boxed**: 3 hours maximum

### Learning Documentation Methodologies
- How do experts capture tacit knowledge?
- After Action Reviews (AAR) frameworks
- Lessons Learned systems
- Knowledge Management best practices
- Learning taxonomies (categories of knowledge)

### Trigger Detection
- What signals a learning moment?
- Error detection patterns
- Context analysis for insights
- Manual vs automatic triggers

### Signal vs Noise
- When is documentation worth overhead?
- Filtering criteria
- Granularity decisions
- Cost-benefit analysis

### Integration Patterns
- How to integrate with work management?
- State machine design
- Archive/retrieval strategies
- Searchability and reuse

## Progress Log

### Session 2026-01-17 (Epic Creation)
- Created E002 Meta-Learning & Knowledge Capture System epic
- Separated from E001-T007 (rescoped to template-specific patterns)
- Documented core ideas: learning as work, specialized subagent, progressive design
- Created 3 initial tasks: Research (T001), Design (T002), Document E001 Patterns (T003)
- Preserved user's ideas: comprehensive research first, manual trigger initially
- Documented unanswered questions for research phase
- Listed universal patterns from E001 to formalize in T003
- Set blocker: E001 must complete first
- **Current State**: Epic ready, blocked by E001 completion
- **Next Step**: After E001 done, start T001 research (time-boxed 3h)
- **Blocker**: E001-T003 through E001-T006 must complete first

## Time Log
| Date | Duration | Task | Notes |
|------|----------|------|-------|
| 2026-01-17 | 30min | Setup | Epic created, context documented, ideas preserved |

---

## Context: Why This Epic Matters

During E001-T002, we discovered that **learning is predictable work**:
- Error made → Learning moment (predictable trigger)
- Currently ad-hoc → Should be systematized
- Knowledge gets lost → Needs capture system

This epic builds infrastructure to:
1. **Systematically capture** learnings as they happen
2. **Organize knowledge** via state machine and taxonomy
3. **Delegate to specialist** (learning subagent, not inline)
4. **Make learnings reusable** (documentation, patterns, rules)

**The Meta-Learning Moment**: Creating an epic about learning is itself a meta-pattern. This epic will generate its own learnings about how to capture learnings. We're building the system to improve the system.
