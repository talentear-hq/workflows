#!/usr/bin/env bash
set -euo pipefail

allowed_issue_types_text="${NON_MEMBER_ALLOWED_ISSUE_TYPES//,/, }"

read -r -d '' COMMENT_BODY <<EOF || true
Hi @${ISSUE_AUTHOR}, thank you for your interest in contributing!

This issue type is reserved for organization members. Non-members may open issues of type: **${allowed_issue_types_text}**.

For feature requests and questions, use [GitHub Discussions](${DISCUSSIONS_URL}).

Our organizational [CONTRIBUTING guidelines](${CONTRIBUTING_GUIDELINES_URL}) explain how we use GitHub for project management and why certain issue types are restricted.

If you believe you should have access to create additional issue types, contact the organization maintainers.
EOF

gh issue comment "$ISSUE_NUMBER" --repo "$GITHUB_REPOSITORY" --body "$COMMENT_BODY"

gh issue close "$ISSUE_NUMBER" --repo "$GITHUB_REPOSITORY" --reason "not planned"
