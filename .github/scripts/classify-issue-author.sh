#!/usr/bin/env bash
set -euo pipefail

classify_error=$(mktemp)

if gh api "orgs/${ORGANIZATION_NAME}/members/${ISSUE_AUTHOR}" --silent 2>"$classify_error"; then
	is_organization_member=true
else
	if grep -q "HTTP 404" "$classify_error"; then
		is_organization_member=false
	else
		echo "Failed to classify issue author membership:" >&2
		cat "$classify_error" >&2

		rm -f "$classify_error"
		exit 1
	fi
fi

rm -f "$classify_error"

echo "is_organization_member=$is_organization_member" >> "$GITHUB_OUTPUT"
