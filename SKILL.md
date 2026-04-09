---
name: human-ai-system-builder
description: Design and build systems that humans and AI agents can both manage. Use when a request says a system must be operated, edited, or maintained by both humans and AI, especially when the request is short and Codex must infer the canonical data store, human GUI, AI editing surface, synchronization flow, conflict policy, validation surfaces, diagnostics delivery, generated artifacts, and startup path.
---

# Human/AI system builder

The agent MUST build a `project-contract` before implementation.
Start from [references/project-contract.md](references/project-contract.md)
and [assets/project-contract.template.yaml](assets/project-contract.template.yaml).

The agent MUST make every decision below explicit:

- Actors.
- Canonical store.
- Human surface.
- AI surface.
- Sync direction and trigger.
- Conflict detection and resolution.
- Validation timing and location.
- Generated artifacts.
- Human startup flow.

The agent MUST use [references/gui-selection.md](references/gui-selection.md)
to choose one of these patterns:

- [references/pattern-native-gui-reuse.md](references/pattern-native-gui-reuse.md)
- [references/pattern-custom-gui.md](references/pattern-custom-gui.md)
- [references/pattern-hybrid-gui.md](references/pattern-hybrid-gui.md)

For core architecture choices, the agent MUST also use:

- [references/canonical-store-selection.md](references/canonical-store-selection.md)
- [references/sync-and-conflict.md](references/sync-and-conflict.md)
- [references/validation-and-launch.md](references/validation-and-launch.md)
- [references/minimal-questions.md](references/minimal-questions.md)
- [references/deliverables.md](references/deliverables.md)

For document, form, spreadsheet, and layout-sensitive systems, the
agent MUST also read
[references/domain-structured-docs.md](references/domain-structured-docs.md).

## Workflow

1. Classify the domain and the primary constraints.
2. Draft the `project-contract`.
3. Choose the human GUI pattern.
4. Decide the canonical store and AI editing surface.
5. Specify sync, conflict, validation, artifacts, and launch flow.
6. Ask only the irreducible questions that materially change
   architecture.
7. Choose or adapt the nearest reusable template under
   [assets/templates](assets/templates).
8. Produce the architecture summary, chosen pattern, contract,
   scaffold plan, and implementation sequence.

## Design rules

- The agent MUST keep one canonical source of truth.
- The agent MUST prefer machine-readable, diff-friendly canonical
  data for AI.
- The agent MUST prefer the most natural human GUI for the job,
  even when it is an existing application.
- The agent MUST reuse an existing GUI when that GUI is the truth
  for layout, wrapping, print, or visual constraints.
- The agent MUST show validation in the human primary work
  surface whenever practical.
- The agent MUST prefer diagnostics in the same active human GUI
  via inline markers, anchored panels, or in-surface sheets before
  introducing a separate diagnostics window.
- The agent MUST separate generated artifacts from canonical data.
- The agent MUST NOT rely on silent overwrites for human/AI
  conflicts.
- The agent MUST make the human launch path low-friction. The
  agent MUST prefer launcher or double-click flows over CLI for
  routine human work.

## Outputs

The agent MUST produce these outputs unless the user explicitly
narrows scope:

- Architecture summary.
- `project-contract`.
- Chosen GUI pattern and rationale.
- Scaffold layout.
- Implementation plan.
- Acceptance criteria.

The agent MUST use
[assets/project-contract.schema.json](assets/project-contract.schema.json)
when a machine-readable schema is needed. The agent SHOULD use the
example contracts under [assets/templates](assets/templates) when
the request is close to an existing pattern.
