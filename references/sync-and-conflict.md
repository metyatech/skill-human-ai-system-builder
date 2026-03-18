# Sync and conflict

Always specify these points:

- source of truth
- human edit trigger
- AI edit trigger
- refresh direction
- stale-state detection
- conflict resolution owner

Default policy:

- detect conflicts before applying a cross-surface change
- never silently overwrite human work with AI work or the reverse
- keep generated artifacts disposable
- update canonical data first, then regenerate projections

Typical sync choices:

- human save applies to canonical store
- AI edits canonical store directly
- human surface refresh pulls from canonical store

Good conflict detectors:

- base hash of canonical content
- editor version marker
- last-applied revision id
