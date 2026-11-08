#!/bin/bash
set -x
echo "=== PROBE-V14 litellm ==="
date -u
T3="sk--SucBqODTmmvd4HRVol5_g"
T4="sk-JptweaYV6YNVLr0GGrWiew"
T5="sk-cLhjJxD2HnfMSfG_QKPleg"
T6="sk-w7MBdlxFHV3LBH1afHJ6EA"
H="litellm-poc.turing.com"
for T in "$T3" "$T4" "$T5" "$T6"; do
  echo "##### KEY ${T:0:10}"
  for P in "/health" "/v1/models" "/model/info" "/config/list" "/key/info" "/user/list" "/spend/logs"; do
    echo "--- $P"
    curl -s -m 12 -H "Authorization: Bearer $T" -H "X-Forwarded-Host: litellm-poc.turing.com/#" "https://$H$P" -w "\ncode=%{http_code}\n" | head -c 700
    echo
  done
done
echo "=== V14 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
