DROP TABLE IF EXISTS cdm.dm_settlement_report;
CREATE TABLE cdm.dm_settlement_report (
    id serial PRIMARY KEY,
    restaurant_id varchar NOT NULL,
    restaurant_name varchar NOT NULL,
    settlement_date date NOT NULL,
    orders_count integer NOT NULL,
    orders_total_sum numeric(14, 2) NOT NULL,
    orders_bonus_payment_sum numeric(14, 2) NOT NULL,
    orders_bonus_granted_sum numeric(14, 2) NOT NULL,
    order_processing_fee numeric(14, 2) NOT NULL,
    restaurant_reward_sum numeric(14, 2) NOT NULL
);

-- Добавления ограничения NOT NULL на все поля
ALTER TABLE cdm.dm_settlement_report
ALTER COLUMN restaurant_id SET NOT NULL,
ALTER COLUMN restaurant_name SET NOT NULL,
ALTER COLUMN settlement_date SET NOT NULL,
ALTER COLUMN orders_count SET NOT NULL,
ALTER COLUMN orders_total_sum SET NOT NULL,
ALTER COLUMN orders_bonus_payment_sum SET NOT NULL,
ALTER COLUMN orders_bonus_granted_sum SET NOT NULL,
ALTER COLUMN order_processing_fee SET NOT NULL,
ALTER COLUMN restaurant_reward_sum SET NOT NULL;