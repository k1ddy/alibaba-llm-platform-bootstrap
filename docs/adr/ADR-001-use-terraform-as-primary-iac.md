# ADR-001: Use Terraform as the Primary IaC Path

## Status
Accepted

## Context
The platform needs a clear, interviewable, and production-aligned path for infrastructure creation. We want one primary way to define cloud resources and avoid mixing several competing IaC approaches in the first build.

## Decision
Use Terraform as the main infrastructure-as-code mechanism for shared cloud resources and environment foundations.

## Consequences
- Infrastructure ownership stays explicit and reviewable.
- We gain a strong platform-engineering signal without turning the project into pure DevOps.
- Helm, Kustomize, and GitOps remain deployment-state tools, not replacements for Terraform.
