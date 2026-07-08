#!/usr/bin/env bash
set -euo pipefail

is_allowed_non_member_issue_type=false

for issue_type in ${NON_MEMBER_ALLOWED_ISSUE_TYPES//,/ }; do
	if [ "$ISSUE_TYPE_NAME" = "$issue_type" ]; then
		is_allowed_non_member_issue_type=true
		break
	fi
done

echo "is_allowed_non_member_issue_type=$is_allowed_non_member_issue_type" >> "$GITHUB_OUTPUT"
