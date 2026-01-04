-- Master Table ( FINAL FACT TABLE )
CREATE OR REPLACE VIEW `ecomercebrazil.v_master_sales` AS
SELECT
-- order
  o.order_status,
  o.order_purchase_timestamp,
  o.order_delivered_customer_date,
  o.order_estimated_delivery_date,

-- custommer 
  c.customer_id,
  c.customer_city,
  c.customer_state,

-- order item
  oi.order_item_id,
  oi.product_id,
  oi.seller_id,
  oi.price,
  oi.freight_value,
  (oi.price + oi.freight_value) AS item_total_value,

-- product
  p.product_category_name,
  t.product_category_name_englsih AS product_category,
  p.product_weight_g,

-- seller
  s.seller_city AS seller_city,
  s.seller_state AS seller_state,

-- payment
  pay.payment_type,
  pay.payment_installments,
  pay.payment_value,

-- delivery delay
  DATE_DIFF(
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    DAY
  ) AS delivery_delay_days

FROM `ecomercebrazil.v_order_items_clean` oi

LEFT JOIN `ecomercebrazil.v_orders_clean` o
  ON oi.order_id = o.order_id

LEFT JOIN `ecomercebrazil.v_customers_clean` c
  ON o.customer_id = c.customer_id

LEFT JOIN `ecomercebrazil.v_products_clean` p
  ON oi.product_id = p.product_id

LEFT JOIN `ecomercebrazil.product_category_name_translation` t
  ON p.product_category_name = t.product_category_name

LEFT JOIN `ecomercebrazil.v_sellers_clean` s
  ON oi.seller_id = s.seller_id

LEFT JOIN `ecomercebrazil.v_order_payments_clean` pay
  ON oi.order_id = pay.order_id;
