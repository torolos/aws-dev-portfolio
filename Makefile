SHELL := /bin/bash

DEFAULT_STAGE ?= stages/stage-1-todo-app

.PHONY: setup lint test synth deploy destroy

setup:
	python3 -m venv .venv && source .venv/bin/activate && pip install -r $(DEFAULT_STAGE)/app/requirements.txt || true

lint:
	scripts/lint.sh

test:
	pytest -q

synth:
	npx cdk synth || echo "No CDK app here; skipping"

deploy:
	bash scripts/deploy.sh $(DEFAULT_STAGE)

destroy:
	bash scripts/destroy.sh $(DEFAULT_STAGE)
