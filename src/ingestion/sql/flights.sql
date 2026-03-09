-- Script de ingestão para tabela workspace.postech_tech_challenge_f3.flights

-- Definição do parâmetro para a data de ingestão
-- No Databricks, use notebook widgets ou parâmetros de workflow
-- Exemplo: :ingest_date ou {{ingest_date}} para substituição dinâmica

-- Criação da tabela caso não exista
CREATE TABLE IF NOT EXISTS workspace.postech_tech_challenge_f3.flights (
    YEAR INT,
    MONTH INT,
    DAY INT,
    DAY_OF_WEEK INT,
    AIRLINE STRING,
    FLIGHT_NUMBER INT,
    TAIL_NUMBER STRING,
    ORIGIN_AIRPORT STRING,
    DESTINATION_AIRPORT STRING,
    SCHEDULED_DEPARTURE INT,
    DEPARTURE_TIME INT,
    DEPARTURE_DELAY INT,
    SCHEDULED_ARRIVAL INT,
    ARRIVAL_TIME INT,
    ARRIVAL_DELAY INT,
    AIR_TIME INT,
    DISTANCE INT,
    WHEELS_ON INT,
    TAXI_IN INT,
    TAXI_OUT INT,
    CANCELLED INT,
    CANCELLATION_REASON STRING,
    DIVERTED INT,
    SCHEDULED_TIME INT,
    ELAPSED_TIME INT,
    REMARKS STRING
);

-- Ingestão via COPY INTO a partir do volume CSV com data parametrizada
COPY INTO workspace.postech_tech_challenge_f3.flights
FROM '/Volumes/workspace/postech_tech_challenge_f3/raw/{{ingest_date}}/flights.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true')
COPY_OPTIONS ('mergeSchema' = 'true');
