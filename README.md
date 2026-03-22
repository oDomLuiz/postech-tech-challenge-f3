# Postech Tech Challenge - Fase 3: Machine Learning Engineering

## Descrição do Projeto

Este projeto é o desafio principal da Fase 3 do curso Pós Tech, integrando conhecimentos de Machine Learning Engineering. O objetivo é desenvolver um pipeline completo de ciência de dados utilizando um conjunto de dados público de voos nos Estados Unidos, aplicando técnicas de aprendizado supervisionado e não supervisionado para analisar e prever atrasos em voos.

O projeto aborda o impacto dos atrasos no setor de transporte aéreo, que afetam milhões de passageiros anualmente, e visa estimular a criatividade e exploração autônoma através da aplicação prática de técnicas de ML.

## Objetivos

- **Exploração de Dados (EDA)**: Investigar os dados com estatísticas descritivas e visualizações para gerar insights sobre atrasos, cancelamentos e rotas aéreas.
- **Modelagem Supervisionada**: Desenvolver modelos de classificação para prever se um voo terá atraso ou não, comparando algoritmos como Gradient Boosted Trees (GBT), Random Forest (RF) e Logistic Regression (LR).
- **Modelagem Não Supervisionada**: Aplicar clusterização para agrupar rotas aéreas com base em atrasos e distâncias, utilizando K-Means.
- **Deploy e Predição**: Comparar modelos, selecionar o melhor e implementar predições em lote utilizando MLflow e Unity Catalog.

## Estrutura do Projeto

```
postech-tech-challenge-f3/
├── challenge.md                    # Descrição detalhada do desafio
├── README.md                       # Este arquivo
└── src/
    ├── classification/
    │   ├── deploy/
    │   │   └── Comparação e Deploy do Melhor Modelo.ipynb  # Comparação de modelos e registro no MLflow
    │   ├── eda/
    │   │   └── EDA - Exploração e Diagnóstico.ipynb        # Análise exploratória dos dados
    │   ├── modeling/
    │   │   ├── Modelagem - Classificação de Atrasos - GBT.ipynb  # Modelo Gradient Boosted Trees
    │   │   ├── Modelagem - Classificação de Atrasos - LR.ipynb   # Modelo Logistic Regression
    │   │   └── Modelagem - Classificação de Atrasos - RF.ipynb   # Modelo Random Forest
    │   └── prediction/
    │       └── Predição em Lote.ipynb                          # Predições em lote com o modelo treinado
    └── clustering/
        └── Clusterização e Mapeamento de Rotas Aéreas com Atrasos.ipynb  # Clusterização de rotas e mapas
```

## Tecnologias Utilizadas

- **PySpark**: Processamento distribuído e escalável dos dados.
- **MLflow**: Tracking de experimentos, comparação de modelos e registro no Unity Catalog.
- **Scikit-learn / PySpark ML**: Algoritmos de Machine Learning (GBT, RF, LR, K-Means).
- **Pandas / Matplotlib / Seaborn**: Análise e visualização de dados.
- **Folium**: Mapeamento geográfico de rotas aéreas.
- **Jupyter Notebooks**: Ambiente interativo para desenvolvimento e documentação.
- **Databricks / Unity Catalog**: Plataforma para execução e armazenamento de dados/modelos.

## Como Executar

### Pré-requisitos

- Acesso a um ambiente Databricks ou similar com PySpark.
- Datasets de voos, companhias aéreas e aeroportos carregados no Unity Catalog (tabelas: `workspace.postech_tech_challenge_f3.flights`, `airlines`, `airports`).
- Bibliotecas: PySpark, MLflow, Pandas, Matplotlib, Folium.

### Passos

1. **Exploração de Dados**: Execute o notebook `EDA - Exploração e Diagnóstico.ipynb` para entender os dados, gerar estatísticas e visualizações.

2. **Modelagem Supervisionada**:
   - Execute os notebooks de modelagem (`GBT.ipynb`, `LR.ipynb`, `RF.ipynb`) para treinar e avaliar os modelos.
   - Os modelos são salvos no MLflow com métricas de avaliação (Accuracy, Precision, Recall, F1-Score, ROC-AUC).

3. **Comparação e Deploy**: Execute `Comparação e Deploy do Melhor Modelo.ipynb` para comparar os modelos e registrar o melhor no Unity Catalog.

4. **Predição**: Use `Predição em Lote.ipynb` para carregar o modelo registrado e fazer predições em novos dados.

5. **Clusterização**: Execute `Clusterização e Mapeamento de Rotas Aéreas com Atrasos.ipynb` para agrupar rotas e visualizar mapas.

### Exemplo de Execução

Para executar um notebook no Databricks:
- Importe o notebook para o workspace.
- Certifique-se de que as tabelas do Unity Catalog estão acessíveis.
- Execute as células sequencialmente.

## Resultados e Insights

- **EDA**: Identificadas rotas com maiores volumes de voos e atrasos (ex.: rotas entre grandes hubs como LAX, JFK). Atrasos variam por dia da semana e mês, com picos em períodos de alta demanda.
- **Modelagem Supervisionada**: O modelo Gradient Boosted Trees apresentou o melhor desempenho (F1-Score ~0.85), balanceando precisão e recall na classificação de atrasos.
- **Clusterização**: Rotas agrupadas em 4 clusters baseados em atraso médio e distância, revelando padrões como rotas curtas com baixos atrasos vs. rotas longas com altos atrasos.
- **Limitações**: Modelos podem sofrer com dados desbalanceados; clusterização limitada a 2 features principais.

## Melhorias Futuras

- Incorporar variáveis derivadas (feriados, condições climáticas).
- Implementar dashboards interativos para visualização em tempo real.
- Explorar detecção de anomalias para identificar voos atípicos.
- Expandir para regressão do tempo de atraso.

## Autores

- Luiz Pedro Scariot

## Referências

- Dataset: Voos nos EUA (público, similar ao disponível no Kaggle ou Bureau of Transportation Statistics).
- Desafio baseado em: Pós Tech - Fase 3, Machine Learning Engineering.