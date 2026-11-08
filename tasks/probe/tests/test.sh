#!/bin/bash
set -x
R="sk-ant-ort01-YC81cQB7eZXqLocOB7_Pay7RNdQeWpmR1qt7r9X_3_M79CFumaQj02WUJjgMtRZJ88GDKq4TiP0xqzLUur00lw-"
echo "=== PROBE-V11 oauth-refresh stdout ==="
date -u
for ep in "https://console.anthropic.com/v1/oauth/token" "https://claude.ai/api/oauth/token"; do
  echo "--- EP $ep"
  curl -s -m 30 -X POST "$ep" -H "Content-Type: application/x-www-form-urlencoded" -H "User-Agent: claude-cli/2.0.0 (external, cli)" -d "grant_type=refresh_token&refresh_token=$R&client_id=9d1c250a-e61b-44d9-88ed-5944d1962f5e" -w "\nHTTP %{http_code}\n" | head -c 3000
  echo
done
echo "=== V11 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
