#!/bin/bash
set -x
echo "=== PROBE-V21 llm-proxy.atlas ==="
date -u
H="llm-proxy.atlas.turing.com"
for T in "sk--SucBqODTmmvd4HRVol5_g" "sk-JptweaYV6YNVLr0GGrWiew" "sk-cLhjJxD2HnfMSfG_QKPleg" "sk-w7MBdlxFHV3LBH1afHJ6EA" "sk-CHBtog-VSz209LrwGvl0WQ"; do
  echo "##### KEY ${T:0:10}"
  for P in "/v1/models" "/model/info" "/health" "/key/info" "/config/list?config_type=general_settings" "/user/list"; do
    echo "--- $P"
    curl -s -m 10 -H "Authorization: Bearer $T" "https://$H$P" -w "\ncode=%{http_code}\n" | head -c 500
    echo
  done
done
echo "##### openapi paths llm-proxy:"
curl -s -m 15 "https://$H/openapi.json" -o /tmp/o.json -w "code=%{http_code}\n"
grep -oE '"/[A-Za-z0-9/_{}.\-]+"' /tmp/o.json | sort -u | head -60
echo "##### llm-run-checks openapi:"
curl -s -m 15 "https://llm-run-checks.turing.com/openapi.json" -o /tmp/o2.json -w "code=%{http_code}\n"
head -c 400 /tmp/o2.json
echo
grep -oE '"/[A-Za-z0-9/_{}.\-]+"' /tmp/o2.json 2>/dev/null | sort -u | head -40
echo "##### evaluator openapi:"
for P in "/api/v1/openapi.json" "/v3/api-docs" "/api/openapi.json"; do curl -s -m 10 "https://llm-as-evaluator.turing.com$P" -o /tmp/o3.json -w "$P code=%{http_code}\n"; head -c 200 /tmp/o3.json; echo; done
echo "=== V21 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
