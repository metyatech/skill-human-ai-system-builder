# Domain heuristic: structured documents

Treat syllabus, forms, spreadsheet-backed documents, and layout-sensitive records as `structured-document` systems.

Prefer this bias:

- canonical store: text-based structured data
- human surface: existing document or spreadsheet GUI
- ai surface: canonical files
- validation: live in the human editing surface
- generated artifacts: separate output directory

Choose `native-gui-reuse` unless there is a strong management workflow that clearly requires `hybrid-gui`.
