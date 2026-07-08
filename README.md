# Workflows

This repository centralizes reusable GitHub Actions workflows shared across the organization.

The goal is to provide consistent automation patterns that can be easily referenced and extended.

## Available workflows

### Issue triage

Classifies issue authors as organization members or non-members to enforce governance rules.

- **Members:** Automatically adds the issue to the shared organization project.
- **Non-members:** Only allows configured issue types (e.g., `Bug`) and flags them with a review label. Unauthorized types are automatically closed with a comment providing further guidance.
