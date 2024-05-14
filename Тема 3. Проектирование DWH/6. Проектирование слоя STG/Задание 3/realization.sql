-- Добавление ограничения на уникальность поля object_id в таблице ordersystem_orders
ALTER TABLE stg.ordersystem_orders
ADD CONSTRAINT ordersystem_orders_object_id_uindex UNIQUE (object_id);

-- Добавление ограничения на уникальность поля object_id в таблице ordersystem_restaurants
ALTER TABLE stg.ordersystem_restaurants
ADD CONSTRAINT ordersystem_restaurants_object_id_uindex UNIQUE (object_id);

-- Добавление ограничения на уникальность поля object_id в таблице ordersystem_users
ALTER TABLE stg.ordersystem_users
ADD CONSTRAINT ordersystem_users_object_id_uindex UNIQUE (object_id);

UPDATE public.clients
SET login = 'arthur_dent'
WHERE client_id = 42;