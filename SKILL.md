---
name: human-ai-system-builder
description: Design and build systems that humans and AI agents can both manage. Use when a request says a system must be operated, edited, or maintained by both humans and AI, especially when the request is short and Codex must infer the canonical data store, human GUI, AI editing surface, synchronization flow, conflict policy, validation surfaces, generated artifacts, and startup path.
---

# Human/AI system builder

Build a `project-contract` before implementation. Use [references/project-contract.md](references/project-contract.md) and [assets/project-contract.template.yaml](assets/project-contract.template.yaml) as the starting point.

Always make these decisions explicit:

- actors
- canonical store
- human surface
- ai surface
- sync direction and trigger
- conflict detection and resolution
- validation timing and location
- generated artifacts
- human startup flow

Use [references/gui-selection.md](references/gui-selection.md) to choose one of these patterns:

- [references/pattern-native-gui-reuse.md](references/pattern-native-gui-reuse.md)
- [references/pattern-custom-gui.md](references/pattern-custom-gui.md)
- [references/pattern-hybrid-gui.md](references/pattern-hybrid-gui.md)

For document, form, spreadsheet, and layout-sensitive systems, also read [references/domain-structured-docs.md](references/domain-structured-docs.md).

## Workflow

1. Classify the domain and the primary constraints.
2. Draft `project-contract`.
3. Choose the human GUI pattern.
4. Decide the canonical store and AI editing surface.
5. Specify sync, conflict, validation, artifacts, and launch flow.
6. Ask only the irreducible questions that materially change architecture.
7. Produce the architecture summary, chosen pattern, contract, scaffold plan, and implementation sequence.

## Design rules

- Keep one canonical source of truth.
- Prefer machine-readable, diff-friendly canonical data for AI.
- Prefer the most natural human GUI for the job, even when it is an existing application.
- Reuse an existing GUI when that GUI is the truth for layout, wrapping, print, or visual constraints.
- Show validation in the human primary work surface whenever practical.
- Separate generated artifacts from canonical data.
- Never rely on silent overwrites for human/AI conflicts.
- Make the human launch path low-friction. Prefer launcher or double-click flows over CLI for routine human work.

## Outputs

Produce these outputs unless the user explicitly narrows scope:

- architecture summary
- `project-contract`
- chosen GUI pattern and rationale
- scaffold layout
- implementation plan
- acceptance criteria

Use [assets/project-contract.schema.json](assets/project-contract.schema.json) when a machine-readable schema is needed.
