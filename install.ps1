# Claude Code Setup - Instalador de Skills e Plugins
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

# ── Skill customizada: pipeline ────────────────────────────────────────────────

Write-Host "Instalando skill customizada: pipeline..." -ForegroundColor Yellow

$skills_dest = "$env:USERPROFILE\.claude\skills\pipeline"
New-Item -ItemType Directory -Path $skills_dest -Force | Out-Null
Copy-Item -Path "$PSScriptRoot\skills\pipeline\SKILL.md" -Destination "$skills_dest\SKILL.md" -Force

Write-Host "  -> pipeline copiado para $skills_dest" -ForegroundColor Gray
Write-Host ""

# ── Plugins do Stream Dock AJAZZ ──────────────────────────────────────────────

Write-Host "Plugins do Stream Dock AJAZZ:" -ForegroundColor Yellow
Write-Host "  Esses precisam ser instalados manualmente pela loja do Stream Dock." -ForegroundColor Gray
Write-Host ""
Write-Host "  Lista de plugins instalados:" -ForegroundColor Gray

$plugins = @(
    "com.adobeaftereffects.hotkey       - Adobe After Effects Hotkeys",
    "com.adobeillustrator.hotkey.demo   - Adobe Illustrator Hotkeys",
    "com.alphalaneous.loquibot          - LoquiBot",
    "com.barraider.sdscreensaver        - Stream Deck Screen Saver",
    "com.barraider.worldtime            - World Time",
    "com.dahnandpartners.ytticker       - YouTube Ticker",
    "com.exension.hwinfo                - HWiNFO Integration",
    "com.gabilan.games.vmix.gold        - vMix Gold",
    "com.gabilan.obs                    - OBS Studio",
    "com.hotspot.excel.hotkey           - Excel Hotkeys",
    "com.hotspot.lightroom.hotkey       - Lightroom Hotkeys",
    "com.hotspot.photoshop              - Photoshop",
    "com.hotspot.premierepro.hotkey     - Premiere Pro Hotkeys",
    "com.hotspot.streamdock.myHeadline  - My Headline",
    "com.hotspot.streamdock.voicemod    - Voicemod",
    "com.jk.weather                     - Weather",
    "com.krabs.windowsgizmos            - Windows Gizmos",
    "com.krabs.windowsshutdownmenu      - Windows Shutdown Menu",
    "com.mirabox.streamdock.youtube_live - YouTube Live",
    "io.bitfocus.companion-plugin       - Bitfocus Companion"
)

foreach ($plugin in $plugins) {
    Write-Host "    $plugin" -ForegroundColor DarkGray
}

Write-Host ""
Write-Host "=== Instalacao concluida! ===" -ForegroundColor Green
Write-Host "Reinicie o Claude Code para carregar as novas skills." -ForegroundColor Gray
