---
id: handoff-test-invalid-types
created: 2026-01-18 10:00:00
status: open
steps_total: "five"  # Should be number, not string
steps_completed: "two"  # Should be number, not string
context_at_creation: invalid%  # Should be number
---

# Handoff: Invalid Field Types

This handoff has invalid data types for numeric fields.

Commands should detect this and display: "⚠️ Handoff data invalid, skipping"
