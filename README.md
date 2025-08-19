# AWS Developer Portfolio (DVA-C02)

A progressive, hands-on roadmap that builds a production-grade portfolio across six stages:
1) Serverless To-Do App, 2) ECS Microservice with CI/CD, 3) Image Pipeline,
4) Order Workflow (Step Functions), 5) Real-time Analytics, 6) Multi-env IaC.

## Quick Start
- Install: AWS CLI, Node.js (for CDK), Python 3.11, Docker.
- Auth: `aws configure` with a **least-privileged** IAM user (or SSO).
- Bootstrap CDK: `npx cdk bootstrap aws://ACCOUNT_ID/REGION`

## Stages
- See `/stages/*/README.md` for step-by-step lab guides.
- Shared infra examples in `/infra/`.

## CI/CD
- GitHub Actions in `.github/workflows/` run lint, tests, and IaC synth.
- Add OIDC + IAM role for GitHub if you want automated deploys.

## Study Links
- `docs/02-study-checklist.md` maps stages to DVA-C02 exam domains.

## License
MIT (see LICENSE).
