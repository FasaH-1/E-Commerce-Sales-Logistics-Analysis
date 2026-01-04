-- check duplicates 

-- Customer
SELECT customer_id,COUNT(*) AS cnt FROM `ecomercebrazil.olist_customers_dataset`
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Order
SELECT order_id,COUNT(*) AS count_order FROM `ecomercebrazil.olist_orders_dataset`
GROUP BY order_id HAVING COUNT(*) > 1;


-- Order Itemms
SELECT order_id,order_item_id,COUNT(*) AS count_orde_items FROM `ecomercebrazil.olist_order_items_dataset`
GROUP BY order_id, order_item_id HAVING COUNT(*) > 1;


--product
SELECT product_id,COUNT(*) AS count_product FROM `ecomercebrazil.olist_products_dataset`
GROUP BY product_id HAVING COUNT(*) > 1;


-- product translete
SELECT product_category_name,COUNT(*) AS count_translete FROM `ecomercebrazil.product_category_name_translation`
GROUP BY product_category_name HAVING COUNT(*) > 1;


-- seller
SELECT seller_id,COUNT(*) AS count_seller FROM `ecomercebrazil.olist_sellers_dataset` 
GROUP BY seller_id HAVING COUNT(*) > 1;


-- payment
SELECT order_id,payment_sequential,COUNT(*) AS count_payments FROM `ecomercebrazil.olist_order_payments_dataset`
GROUP BY order_id, payment_sequential HAVING COUNT(*) > 1;


--location
SELECT geolocation_zip_code_prefix,COUNT(*) AS count_location FROM `ecomercebrazil.olist_geolocation_dataset`
GROUP BY geolocation_zip_code_prefix HAVING COUNT(*) > 1;

