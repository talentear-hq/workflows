#!/usr/bin/env bash
set -euo pipefail

if [ -z "$ISSUE_TYPE_NAME" ]; then
	echo "issue_type_name is required and cannot be empty."
	exit 1
fi
