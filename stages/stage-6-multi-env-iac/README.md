# Stage 6 — Multi-Environment IaC

**Goal:** One repo, multiple stages (dev/test/prod) deployed by a pipeline; configs & secrets externalized.

## Services
CDK Pipelines (or CodePipeline), IAM, Secrets Manager, Parameter Store

## Steps
- Define stacks per env (dev/test/prod) in `lib/`
- OIDC/IAM role for GitHub Actions deploy
- Externalize config to `config/*.json`

## What to Learn
- Change sets, cross-account/region deployment
- Secrets & config management best practices
