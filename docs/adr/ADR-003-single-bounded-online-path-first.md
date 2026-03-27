# ADR-003: Build a Single Bounded Online Path First

## Status
Accepted

## Context
The fastest way to create confusion is to grow multiple services, agents, and delivery paths before the first end-to-end flow is proven.

## Decision
The first implementation path must be a single bounded online path: one minimal service, one ingress path, one deployment path, one observable runtime path.

## Consequences
- We reduce early architectural sprawl.
- We keep demos concrete and understandable.
- Advanced patterns like multi-agent routing, A2A, and broad control-plane features are deferred until the core path is working.
