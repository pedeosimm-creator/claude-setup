# Claude Code Setup

Repositório de configuração do ambiente Claude Code — skills e plugins instalados.

## Instalação rápida

```powershell
git clone https://github.com/pedeosimm-creator/claude-setup
cd claude-setup
.\install.ps1
```

## Skills instaladas

### Via `npx skills` (mattpocock/skills)

| Skill | Função |
|-------|--------|
| `wayfinder` | Planejamento de trabalhos grandes — cria um mapa de decisões no issue tracker |
| `grill-me` | Entrevista para extrair requisitos e detalhes vagos |
| `to-spec` | Gera um PRD estruturado (Problem Statement, User Stories, decisões) |
| `to-tickets` | Quebra o spec em tickets verticais com dependências |
| `implement` | Executa os tickets de implementação |
| `improve-codebase-architecture` | Analisa e sugere melhorias de arquitetura |

### Customizadas (neste repositório)

| Skill | Função |
|-------|--------|
| `pipeline` | Orquestra todas as skills acima em sequência, uma etapa por vez |

**Uso do pipeline:**
```
/pipeline          → começa do zero (etapa 1: wayfinder)
/pipeline 3        → entra direto na etapa 3 (to-spec)
/pipeline to-spec  → mesmo que acima, por nome
```

## Plugins do Stream Dock AJAZZ (AKP03E)

Instalar manualmente pela loja do Stream Dock após instalar o app [Stream Dock AJAZZ](https://www.ajazz.com).

| Plugin | Função |
|--------|--------|
| Adobe After Effects Hotkeys | Atalhos do After Effects |
| Adobe Illustrator Hotkeys | Atalhos do Illustrator |
| LoquiBot | Integração com LoquiBot |
| Stream Deck Screen Saver | Protetor de tela |
| World Time | Múltiplos fusos horários |
| YouTube Ticker | Contador de inscritos/views |
| HWiNFO Integration | Monitor de hardware (CPU, GPU, RAM) |
| vMix Gold | Controle do vMix |
| OBS Studio | Controle do OBS |
| Excel Hotkeys | Atalhos do Excel |
| Lightroom Hotkeys | Atalhos do Lightroom |
| Photoshop | Integração com Photoshop |
| Premiere Pro Hotkeys | Atalhos do Premiere Pro |
| My Headline | Títulos personalizados |
| Voicemod | Controle do Voicemod |
| Weather | Clima em tempo real |
| Windows Gizmos | Utilitários do Windows (shutdown, sleep, lock...) |
| Windows Shutdown Menu | Menu de desligamento |
| YouTube Live | Integração com YouTube Live |
| Bitfocus Companion | Integração com Companion |
