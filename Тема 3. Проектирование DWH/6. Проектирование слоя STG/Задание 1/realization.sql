CREATE TABLE IF NOT EXISTS stg.bonussystem_users (
    id integer PRIMARY KEY,
    order_user_id text
);

-- Создание таблицы bonussystem_ranks
CREATE TABLE IF NOT EXISTS stg.bonussystem_ranks (
    id integer PRIMARY KEY,
    name character varying(2048) NOT NULL,
    bonus_percent numeric NOT null,
    min_payment_threshold  numeric NOT null
);

-- Создание таблицы bonussystem_events
CREATE TABLE IF NOT EXISTS stg.bonussystem_events (
    id integer PRIMARY KEY,
    event_ts timestamp NOT NULL,
    event_type character varying NOT NULL,
    event_value text NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_bonussystem_events__event_ts ON stg.bonussystem_events (event_ts);