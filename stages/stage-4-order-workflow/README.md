# Stage 4 — Step Functions Order Workflow

**Goal:** Orchestrate payment → inventory → shipping with retry/backoff & compensation.

## Services
API Gateway, Lambda, DynamoDB, Step Functions, SQS DLQ, SNS

## Steps
- Define ASL state machine with `Task`, `Retry`, `Catch`
- Integrate Lambda tasks; emit events/notifications

## What to Learn
- Orchestration vs choreography
- Error handling patterns (Retry/Catch), DLQ, SAGA ideas
