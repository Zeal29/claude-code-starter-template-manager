# workAt70Percent System - Implementation Files

**Complete Claude Code context checkpoint automation system**

---

## 📦 What's in This Folder

This folder contains everything you need to implement intelligent context checkpoints in your Claude Code project:

### Files Generated

| File | Purpose | Implementation |
|------|---------|-----------------|
| **context.md** | Complete documentation of WHAT/WHY/HOW | 📖 Read this first |
| **check-context.md** | Custom slash command | Copy to `.claude/commands/` |
| **context-monitor.sh** | Hook script (bash) | Copy to `.claude/hooks/` |
| **hook-config.json** | Hook configuration | Copy to `.claude/hooks/` |
| **README.md** | This file | Reference |

---

## 🚀 Quick Start

### Step 1: Copy Files to Your Project

```bash
# Copy slash command
cp check-context.md /path/to/your/project/.claude/commands/check-context.md

# Copy hook script
mkdir -p /path/to/your/project/.claude/hooks
cp context-monitor.sh /path/to/your/project/.claude/hooks/context-monitor.sh
chmod +x /path/to/your/project/.claude/hooks/context-monitor.sh

# Copy hook configuration
cp hook-config.json /path/to/your/project/.claude/hooks/hook-config.json

# Make script executable
chmod +x /path/to/your/project/.claude/hooks/context-monitor.sh
```

### Step 2: Create Task File

Create a `task.md` file in your project root with this structure:

```markdown
# Main Task: [Your Project Name]

**Status:** In Progress  
**Created:** [Today's Date]

## Overview
[Description of what you're building]

## Progress
- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3

---

# Subtask History
[Subtasks will be added here automatically by /check-context]
```

### Step 3: Test It

1. Start Claude Code session
2. Make 4-5 file edits or bash commands
3. You should see the checkpoint reminder
4. Run `/check-context` to test the command
5. Approve a checkpoint
6. See task.md get updated

---

## 📖 Understanding the System

### Read in This Order

1. **This README** (overview)
2. **context.md** (complete WHAT/WHY/HOW explanation)
3. **check-context.md** (slash command details)
4. **context-monitor.sh** (hook logic)

### Key Concepts

**Hook (Automatic):**
- Runs after every tool execution
- Counts steps (every 4-5 steps)
- Reminds you to checkpoint
- Zero token cost

**Slash Command (Intelligent):**
- You run: `/check-context`
- Checks context percentage
- If >= 70%, auto-generates next 5 steps
- Updates task.md
- Git commits work
- Costs 100-300 tokens (only at threshold)

**Together:**
- Automatic tracking + intelligent decisions
- Non-blocking + respectful of your workflow
- Minimal cost + maximum value

---

## 🎯 How It Works

### The Flow

```
You work normally...
        ↓
[Every 4-5 steps]
        ↓
Hook prints: "Ready to checkpoint? Run /check-context"
        ↓
You run: /check-context
        ↓
Command checks: Is context >= 70%?
        ├─ NO  → Keep working
        └─ YES → Show next steps + ask approval
        ↓
You approve: "yes"
        ↓
System:
  ✓ Updates task.md
  ✓ Creates .handoff file
  ✓ Git commits work
        ↓
Ready for /clear and next session
```

---

## 🔧 Configuration

### Change Step Threshold (4 → 5)

Edit `context-monitor.sh` line 18:

```bash
STEP_THRESHOLD=4  # Change this number
```

### Change Context Threshold (70% → 75%)

Edit `check-context.md` instructions:

Find: "If context >= 70%"  
Change to: "If context >= 75%"

### Customize Step Count (5 → 3)

Edit `check-context.md` section:

Find: "Generate 5 next steps"  
Change to: "Generate 3 next steps"

---

## 📋 File Details

### context.md

**What:** Complete system documentation  
**Contains:**
- WHAT: What is this system?
- WHY: Why do we need it?
- HOW: How does it work?
- Design decisions and rationale
- Technical details
- Conclusion and insights

**Read:** Before implementing  
**Length:** ~5000 words

### check-context.md

**What:** Claude Code custom slash command  
**How to use:** `/check-context` (type in Claude Code)  
**Copy to:** `.claude/commands/check-context.md`  
**What it does:**
1. Runs `/context` to get current usage
2. Checks if >= 70%
3. Auto-generates next 5 steps
4. Shows summary to user
5. Asks for approval
6. Updates task.md + git commit

### context-monitor.sh

**What:** Bash script run by hook  
**Trigger:** PostToolUse event (after every tool execution)  
**Copy to:** `.claude/hooks/context-monitor.sh`  
**What it does:**
1. Maintains step counter
2. Every 4-5 steps, prints reminder
3. Tells user to run `/check-context`

### hook-config.json

**What:** Claude Code hook configuration  
**Copy to:** `.claude/hooks/hook-config.json`  
**What it does:**
1. Registers PostToolUse event listener
2. Calls context-monitor.sh after tools

---

## 💾 File Structure

After setup, your project should look like:

```
your-project/
├── .claude/
│   ├── commands/
│   │   └── check-context.md          ← Slash command
│   ├── hooks/
│   │   ├── hook-config.json          ← Hook config
│   │   └── context-monitor.sh        ← Hook script
│   └── CLAUDE.md                     ← Your project context
│
├── task.md                           ← Your task file (create this)
├── .handoff-*.md                     ← Created automatically
├── src/
│   └── [your code files]
└── [rest of project]
```

---

## 🧪 Testing

### Test the Hook

1. Start Claude Code
2. Make 4 file edits
3. Should see checkpoint reminder after 4th edit
4. Make 4 more edits
5. Should see reminder again

### Test the Slash Command

1. Type: `/check-context`
2. Should check context
3. If < 70%, says "Not yet at threshold"
4. If >= 70%, shows approval dialog
5. Can approve or reject

---

## ❓ FAQ

### Q: Do I need both hook and command?

**A:** The hook is convenience (automatic reminders). You could use just the command manually. But together they're powerful:
- Hook = "Hey, remember to checkpoint"
- Command = Actually does the checkpoint

### Q: What if context is < 70%?

**A:** Just continue working. Command will tell you "not yet at threshold."

### Q: Can I run `/check-context` anytime?

**A:** Yes! It checks context and if >= 70%, generates steps. If < 70%, just tells you to keep working.

### Q: Does the hook cost tokens?

**A:** No. It's pure bash. Zero cost.

### Q: Does `/check-context` always cost tokens?

**A:** Only the intelligent decision-making (generating steps) costs tokens. Just checking context is free. Costs ~100-300 tokens per checkpoint.

### Q: What happens if I reject the checkpoint?

**A:** Nothing happens. Files aren't modified. You keep working.

### Q: Can I customize the step count?

**A:** Yes, edit `check-context.md` instructions to generate different number of steps (3, 5, 7, etc.)

### Q: How do I uninstall?

**A:** Just delete the files from `.claude/`. Your task.md is safe.

---

## 🚀 Usage Examples

### Example 1: Normal Flow

```
You: [Work for 5 steps]

Hook: "Context checkpoint reminder"

You: "/check-context"

Claude: [Checks context: 73%]
        [Shows work done]
        [Generates 5 steps]
        "Approve? (yes/no)"

You: "yes"

Claude: ✓ Updated task.md
        ✓ Created handoff
        ✓ Git committed
        "Ready for /clear"

You: "/clear"

Next session: Continue with generated steps
```

### Example 2: Manual Checkpoint

```
You: [Feel like context is getting full]

You: "/check-context" [anytime, not waiting for hook]

Claude: [Checks context]
        [Might be too early, tells you to keep working]
        [Or if at threshold, generates checkpoint]
```

---

## 🔍 Troubleshooting

### Hook not triggering

**Check:**
1. Is `context-monitor.sh` executable? `chmod +x .claude/hooks/context-monitor.sh`
2. Is `hook-config.json` in `.claude/hooks/`?
3. Restart Claude Code session

### `/check-context` not found

**Check:**
1. Is `check-context.md` in `.claude/commands/`?
2. Restart Claude Code (sometimes needs reload)
3. Type `/` to see list of available commands

### task.md not updating

**Check:**
1. Does `task.md` exist in project root?
2. Can Claude write to it? (permissions)
3. Try creating manually: `touch task.md`

---

## 📚 Next Steps

1. **Read** `context.md` for complete understanding
2. **Copy** the 4 files to your project
3. **Create** task.md in project root
4. **Test** the system with 5-10 edits
5. **Use** in your actual project

---

## 💡 Tips

### Best Practices

- Checkpoint every 4-5 steps (hook will remind you)
- Review generated steps before approving
- Use task.md as your project documentation
- Git history will show checkpoints clearly
- Handoff files preserve context for next session

### Optimization

- Edit step count in check-context.md if 5 is too many/few
- Edit STEP_THRESHOLD in context-monitor.sh if 4-5 is wrong
- Customize context threshold (70% → your preference)
- Add custom instructions to check-context.md for your project type

---

## 📞 Support

### If Something Doesn't Work

1. **Read** `context.md` WHAT/WHY/HOW sections
2. **Check** troubleshooting section above
3. **Verify** file locations are correct
4. **Review** permissions are correct (`chmod +x` for .sh files)
5. **Restart** Claude Code session
6. **Check** Claude Code documentation: https://code.claude.com/docs

---

## 🎓 What You'll Learn

After implementing this, you'll understand:
- How Claude Code hooks work
- How to create custom slash commands
- How to track context programmatically
- How to structure long projects
- How to create intelligent handoffs

---

## 📊 Benefits

| Benefit | Value |
|---------|-------|
| Automatic reminders | Don't forget to checkpoint |
| Smart next steps | AI generates, not you |
| Zero tracking cost | Hooks are free |
| Clean handoffs | Everything preserved |
| Git integration | Natural commit points |
| Token savings | Avoid degraded context |
| Project documentation | task.md becomes narrative |

---

## 🎉 Success Criteria

You'll know it's working when:

✅ Hook reminds you after 4-5 steps  
✅ `/check-context` command works  
✅ It shows context percentage  
✅ If >= 70%, generates next steps  
✅ You can approve/reject  
✅ task.md gets updated  
✅ .handoff file is created  
✅ Git shows new commit  

---

**Created:** January 16, 2026  
**Status:** Ready for implementation  
**Next Step:** Copy files and test in your project!
