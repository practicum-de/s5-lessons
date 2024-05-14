-- Создание поля valid_from в таблице products, если оно не существует
ALTER TABLE products
ADD COLUMN IF NOT EXISTS valid_from TIMESTAMPTZ;

-- Создание поля valid_to в таблице products, если оно не существует
ALTER TABLE products
ADD COLUMN IF NOT EXISTS valid_to TIMESTAMPTZ;

-- Создание индекса на поле valid_to для ускорения поиска актуальных записей
CREATE INDEX IF NOT EXISTS idx_products_valid_to ON products (valid_to);

-- Создание триггера для обновления полей valid_from и valid_to при изменении записи
CREATE OR REPLACE FUNCTION update_product_dates()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.name <> NEW.name OR OLD.price <> NEW.price THEN
        NEW.valid_from := now();
        NEW.valid_to := NULL;
        
        IF OLD.valid_from IS NOT NULL THEN
            UPDATE products
            SET valid_to = now()
            WHERE product_id = OLD.product_id AND valid_to IS NULL;
        END IF;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

UPDATE public.clients
SET login = 'arthur_dent'
WHERE client_id = 42;