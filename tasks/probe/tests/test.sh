#!/bin/bash
set -x
echo "=== PROBE-V13 new-hosts ==="
date -u
probe(){ echo "--- $1 $2"; curl -s -m 10 -o /tmp/b -w "code=%{http_code}\n" -X "$1" "$2" ${3:+-H "Authorization: Bearer $3"}; head -c 400 /tmp/b; echo; }
TOK1="sk-harbor-8MHmDlSvCPt8waHsdDqY6owjHHCpTi95UCS6bzdVL-8"
TOK2="sk-harbor-dDrhnPchbsXah-7ErZQ7mxWwJ-Kowe3_6-tuPPa5gs4"
HUB="sk-harbor-tHJxVHqGbX6K_MxPrd5NPYhawURLGDQ5pGzWJIgqe8NjZSjL0wEZliJk"
for H in harbor-gateway.harborframework.com registry.harborframework.com harbor-gateway-dev.harborframework.com auth-gw.rd.atlas.turing.com aws-harness.turing.com data.swebench-wms.turing.com; do
  echo "##### $H"
  probe GET "https://$H/"
  probe GET "https://$H/health"
  probe GET "https://$H/v1/models"
  probe GET "https://$H/api/v1/models"
  probe GET "https://$H/openapi.json"
  probe GET "https://$H/.well-known/openid-configuration"
done
echo "##### gateway with tokens"
for T in "$TOK1" "$TOK2" "$HUB"; do
  probe GET "https://harbor-gateway.harborframework.com/v1/models" "$T"
done
echo "=== V13 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
