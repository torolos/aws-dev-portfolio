# Stage 1 — Serverless To-Do App

**Goal:** CRUD API secured with Cognito; data in DynamoDB; observability with CloudWatch/X-Ray.

## Architecture
API Gateway → Lambda (Create/Get/Update/Delete) → DynamoDB
Auth via Cognito User Pool Authorizer.

![architecture](./architecture.png)

## Services
- API Gateway (REST)
- Lambda (Python/Node)
- DynamoDB (PK: UserId, SK: TaskId)
- Cognito (User Pool)
- CloudWatch Logs, X-Ray

## Prereqs
- AWS CLI configured
- SAM CLI installed (or CDK if you prefer)

## Deploy (SAM)
```bash
sam build -t iac/template.yaml
sam deploy --guided
