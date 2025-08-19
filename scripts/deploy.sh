#!/usr/bin/env bash
set -euo pipefail
STAGE_DIR=${1:?Usage: deploy.sh <stage-dir>}
if [ -f "$STAGE_DIR/iac/template.yaml" ]; then
  echo "Deploying SAM in $STAGE_DIR"
  sam build -t "$STAGE_DIR/iac/template.yaml"
  sam deploy --guided
elif [ -d "$STAGE_DIR/iac/cdk" ]; then
  echo "Deploying CDK in $STAGE_DIR"
  pushd "$STAGE_DIR/iac/cdk"
  npm ci
  npx cdk deploy --require-approval never
  popd
else
  echo "No IaC found in $STAGE_DIR"
fi
