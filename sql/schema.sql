-- Table Schema (for reference)

CREATE TABLE cleaned (
    order_id TEXT,
    customer_id TEXT,
    customer_unique_id TEXT,
    order_status TEXT,
    order_purchase_timestamp DATETIME,
    payment_value FLOAT,
    product_category_name TEXT,
    customer_state TEXT
);