-- Cleaning Data

-- orders #for relevant order business

CREATE OR REPLACE VIEW `ecomercebrazil.v_orders_clean` AS
SELECT
  order_id,
  customer_id,
  order_status,
  order_purchase_timestamp,
  order_approved_at,
  order_delivered_carrier_date,
  order_delivered_customer_date,
  order_estimated_delivery_date
FROM `ecomercebrazil.olist_orders_dataset`
WHERE customer_id IS NOT NULL
AND order_purchase_timestamp IS NOT NULL
AND order_status NOT IN ('canceled', 'unavailable');


-- Product #where is product have product_id

CREATE OR REPLACE VIEW `ecomercebrazil.v_products_clean` AS
SELECT
  product_id,
  product_category_name,
  product_weight_g,
  product_length_cm,
  product_height_cm,
  product_width_cm
FROM `ecomercebrazil.olist_products_dataset`
WHERE product_id IS NOT NULL;


-- seller #only have seller_id

CREATE OR REPLACE VIEW `ecomercebrazil.v_sellers_clean` AS
SELECT
  seller_id,
  seller_zip_code_prefix,
  seller_city,
  seller_state
FROM `ecomercebrazil.olist_sellers_dataset`
WHERE seller_id IS NOT NULL;


-- Order Itemms

CREATE OR REPLACE VIEW `ecomercebrazil.v_order_items_clean` AS
SELECT
  order_id,
  order_item_id,
  product_id,
  seller_id,
  shipping_limit_date,
  price,
  freight_value
FROM `ecomercebrazil.olist_order_items_dataset`
WHERE order_id IS NOT NULL
AND product_id IS NOT NULL
AND seller_id IS NOT NULL;


-- Payments

CREATE OR REPLACE VIEW `ecomercebrazil.v_order_payments_clean` AS
SELECT
  order_id,
  payment_sequential,
  payment_type,
  payment_installments,
  payment_value
FROM `ecomercebrazil.olist_order_payments_dataset`
WHERE order_id IS NOT NULL
AND payment_value IS NOT NULL;


-- Customer

CREATE OR REPLACE VIEW `ecomercebrazil.v_customers_clean` AS
SELECT
  customer_id,
  customer_unique_id,
  customer_zip_code_prefix,
  customer_city,
  customer_state
FROM `ecomercebrazil.olist_customers_dataset`
WHERE customer_id IS NOT NULL;


-- Location

CREATE OR REPLACE VIEW `ecomercebrazil.v_geolocation_ref` AS
SELECT
  geolocation_zip_code_prefix,
  geolocation_city,
  geolocation_state,
  AVG(geolocation_lat) AS avg_lat,
  AVG(geolocation_lng) AS avg_lng
FROM `ecomercebrazil.olist_geolocation_dataset`
GROUP BY
geolocation_zip_code_prefix,
geolocation_city,
geolocation_state;




