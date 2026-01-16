# Claude Code Starter - Meta Project

**Project Type:** Meta-project for managing template development
**Template Location:** `./claude-code-starter/`
**Status:** Active Development
**Created:** 2026-01-16

---

## What Is This?

This folder manages the **evolution** of the `claude-code-starter` template. We use the template's own work management system to control how features get added, tested, and integrated.

**Dogfooding:** We practice what we preach by using our own system to manage itself.

---

## Project Structure

```
d:\Work\Templates\Calude/
├── CLAUDE.md                    # <- This file (meta-project memory)
├── docs/                        # <- Work management (epics, tasks)
├── .claude/                     # <- Commands, agents, rules (copied from template)
├── claude-code-starter/         # <- The actual template being developed
└── workAt70Percent/             # <- R&D: Context checkpoint automation
```

---

## Current Goal

**Integrate workAt70Percent into claude-code-starter template**

The workAt70Percent R&D project provides:
- Automatic context tracking via hooks (0 tokens)
- Reminders every 4-5 steps
- `/check-context` command for 70%+ threshold
- Auto-generation of next 5 steps
- task.md updates + git commits
- User approval flow

**Integration Requirements:**
1. Add `/check-context` to `/work:*` command suite
2. Replace standalone `task.md` with existing `*-context.md` files
3. Include `context-monitor.sh` hook in template
4. Ensure it works with Epic/Task/Subtask hierarchy
5. Maintain progressive disclosure pattern

---

## Tech Stack

**Template Technologies:**
- Markdown (documentation, context files)
- Bash (hooks, automation)
- JSON (configuration)
- YAML frontmatter (structured data)

**Development Tools:**
- Claude Code CLI
- Git (version control)
- VS Code (optional, for editing)

---

## Key Principles

1. **Separation of Concerns**
   - This folder = project management
   - claude-code-starter/ = template code
   - workAt70Percent/ = R&D (doesn't know about template)

2. **Work Management**
   - Use epics for major features
   - Use tasks for implementation steps
   - Use drafts for requirements gathering
   - Use `/work:save` before `/clear`

3. **Quality Standards**
   - All features must be documented
   - Templates use `{{PLACEHOLDER}}` syntax
   - Commands must follow existing patterns
   - Zero breaking changes to existing workflows

---

## Active Work

- **Current Epic:** E001 - Integrate Context Checkpoint System
- **Status:** ⚪ Ready to start
- **Location:** [E001-context.md](docs/epics/E001-integrate-context-checkpoint/E001-context.md)
- **Next Step:** Create tasks to break down integration work
- **Command:** `/work:resume E001`

---

## Quick Commands

```bash
# Status check
/work:status

# Resume work
/work:resume

# Save progress
/work:save

# Create new epic
/work:epic-new "feature name"

# Create task
/work:task-new E001 "task name"
```

---

## Notes

- This meta-project uses the same structure as the template
- Changes here test the template's usability
- Dogfooding helps identify UX issues
- Keep CLAUDE.md under 300 lines (move details to agent_docs/)

---

**Last Updated:** 2026-01-16
**Managed By:** Claude Code work management system
