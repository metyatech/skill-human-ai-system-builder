# Canonical store selection

Choose one canonical store and keep every other surface as a projection, adapter, or generated artifact.

Prefer text-first structured data when:

- AI must read and write directly
- version control and diff review matter
- generated artifacts can be derived from the source

Prefer a database when:

- multiple records, state transitions, permissions, or querying dominate
- the human workflow is operational rather than document-centric
- the system naturally lives behind an application boundary

Prefer existing binary office formats only as human editing surfaces, not as canonical stores, unless there is a strong, unavoidable external constraint.

Default mapping:

- AI surface: canonical store
- human surface: native GUI or custom GUI
- generated artifacts: derived outputs only
