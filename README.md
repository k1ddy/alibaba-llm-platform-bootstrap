# Alibaba LLM Platform Bootstrap

Foundation repository for cloud infrastructure, shared platform bootstrapping, and the first control surfaces needed to run the platform.

## Scope
This repo owns:
- Terraform-based cloud infrastructure.
- Shared bootstrap assets for the platform foundation.
- Minimal operator automation.
- Platform-level architecture decisions.

## Out of Scope
This repo does not own:
- Application business logic.
- Runtime code for the assistant.
- Per-environment desired deployment state.
- Eval datasets or demo application content.

## Initial Structure
- `docs/adr/` - architecture decisions.
- `infra/terraform/` - modules and environment roots.
- `ops/ansible/` - focused operator automation.
- `bootstrap/root-app/` - root-level GitOps bootstrap assets when we are ready.

## First Deliverables
- lock repo boundaries;
- define Terraform as the primary IaC path;
- keep cloud IaC separate from GitOps desired state;
- build only one bounded online path first.
