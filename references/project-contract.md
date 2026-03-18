# Project contract

Create a `project-contract` before implementation. It should make these fields explicit:

- `system`
- `actors`
- `canonical_store`
- `human_surface`
- `ai_surface`
- `sync`
- `validation`
- `outputs`
- `gui_selection`
- `launch`
- `acceptance`

Use the template in [../assets/project-contract.template.yaml](../assets/project-contract.template.yaml).
Use the schema in [../assets/project-contract.schema.json](../assets/project-contract.schema.json) when machine validation is needed.

Keep the contract short, but make all synchronization and conflict decisions explicit.
