-- Создание таблицы для коллекции orders
CREATE TABLE stg.ordersystem_orders (
    id SERIAL PRIMARY KEY,
    object_id VARCHAR NOT NULL,
    object_value TEXT NOT NULL,
    update_ts TIMESTAMP NOT NULL
);

-- Создание таблицы для коллекции restaurants
CREATE TABLE stg.ordersystem_restaurants (
    id SERIAL PRIMARY KEY,
    object_id VARCHAR NOT NULL,
    object_value TEXT NOT NULL,
    update_ts TIMESTAMP NOT NULL
);

-- Создание таблицы для коллекции users
CREATE TABLE stg.ordersystem_users (
    id SERIAL PRIMARY KEY,
    object_id VARCHAR NOT NULL,
    object_value TEXT NOT NULL,
    update_ts TIMESTAMP NOT NULL
);