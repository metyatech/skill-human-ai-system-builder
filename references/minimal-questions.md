# Minimal questions

Do not ask broad discovery questions when the architecture can be inferred safely.

Only ask when the answer materially changes:

- canonical store choice
- GUI pattern choice
- conflict ownership
- generated artifact expectations
- deployment boundary

Good minimal questions are narrow and architectural, for example:

- Is the existing office document itself the place where humans must verify layout constraints?
- Does the human need a dashboard separate from the editing surface?
- Is the canonical data expected to be Git-reviewed text?

If the request is clearly a structured-document workflow jointly managed by humans and AI, prefer:

- canonical store: text-based structured data
- human surface: existing office GUI
- validation: live in that GUI
- outputs: generated separately
