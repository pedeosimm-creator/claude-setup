---
name: pipeline
description: Executa o fluxo completo de desenvolvimento passo a passo: wayfinder → grill-me → to-spec → to-tickets → implement → code-review. Uma etapa por vez, esperando confirmação antes de avançar.
---

# Pipeline de Desenvolvimento

Execute o fluxo completo de desenvolvimento, uma etapa por vez. Nunca avance para a próxima etapa sem o usuário confirmar que a etapa atual está concluída.

## Etapas

1. **wayfinder** — Mapeamento estratégico: entender o escopo do trabalho, identificar as grandes decisões e criar um mapa no issue tracker.
2. **grill-me** — Entrevista: fazer perguntas ao usuário para extrair todos os requisitos e detalhes que ainda estão vagos.
3. **to-spec** — Especificação: transformar tudo que foi descoberto em um PRD estruturado (Problem Statement, User Stories, decisões de implementação).
4. **to-tickets** — Tickets: quebrar o spec em tickets verticais com dependências entre eles.
5. **implement** — Implementação: executar os tickets, um por vez.
6. **code-review** — Revisão: revisar o código implementado antes de finalizar.

## Processo

Ao ser invocado:

1. Pergunte ao usuário em qual etapa quer começar (padrão: etapa 1 — wayfinder). Se o usuário já estiver no meio do fluxo, retome da etapa correta.

2. Anuncie claramente qual etapa está começando:
   ```
   ── Etapa N/6: NOME ──────────────────
   ```

3. Invoque a skill correspondente à etapa atual e execute-a completamente.

4. Ao terminar a etapa, apresente um resumo do que foi produzido e pergunte:
   - "Etapa N concluída. Avançar para [próxima etapa]? (ou volte para ajustar qualquer coisa)"

5. Só avance quando o usuário confirmar explicitamente.

6. Ao concluir todas as 6 etapas, apresente um resumo final do que foi produzido em cada etapa.

## Retomada

Se o usuário invocar `/pipeline <N>` ou `/pipeline <nome-da-etapa>`, pule diretamente para aquela etapa sem passar pelas anteriores. Traga contexto do que foi produzido nas etapas anteriores antes de começar.

## Regras

- Nunca execute mais de uma etapa por invocação sem confirmação explícita do usuário
- Sempre mostre em qual etapa está e quantas faltam (ex: "Etapa 2 de 6")
- Se o usuário quiser pular uma etapa, confirme antes de pular
- Se o usuário quiser voltar uma etapa, volte sem reclamar
