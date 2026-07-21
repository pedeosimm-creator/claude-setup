# Claude Code Setup - Instalador de Skills
# Execute no PowerShell como Administrador se necessario

Write-Host "=== Claude Code Setup ===" -ForegroundColor Cyan
Write-Host ""

# ── Skills do mattpocock (via npx skills) ─────────────────────────────────────

Write-Host "Instalando skills do mattpocock/skills..." -ForegroundColor Yellow

$mattpocock_skills = @(
    "grill-me",
    "implement",
    "improve-codebase-architecture",
    "to-spec",
    "to-tickets",
    "wayfinder"
)

foreach ($skill in $mattpocock_skills) {
    Write-Host "  -> $skill" -ForegroundColor Gray
    npx skills add https://github.com/mattpocock/skills --skill $skill
}

Write-Host ""

# ── Skills customizadas (copiadas do repositorio) ─────────────────────────────

Write-Host "Instalando skills customizadas..." -ForegroundColor Yellow

$custom_skills = @(
    "brandkit",
    "brutalist-skill",
    "gpt-tasteskill",
    "image-to-code-skill",
    "imagegen-frontend-mobile",
    "imagegen-frontend-web",
    "minimalist-skill",
    "output-skill",
    "pipeline",
    "redesign-skill",
    "soft-skill",
    "stitch-skill",
    "taste-skill",
    "taste-skill-v1"
)

foreach ($skill in $custom_skills) {
    $dest = "$env:USERPROFILE\.claude\skills\$skill"
    New-Item -ItemType Directory -Path $dest -Force | Out-Null
    Copy-Item -Path "$PSScriptRoot\skills\$skill\SKILL.md" -Destination "$dest\SKILL.md" -Force
    Write-Host "  -> $skill" -ForegroundColor Gray
}

Write-Host ""
Write-Host "=== Instalacao concluida! ===" -ForegroundColor Green
Write-Host "Reinicie o Claude Code para carregar as novas skills." -ForegroundColor Gray
