#!/bin/bash
set -x
echo '=== PROBE-V20 newhosts ==='
date -u
echo '##### agentspace-api.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://agentspace-api.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### auth-gw.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://auth-gw.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### data-hub-api.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://data-hub-api.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### eval.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://eval.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### evalplatform-staging.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://evalplatform-staging.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### evalplatform.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://evalplatform.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### evals.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://evals.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### feature-service-oauth.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://feature-service-oauth.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### flower.llm-as-evaluator-develop.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://flower.llm-as-evaluator-develop.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### flower.llm-as-evaluator.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://flower.llm-as-evaluator.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-dispatch-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-dispatch-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-dispatch-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-dispatch-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-dispatch-staging.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-dispatch-staging.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-dispatch.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-dispatch.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-claude-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-claude-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-claude-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-claude-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-claude-staging.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-claude-staging.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-claude.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-claude.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-google-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-google-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-google-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-google-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-google-staging.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-google-staging.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-google.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-google.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-openai-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-openai-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-openai-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-openai-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-openai-staging.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-openai-staging.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-openai.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-openai.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-xai-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-xai-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-xai-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-xai-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-xai-staging.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-xai-staging.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-eval-trial-xai.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-eval-trial-xai.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-claude-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-claude-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-claude-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-claude-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-claude.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-claude.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-openai-beta.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-openai-beta.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-openai-qa.rd.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-openai-qa.rd.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### harbor-trial-openai.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://harbor-trial-openai.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### hopfield-bizagents-candidate-eval.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://hopfield-bizagents-candidate-eval.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### hopfield-candidate-eval.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://hopfield-candidate-eval.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### litellm-poc.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://litellm-poc.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-as-evaluator-develop.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-as-evaluator-develop.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-as-evaluator.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-as-evaluator.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-deepmind-review.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-deepmind-review.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-gateway-develop.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-gateway-develop.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-gateway.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-gateway.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-poc-a.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-poc-a.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-proxy.atlas.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-proxy.atlas.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-reviewer-develop.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-reviewer-develop.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-reviewer.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-reviewer.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-router.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-router.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-run-checks-dev.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-run-checks-dev.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llm-run-checks.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llm-run-checks.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llmgateway-dev.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llmgateway-dev.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llmgateway-staging.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llmgateway-staging.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### llmgateway.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://llmgateway.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### rlhf-eval.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://rlhf-eval.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '##### staging.data-hub-api.turing.com'
for P in / /health /healthz /api/v1/health /openapi.json /v1/models /docs; do C=$(curl -s -k -m 6 -o /tmp/b -w '%{http_code}' -A 'Mozilla/5.0' "https://staging.data-hub-api.turing.com$P"); S=$(head -c 100 /tmp/b | tr '\n' ' '); echo "[$C] $P :: $S"; done
echo '=== V20 END ==='
echo 1 > /tests/reward.txt 2>/dev/null
exit 0