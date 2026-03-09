-- Script de ingestão para tabela workspace.postech_tech_challenge_f3.airlines

-- Criação da tabela caso não exista
CREATE TABLE IF NOT EXISTS workspace.postech_tech_challenge_f3.airlines (
    IATA_CODE STRING,
    AIRLINE STRING
);

-- Limpar tabela antes de executar nova ingestão
DELETE FROM workspace.postech_tech_challenge_f3.airlines;

-- Ingestão via COPY INTO a partir do volume CSV
COPY INTO workspace.postech_tech_challenge_f3.airlines
FROM '/Volumes/workspace/postech_tech_challenge_f3/raw/2026-03-09/airlines.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true')
