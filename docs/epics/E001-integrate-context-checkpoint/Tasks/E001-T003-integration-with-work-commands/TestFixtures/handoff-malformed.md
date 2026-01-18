# Handoff: Malformed (No YAML frontmatter)

This handoff file is intentionally malformed - missing the YAML frontmatter entirely.

Commands should detect this and display: "⚠️ Handoff file malformed (invalid YAML), skipping"

Expected behavior: Continue normal command execution without checkpoint section.
