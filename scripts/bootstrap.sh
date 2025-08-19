#!/usr/bin/env bash
set -euo pipefail
ACCOUNT_ID=${1:?Usage: bootstrap.sh <ACCOUNT_ID> <REGION>}
REGION=${2:?Usage: bootstrap.sh <ACCOUNT_ID> <REGION>}
npx cdk bootstrap aws://$ACCOUNT_ID/$REGION
