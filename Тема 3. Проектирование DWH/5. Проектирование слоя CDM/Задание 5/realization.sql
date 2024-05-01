ALTER TABLE cdm.dm_settlement_report
ADD CONSTRAINT unique_restaurant_period
UNIQUE (restaurant_id, settlement_date);