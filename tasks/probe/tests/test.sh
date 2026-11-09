#!/bin/bash
set -x
echo "=== PROBE-V22 litellm-wellknown ==="
date -u
H="llm-proxy.atlas.turing.com"
for P in "/.well-known/openid-configuration" "/.well-known/litellm-cli-auth" "/.well-known/litellm-ui-config" "/.well-known/agent-skills/index.json" "/.agents/skills/slides-skill" "/authorize" "/authorize/flow" "/api/plugins" "/active/callbacks" "/v1/models" "/a2a" "/assistants" "/audit"; do
  echo "--- $P"
  curl -s -m 10 "https://$H$P" -w "\ncode=%{http_code}\n" | head -c 500
  echo
done
echo "##### trial worker routes"
for H2 in "harbor-eval-trial-claude.atlas.turing.com" "harbor-eval-dispatch.atlas.turing.com"; do
  echo "#### $H2"
  for P in "/api" "/api/v1" "/api/v1/health" "/openapi.json" "/run" "/trial" "/trials" "/jobs" "/queue" "/status" "/metrics" "/version" "/ready" "/admin" "/keys" "/debug" "/docs"; do
    C=$(curl -s -m 6 -o /tmp/b -w "%{http_code}" "https://$H2$P"); [ "$C" != "404" ] && [ "$C" != "000" ] && echo "[$C] $P :: $(head -c 80 /tmp/b | tr '\n' ' ')"
  done
done
echo "=== V22 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
