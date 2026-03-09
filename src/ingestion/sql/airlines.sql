-- Script de ingestão para tabela workspace.postech_tech_challenge_f3.airlines

-- Definição do parâmetro para a data de ingestão
-- No Databricks, use notebook widgets ou parâmetros de workflow
-- Exemplo: :ingest_date ou {{ingest_date}} para substituição dinâmica

-- Criação da tabela caso não exista
CREATE TABLE IF NOT EXISTS workspace.postech_tech_challenge_f3.airlines (
    IATA_CODE STRING,
    AIRLINE STRING
);

-- Ingestão via COPY INTO a partir do volume CSV com data parametrizada
COPY INTO workspace.postech_tech_challenge_f3.airlines
FROM '/Volumes/workspace/postech_tech_challenge_f3/raw/{{ingest_date}}/airlines.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true')
COPY_OPTIONS ('mergeSchema' = 'true');
