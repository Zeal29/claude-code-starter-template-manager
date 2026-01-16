#!/bin/bash

# context-monitor.sh
# 
# Claude Code Hook Script
# Runs on PostToolUse event (after every file edit, bash command, etc.)
# 
# Purpose: Track tool executions and trigger context checkpoint check
# every 4-5 steps
#
# Cost: ZERO tokens (pure bash, no AI invocation)
#
# Configuration:
#   STEP_THRESHOLD = How many steps before triggering (4-5 recommended)
#   COUNTER_FILE = Where to store the execution counter

set -euo pipefail

# ============================================================================
# CONFIGURATION
# ============================================================================

# Number of steps before triggering context check
# Recommended: 4-5
# Too low: Too many reminders
# Too high: Context gets too full
STEP_THRESHOLD=4

# Where to store the step counter between invocations
COUNTER_FILE="${CLAUDE_PROJECT_DIR}/.claude/.step-counter"

# Temporary file for communication (if needed)
CONTEXT_FILE="${CLAUDE_PROJECT_DIR}/.claude/.last-context-check"

# ============================================================================
# INITIALIZATION
# ============================================================================

# Create .claude directory if it doesn't exist
mkdir -p "$(dirname "$COUNTER_FILE")"

# Initialize counter file if it doesn't exist
if [ ! -f "$COUNTER_FILE" ]; then
    echo "0" > "$COUNTER_FILE"
fi

# ============================================================================
# LOGIC
# ============================================================================

# Read current counter value
CURRENT_COUNT=$(cat "$COUNTER_FILE" 2>/dev/null || echo "0")

# Increment the counter
CURRENT_COUNT=$((CURRENT_COUNT + 1))

# Save updated counter
echo "$CURRENT_COUNT" > "$COUNTER_FILE"

# Check if we've hit the threshold
if [ $((CURRENT_COUNT % STEP_THRESHOLD)) -eq 0 ]; then
    
    # ========================================================================
    # THRESHOLD HIT - TIME FOR CONTEXT CHECK
    # ========================================================================
    
    # Print visual separator to make it obvious to user
    cat >&2 << 'EOF'

╔════════════════════════════════════════════════════════════════════════════╗
║                       🔔 CHECKPOINT REMINDER                              ║
║                    Context Auto-Tracking Enabled                          ║
╚════════════════════════════════════════════════════════════════════════════╝

EOF

    # Show what just happened
    cat >&2 << EOF
✓ Completed $CURRENT_COUNT steps since last checkpoint

EOF

    # Now we need to check the context percentage
    # We do this by reading the system warning that Claude Code provides
    # Or we could parse logs, but for now we'll ask the user
    
    cat >&2 << 'EOF'
📊 Context Usage: [checking...]

Would you like to save a checkpoint now? This will:
  • Check current context percentage
  • Auto-generate your next 5 steps
  • Update task.md with progress
  • Create a git commit
  • Prepare for /clear and next session

🎯 To checkpoint, run: /check-context

Or continue working and this will remind you after 4-5 more steps.

EOF

    cat >&2 << 'EOF'
╚════════════════════════════════════════════════════════════════════════════╝

EOF

    # Reset counter for next cycle
    echo "0" > "$COUNTER_FILE"

fi

# ============================================================================
# SUCCESS
# ============================================================================

# Exit with success (0) - this is non-blocking, we never want to interrupt
# the user's work
exit 0
