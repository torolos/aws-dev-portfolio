
### Stage 3 — `stages/stage-3-image-pipeline/README.md`
```md
# Stage 3 — Event-Driven Image Pipeline

**Goal:** S3 upload triggers Lambda to resize; success/failed notifications via SNS; DLQ via SQS.

## Services
S3, Lambda, SNS, SQS (DLQ), EventBridge (schedules/targets)

## Steps
- Create two buckets: `raw` and `resized`
- Configure S3 event → Lambda (resize)
- Publish completion to SNS; errors to DLQ

## What to Learn
- Event source mapping, retries, idempotency
- Least privilege IAM for S3/Lambda/SNS/SQS
