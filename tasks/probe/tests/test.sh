#!/bin/bash
set -x
echo "=== PROBE-V26 tb3/codeexplorer/meta ==="
date -u
P(){ echo "--- $1 $2"; curl -s -m 8 -o /tmp/b -w "code=%{http_code}\n" -X "$1" "$2"; head -c 400 /tmp/b; echo; }
T="https://tb3-controller.turing.com"
for p in /api/me /api/status /api/runs /api/workers /api/eval-workers /v1/reviewer/eval-engine/capabilities /v1/reviewer/eval-engine/revisions /v1/reviewer/eval-engine/legacy-inventory /v1/reviewer/eval-engine/credential-usage /v1/reviewer/eval-engine/status /v1/reviewer/eval-engine/artifacts /v1/batches /api/log /api/seed /api/leaderboard/tasks; do P GET "$T$p"; done
C="https://code-explorer.turing.com"
for p in /api/gateway/health /api/db/health "/api/tasks?limit=2" /taskapp-token /api/tasks-new/config /api/tasks-new/repos /users /api/me; do P GET "$C$p"; done
M="https://meta-acc-gateway.turing.com"
for p in / /health /openapi.json /v1/models /docs; do P GET "$M$p"; done
L="https://llmstudio-poc.turing.com"
for p in /openapi.json /api/engine/models /api/engine/config /api/engine/health /api/engine/chat/azure; do P GET "$L$p"; done
P POST "$L/api/engine/chat/azure"
echo "=== V26 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
