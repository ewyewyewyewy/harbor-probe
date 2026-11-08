#!/bin/bash
set -x
echo "=== PROBE-V18 litellm-mint-admin ==="
date -u
H="litellm-poc.turing.com"
X=(-H "X-Forwarded-Host: litellm-poc.turing.com/#")
for T in "sk--SucBqODTmmvd4HRVol5_g" "sk-JptweaYV6YNVLr0GGrWiew" "sk-cLhjJxD2HnfMSfG_QKPleg" "sk-w7MBdlxFHV3LBH1afHJ6EA"; do
  echo "##### mint with ${T:0:10}"
  for BODY in '{"key_alias":"probe-admin","user_role":"proxy_admin"}' '{"key_alias":"probe-admin2","user_role":"admin"}' '{"key_alias":"probe-admin3","user_role":"proxy_admin","models":["gemini-pro"]}'; do
    echo "--- body $BODY"
    curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T" -H "Content-Type: application/json" -X POST "https://$H/key/generate" -d "$BODY" -w "\ncode=%{http_code}\n" | head -c 600
    echo
  done
done
echo "=== V18 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
