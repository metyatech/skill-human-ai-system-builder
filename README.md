# skill-human-ai-system-builder

Agent skill for designing systems that humans and AI agents can both manage. It turns short requests into an explicit architecture covering the canonical data store, human GUI, AI editing surface, synchronization, conflict handling, validation, diagnostics delivery, generated artifacts, and startup flow.

## Supported environments

- Agent Skills-compatible runners such as Codex and Claude Code
- Any operating system supported by the runner

## Installation

```sh
npx skills add metyatech/skill-human-ai-system-builder --yes --global
```

## Usage

### Claude Code

```text
/human-ai-system-builder
```

### Codex

```text
$human-ai-system-builder
```

## What it decides

- canonical data store
- human GUI reuse vs custom GUI
- AI editing surface
- sync and conflict policy
- validation timing and location
- same-surface diagnostics strategy
- generated artifacts
- human startup path

## Included design assets

- `project-contract` template and JSON schema
- GUI selection guidance
- reusable pattern references for `native-gui-reuse`, `custom-gui`, and `hybrid-gui`
- example contracts under `assets/templates/`
- guidance for canonical store, sync/conflict, validation/launch, and minimal architectural questions

## Development

Required tools:

- `markdownlint-cli`
- `compose-agentsmd`
- PowerShell 7+

Verification:

```sh
pwsh -File scripts/verify.ps1
```

Regenerate agent guidance:

```sh
compose-agentsmd
```

## Release and publish

This repository is published as a GitHub-hosted skill. Update `SKILL.md`, references, and assets together, run verification, then commit, push, and tag the release when appropriate.

## Related documents

- [CONTRIBUTING.md](CONTRIBUTING.md)
- [SECURITY.md](SECURITY.md)
- [CHANGELOG.md](CHANGELOG.md)
- [LICENSE](LICENSE)
