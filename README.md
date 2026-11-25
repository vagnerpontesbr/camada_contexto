# Camada de Contexto

Material de hands-on sobre a **camada de contexto** de aplicações de IA (RAG e agentes) com **MongoDB Atlas + Voyage AI**. Cada módulo traz um notebook Jupyter executável e a apresentação de apoio em PDF.

## Módulos

| # | Módulo | Conteúdo | Status |
|---|--------|----------|--------|
| 01 | [Qualidade de contexto](modulos/01_qualidade_de_contexto/) | Ingestão com Docling, embeddings contextualizados, Matryoshka, `$vectorSearch`, ANN × ENN, busca híbrida com `$rankFusion` e reranking | ✅ Disponível |
| 02 | [Montagem de contexto](modulos/02_montagem_de_contexto/) | Benchmark de montagem de contexto: prefixo estável, projeção e tags, filtro de vigência, k por avaliação e `voyage-context-4`, medindo custo, acurácia e latência | ✅ Disponível |

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
    │   ├── slides/               # apresentação em PDF (PT-BR)
    │   ├── assets/diagramas/     # diagramas usados no notebook e na apresentação
    │   └── originais_en/         # versões originais em inglês
    └── 02_montagem_de_contexto/
        ├── README.md
        ├── notebooks/            # notebook do benchmark (PT-BR)
        ├── slides/               # apresentação em PDF (PT-BR)
        ├── assets/diagramas/     # diagramas e gráficos
        └── originais_en/         # versões originais em inglês
```

Cada módulo segue a mesma estrutura (`notebooks/`, `slides/`, `assets/diagramas/`), para que um novo módulo entre no repositório sem mudar a organização.

## Pré-requisitos

- Python 3.10+ e Jupyter (VS Code, JupyterLab ou Colab)
- Cluster **MongoDB Atlas 8.0+** (recomendado **M10**; passo a passo na seção 0.1 do módulo 01 e 0.2 do módulo 02). O módulo 02 também roda com MongoDB Community 8.2+ local via Docker
- **Model API key da Voyage AI** criada no Atlas (passo a passo na seção 0.2 do módulo 01 e 0.3 do módulo 02)
- **API key da OpenAI** (só no módulo 02)

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
