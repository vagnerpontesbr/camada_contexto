# Camada de Contexto

Material de hands-on sobre a **camada de contexto** de aplicações de IA (RAG e agentes) com **MongoDB Atlas + Voyage AI**. Cada módulo traz um notebook Jupyter executável e o deck de apoio para a apresentação.

## Módulos

| # | Módulo | Conteúdo | Status |
|---|--------|----------|--------|
| 01 | [Qualidade de contexto](modulos/01_qualidade_de_contexto/) | Ingestão com Docling, embeddings contextualizados, Matryoshka, `$vectorSearch`, ANN × ENN, busca híbrida com `$rankFusion` e reranking | ✅ Disponível |
| 02 | [Montagem de contexto](modulos/02_montagem_de_contexto/) | A definir | 🚧 Em preparação |

## Estrutura

```
camada_contexto/
├── README.md
├── requirements.txt              # dependências Python dos notebooks
├── .gitignore
├── scripts/
│   └── criar_repositorio.sh      # cria o repositório privado no GitHub e faz o push inicial
└── modulos/
    ├── 01_qualidade_de_contexto/
    │   ├── README.md
    │   ├── notebooks/            # notebook do hands-on (PT-BR)
    │   ├── slides/               # deck da apresentação (PT-BR)
    │   ├── assets/diagramas/     # diagramas usados no notebook e no deck
    │   └── originais_en/         # versões originais em inglês
    └── 02_montagem_de_contexto/
        ├── README.md
        ├── notebooks/
        ├── slides/
        └── assets/diagramas/
```

Cada módulo segue a mesma estrutura (`notebooks/`, `slides/`, `assets/diagramas/`), para que um novo módulo entre no repositório sem mudar a organização.

## Pré-requisitos

- Python 3.10+ e Jupyter (VS Code, JupyterLab ou Colab)
- Cluster **MongoDB Atlas 8.0+** (recomendado **M10**; o passo a passo está na seção 0.1 do notebook do módulo 01)
- **Model API key da Voyage AI** criada no Atlas (passo a passo na seção 0.2 do notebook do módulo 01)

## Como começar

```bash
git clone <url-do-repositorio> camada_contexto
cd camada_contexto
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
code modulos/01_qualidade_de_contexto/notebooks/hands_on_qualidade_de_contexto.ipynb
```

## Autor

Vagner Pontes · Principal Solutions Architect · MongoDB
