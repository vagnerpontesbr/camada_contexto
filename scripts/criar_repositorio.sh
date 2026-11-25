#!/usr/bin/env bash
# Cria o repositório privado "camada_contexto" no GitHub e faz o push inicial.
# Pré-requisito: GitHub CLI autenticada na conta desejada (gh auth login).
# Uso: ./scripts/criar_repositorio.sh [dono]   (dono = usuário ou organização; padrão: conta logada)
set -euo pipefail
cd "$(dirname "$0")/.."

OWNER="${1:-}"
NOME="camada_contexto"
REPO="${OWNER:+$OWNER/}$NOME"

if [ ! -d .git ]; then
  git init -b main
  git add .
  git commit -m "Estrutura inicial: módulo 01 (qualidade de contexto) e módulo 02 (montagem de contexto)"
fi

gh repo create "$REPO" --private --source . --remote origin --push \
  --description "Hands-on da camada de contexto para IA com MongoDB Atlas + Voyage AI"

echo "Repositório criado: $(gh repo view "$REPO" --json url -q .url)"
