---
description: Check context usage at 70% threshold and auto-generate next 5 steps
model: sonnet
allowed-tools: Bash(git:*), Read, Write
---

# Context Checkpoint & Auto-Generate Next Steps

This custom slash command performs an intelligent context checkpoint:

1. **Check current context usage** via `/context` command
2. **Evaluate if >= 70%** to determine if checkpoint is needed
3. **Auto-generate 5 next steps** based on current work state
4. **Create subtask entry** in task.md with progress
5. **Git commit** the checkpoint
6. **Create handoff file** for next session
7. **Request user approval** before saving anything

## How Claude Should Execute This

### Step 1: Check Current Context

First, you MUST check the actual context usage:
- Run: `/context`
- Parse the output to find: "Token usage: X/200000"
- Calculate percentage: (X/200000) × 100
- Display this to the user clearly

Example display:
```
📊 CONTEXT CHECK
─────────────────────
Token usage: 147,324 / 200,000
Current usage: 73.7%
Status: ✓ THRESHOLD MET (≥70%)
```

### Step 2: Evaluate Threshold

- If context < 70%: Tell user "Context is fine. Continue working. Run this again later if needed."
- If context >= 70%: **PROCEED TO STEP 3**

### Step 3: Analyze Current Work

When context >= 70%, analyze what has been accomplished:

**Read git log:**
```bash
git log --oneline -15
```

**Read current task.md:**
```
[Read the task.md file to understand the structure]
```

**Understand what was just done** by analyzing recent git commits and file changes.

### Step 4: Generate Next 5 Steps

Based on your understanding of:
- The project type (from CLAUDE.md or task.md)
- What was just accomplished (from git log)
- What remains to be done (from task.md goals)

Generate 5 specific, actionable steps that:
- Are concrete and specific (not vague)
- Build on what was just done
- Move the project toward completion
- Are atomic (one thing per step)
- Include enough detail to pick up work in next session

Format as numbered list with clear descriptions.

### Step 5: Show Checkpoint Summary

Display to user in this format:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ CONTEXT CHECKPOINT SUMMARY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 Context Usage: [X]% (THRESHOLD MET ✓)

✅ Work Completed This Session:
[List the commits/accomplishments from git log]

📋 NEXT 5 STEPS TO COMPLETE:
1. [Step 1 - specific and actionable]
2. [Step 2 - specific and actionable]
3. [Step 3 - specific and actionable]
4. [Step 4 - specific and actionable]
5. [Step 5 - specific and actionable]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🤔 APPROVAL REQUIRED
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Approve and save this checkpoint? (yes/no): _
```

**WAIT FOR USER INPUT** - Do NOT proceed without approval.

### Step 6: Upon Approval (User says "yes")

If user approves, execute these actions:

**Action 1: Update task.md**

Append a new subtask entry:

```markdown
## Subtask [N]: [Brief title of next phase]

**Status:** Pending  
**Created:** [TODAY'S DATE]  
**Context At Checkpoint:** [X]%  
**Session:** [Session number]  

### ✅ Completed in Previous Session:
- [List the accomplishments]

### 📋 Next 5 Steps:
1. [Step 1]
2. [Step 2]
3. [Step 3]
4. [Step 4]
5. [Step 5]

### 📝 Session Notes:
[Brief summary of what was accomplished, any insights, blockers, decisions made]
```

**Action 2: Create Handoff File**

Create `.handoff-[TIMESTAMP].md`:

```markdown
# Handoff Summary - [DATE TIME]

## Context at Handoff
- **Context Usage:** [X]%
- **Session Duration:** [approx time]
- **Steps Completed:** [count]

## What Was Done
[Summary of accomplishments]

## Critical Information for Next Session
[Any important context, errors fixed, decisions made]

## Next Steps (In Priority Order)
1. [Step 1 - from above]
2. [Step 2 - from above]
3. [Step 3 - from above]
4. [Step 4 - from above]
5. [Step 5 - from above]

## Project State
[Current state of code, which files modified, test status, etc.]

## Instructions for Next Session
1. Read task.md to see full context
2. Follow the "Next 5 Steps" above
3. Run `/clear` to start fresh session
4. Continue from the next steps
```

**Action 3: Git Commit**

Commit the changes:

```bash
git add task.md .handoff-*.md
git commit -m "checkpoint: context at [X]%, auto-generated next 5 steps"
```

**Action 4: Confirmation Message**

Print success message:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ CHECKPOINT SAVED SUCCESSFULLY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 Files Updated:
   ✓ task.md (new subtask added)
   ✓ .handoff-[timestamp].md (created)

📝 Git Commit:
   ✓ checkpoint: context at [X]%, auto-generated next 5 steps

🚀 Next Steps:
   1. Run: /clear
   2. Start fresh session
   3. Follow the 5 auto-generated steps in task.md
   4. Continue development

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Ready for next session!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Step 7: Upon Rejection (User says "no")

If user declines approval, print:

```
🚫 Checkpoint cancelled.

Continue working or run this command again later to checkpoint.
```

**DO NOT** modify any files.

---

## Important Rules

### Context Evaluation
- ALWAYS run `/context` first
- Parse the output accurately
- Calculate percentage correctly
- Only proceed if >= 70%

### Step Generation
- Steps must be specific to THIS project
- Steps must be actionable (clear what to do)
- Steps must be atomic (one thing each)
- Steps must continue from what was just done
- Include implementation details when helpful

### User Approval
- ALWAYS ask before modifying files
- Show what will be saved
- Wait for explicit "yes"
- If user says anything but "yes", don't save

### File Modifications
- Append to task.md (don't replace)
- Create NEW handoff files (don't overwrite)
- Git commit everything together
- Preserve git history

---

## Files This Command Modifies

- ✅ `task.md` - Appends new subtask
- ✅ `.handoff-[timestamp].md` - Creates new handoff file
- ✅ Git history - Creates checkpoint commit

**These are the ONLY files modified.**

---

## When to Use This Command

### Recommended Usage

1. **After 4-5 substantial changes** - Natural checkpoint
2. **When context approaches 70%** - Hook will remind you
3. **When completing a feature** - Logical boundary
4. **Before trying something risky** - Safety checkpoint
5. **Anytime you want to save state** - Manual trigger

### Don't Use When

- ❌ Context < 60% (Not yet necessary)
- ❌ In the middle of a complex operation
- ❌ Without having made actual progress
- ❌ Just to test (it will create files)

---

## Integration with Hook

This command is designed to work with the `context-monitor.sh` hook:

1. **Hook runs automatically** after every 4-5 tool executions
2. **Hook checks context percentage**
3. **If >= 70%, hook prompts user**
4. **User runs:** `/check-context`
5. **This command executes**
6. **User approves checkpoint**
7. **Everything is saved**

---

## Example Execution Flow

```
[You've completed 5 steps]

Hook: "Context at 73%. Ready to checkpoint? (yes/no)"

You: "yes"

Claude (running this command):

  Checking context... 73% ✓
  
  Work completed:
  - Created UserService
  - Added JWT auth
  - Implemented login
  - Added error handling
  - Wrote tests
  
  Next 5 steps:
  1. Add refresh token rotation
  2. Implement password reset
  3. Add email verification
  4. Create rate limiting
  5. Write integration tests
  
  Approve? (yes/no)

You: "yes"

Claude: ✓ Checkpoint saved
        ✓ task.md updated
        ✓ Handoff created
        ✓ Git committed
        
        Ready for next session. Use /clear to continue.
```

---

## Troubleshooting

### `/context` shows different format
Update the parsing logic to match actual output format

### Can't read task.md
Create task.md first with basic structure

### Can't access git
Ensure project is a git repository: `git init`

### Handoff file not created
Check file permissions in project directory

---

## Success Criteria

After running this command successfully, you should have:

✅ Clear summary of what was done  
✅ Clear list of 5 next steps  
✅ Updated task.md with new subtask  
✅ New .handoff file with context  
✅ Git commit with checkpoint marker  
✅ Ready to run `/clear` and continue  

---

**Version:** 1.0  
**Created:** January 16, 2026  
**Status:** Ready for use
