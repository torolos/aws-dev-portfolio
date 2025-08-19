#!/usr/bin/env bash
set -euo pipefail
STAGE_DIR=${1:?Usage: destroy.sh <stage-dir>}
if [ -f "$STAGE_DIR/iac/template.yaml" ]; then
  sam delete --stack-name $(basename $STAGE_DIR)
elif [ -d "$STAGE_DIR/iac/cdk" ]; then
  pushd "$STAGE_DIR/iac/cdk"
  npx cdk destroy --force
  popd
else
  echo "No IaC found in $STAGE_DIR"
fi
