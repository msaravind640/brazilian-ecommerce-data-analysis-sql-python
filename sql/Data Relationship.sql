use brazil_ecommerce;

SELECT 
	od.order_id, 
    od.order_status, 
    cd.customer_city, 
    cd.customer_state
FROM orders_dataset od
INNER JOIN customers_dataset cd
	ON od.customer_id = cd.customer_id
LIMIT 20;

SELECT 
    oid.order_id,
    pd.product_category_name,
    oid.price,
    oid.freight_value
FROM order_items_dataset oid
LEFT JOIN products_dataset pd
    ON oid.product_id = pd.product_id
LIMIT 20;

SELECT 
    oid.order_id,
    sd.seller_city,
    sd.seller_state,
    oid.price,
    oid.freight_value
FROM order_items_dataset oid
LEFT JOIN sellers_dataset sd
    ON oid.seller_id = sd.seller_id
LIMIT 20;


SELECT 
    od.order_id,
    od.customer_id,
    od.order_status,
    opd.payment_type,
    ord.review_score
FROM orders_dataset od
LEFT JOIN order_payments_dataset opd
    ON od.order_id = opd.order_id
LEFT JOIN order_reviews_dataset ord
    ON od.order_id = ord.order_id
LIMIT 20;

