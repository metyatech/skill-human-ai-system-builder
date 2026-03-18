# Pattern: native-gui-reuse

Use this pattern when an existing application is the natural human editing surface.

Typical shape:

- canonical store: YAML, JSON, Markdown, or another diff-friendly format
- human surface: Excel, Word, spreadsheet, or similar existing GUI
- ai surface: canonical files
- sync: human saves or refreshes through an adapter
- validation: surfaced inside the native GUI, ideally in the same workbook, window, or active surface the human is editing
- outputs: generated separately from canonical data

Good fit:

- structured documents
- spreadsheets
- form-heavy workflows
- layout-sensitive content
