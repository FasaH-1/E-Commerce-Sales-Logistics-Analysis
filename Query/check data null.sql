
-- 1. Check Data Null
-- table customer
select COUNTIF( customer_id is null) as null_customer_id,
COUNTIF(customer_unique_id is null) as null_customer_unique_id,
COUNTIF(customer_zip_code_prefix IS NULL) AS null_zip_code,
COUNTIF(customer_city IS NULL) AS null_city,
COUNTIF(customer_state IS NULL) AS null_state
FROM `ecomercebrazil.olist_customers_dataset`;

-- table order
SELECT
COUNTIF(order_id IS NULL) AS null_order_id,
COUNTIF(customer_id IS NULL) AS null_customer_id,
COUNTIF(order_status IS NULL) AS null_status,
COUNTIF(order_purchase_timestamp IS NULL) AS null_purchase_time
FROM `ecomercebrazil.olist_orders_dataset`;

-- table order items
SELECT
COUNTIF(order_id IS NULL) AS null_order_id,
COUNTIF(order_item_id IS NULL) AS null_order_item_id,
COUNTIF(product_id IS NULL) AS null_product_id,
COUNTIF(seller_id IS NULL) AS null_seller_id
FROM `ecomercebrazil.olist_order_items_dataset`;

-- table product
SELECT
COUNTIF(product_id IS NULL) AS null_product_id,
COUNTIF(product_category_name IS NULL) AS null_category
FROM `ecomercebrazil.olist_products_dataset`;

-- table product translete
SELECT
COUNTIF(product_category_name IS NULL) AS null_category_name,
COUNTIF(product_category_name_englsih IS NULL) AS null_category_english
FROM `ecomercebrazil.product_category_name_translation`;

-- table seller
SELECT
COUNTIF(seller_id IS NULL) AS null_seller_id,
COUNTIF(seller_zip_code_prefix IS NULL) AS null_zip,
COUNTIF(seller_city IS NULL) AS null_city,
COUNTIF(seller_state IS NULL) AS null_state
FROM `ecomercebrazil.olist_sellers_dataset`;

-- Table Payments
SELECT
COUNTIF(order_id IS NULL) AS null_order_id,
COUNTIF(payment_type IS NULL) AS null_payment_type,
COUNTIF(payment_value IS NULL) AS null_payment_value
FROM `ecomercebrazil.olist_order_payments_dataset`;

-- Table Location
SELECT
COUNTIF(geolocation_zip_code_prefix IS NULL) AS null_zip,
COUNTIF(geolocation_lat IS NULL) AS null_lat,
COUNTIF(geolocation_lng IS NULL) AS null_lng
FROM `ecomercebrazil.olist_geolocation_dataset`;







