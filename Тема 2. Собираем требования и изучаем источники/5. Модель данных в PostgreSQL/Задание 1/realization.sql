SELECT DISTINCT product->>'product_name' AS name
FROM (
    SELECT json_array_elements(event_value::json->'product_payments') AS product
    FROM outbox
) AS unique_products;