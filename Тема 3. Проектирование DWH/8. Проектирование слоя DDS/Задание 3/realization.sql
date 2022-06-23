drop schema if exists dds cascade;
create schema dds;

drop table if exists dds.dm_users;
create table dds.dm_users
(
    id serial constraint dm_users_pkey primary key,
    user_id varchar not null,
    user_name varchar not null,
    user_login varchar not null
); 

drop table if exists dds.dm_restaurants;
create table dds.dm_restaurants
(
    id serial constraint dm_restaurants_pkey primary key,
    restaurant_id varchar not null,
    restaurant_name varchar not null,
    active_from timestamp not null,
    active_to timestamp not null
); 

-- Двигайтесь дальше! Ваш код: h5xVUDD1Wm
