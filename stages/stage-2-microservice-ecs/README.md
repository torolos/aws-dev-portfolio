
### Stage 2 — `stages/stage-2-microservice-ecs/README.md`
```md
# Stage 2 — ECS Microservice with CI/CD

**Goal:** Containerized service on ECS Fargate behind an ALB; pipeline automates build & deploy.

## Architecture
Client → ALB → ECS Service (Fargate) → CloudWatch

## Services
- ECR (image registry), ECS (Fargate), ALB
- CodeCommit, CodeBuild, CodePipeline
- CloudWatch Alarms (CPU/Memory)

## Deploy (CDK)
```bash
pushd iac/cdk
npm ci
npx cdk deploy --require-approval never
popd
