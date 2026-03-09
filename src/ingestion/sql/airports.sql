-- Script de ingestão para tabela workspace.postech_tech_challenge_f3.airports

-- Criação da tabela caso não exista
CREATE TABLE IF NOT EXISTS workspace.postech_tech_challenge_f3.airports (
    IATA_CODE STRING,
    AIRPORT STRING,
    CITY STRING,
    STATE STRING,
    COUNTRY STRING,
    LATITUDE DOUBLE,
    LONGITUDE DOUBLE
);

-- Limpar tabela antes de executar nova ingestão
DELETE FROM workspace.postech_tech_challenge_f3.airports;

-- Ingestão via COPY INTO a partir do volume CSV usando seleção explícita de colunas
COPY INTO workspace.postech_tech_challenge_f3.airports
FROM (SELECT IATA_CODE, AIRPORT, CITY, STATE, COUNTRY, CAST(LATITUDE AS DOUBLE) AS LATITUDE, CAST(LONGITUDE AS DOUBLE) AS LONGITUDE
      FROM '/Volumes/workspace/postech_tech_challenge_f3/raw/2026-03-09/airports.csv')
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true')