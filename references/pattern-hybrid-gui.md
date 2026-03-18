# Pattern: hybrid-gui

Use this pattern when overview and editing belong in different places.

Typical shape:

- canonical store: database or structured files
- human surface A: launcher, dashboard, or management GUI
- human surface B: existing editing tool
- ai surface: canonical files or service adapter
- sync: explicit handoff between management and editing surfaces
- validation: split between launcher status and editor-local diagnostics, with editor-local diagnostics kept inside the editing surface when possible

Good fit:

- document systems with workflow around them
- spreadsheet-backed systems with review state
- any system where deep editing and high-level management need different tools
