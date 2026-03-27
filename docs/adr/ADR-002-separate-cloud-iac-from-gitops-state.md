# ADR-002: Separate Cloud IaC from GitOps Desired State

## Status
Accepted

## Context
A common failure mode is mixing infrastructure creation with workload deployment state. That makes ownership unclear and complicates operations and demos.

## Decision
Keep cloud and platform foundation resources in the bootstrap repo, and keep workload desired state in a separate GitOps repo.

## Consequences
- Terraform owns resource creation and shared foundation.
- GitOps owns the desired application state for dev, stage, and prod.
- The delivery story becomes easier to explain: create foundation first, then reconcile workloads.
