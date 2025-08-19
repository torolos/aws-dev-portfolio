#!/usr/bin/env bash
set -euo pipefail
echo "Python lint"
pip install flake8 >/dev/null 2>&1 || true
flake8 stages --count --select=E9,F63,F7,F82 --show-source --statistics || true
echo "CDK lint"
if [ -f package.json ]; then npm run lint || true; fi
