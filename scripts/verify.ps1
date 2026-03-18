$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
Push-Location $repoRoot

try {
    $markdownlint = Get-Command markdownlint -ErrorAction SilentlyContinue
    if (-not $markdownlint) {
        throw 'markdownlint is required. Install it with: npm install -g markdownlint-cli'
    }

    & $markdownlint.Source '**/*.md' '--ignore' 'node_modules' '--ignore' 'AGENTS.md' '--ignore' 'CLAUDE.md'
    if ($LASTEXITCODE -ne 0) {
        exit $LASTEXITCODE
    }

    $skillText = Get-Content (Join-Path $repoRoot 'SKILL.md') -Raw
    if ($skillText -notmatch '(?ms)^---\r?\nname:\s+human-ai-system-builder\r?\ndescription:\s+.+?\r?\n---') {
        throw 'SKILL.md frontmatter must contain name and description.'
    }

    $openAiYaml = Get-Content (Join-Path $repoRoot 'agents/openai.yaml') -Raw
    if ($openAiYaml -notmatch '\$human-ai-system-builder') {
        throw 'agents/openai.yaml default_prompt must mention $human-ai-system-builder.'
    }
}
finally {
    Pop-Location
}
