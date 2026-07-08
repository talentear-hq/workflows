#!/usr/bin/env bash
set -euo pipefail

gh issue edit "$ISSUE_NUMBER" --repo "$GITHUB_REPOSITORY" --add-label "$TRIAGE_LABEL_NAME"
