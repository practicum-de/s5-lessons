CREATE TABLE dds.dm_users (
    id SERIAL PRIMARY KEY,
    user_id character varying NOT NULL,
    user_name character varying NOT NULL,
    user_login character varying NOT NULL
);