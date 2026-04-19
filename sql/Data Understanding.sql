use brazil_ecommerce;
show tables;
describe customers_dataset;
describe order_items_dataset;
describe order_payments_dataset;
describe order_reviews_dataset;
describe orders_dataset;
describe products_dataset;
describe sellers_dataset;

select * from customers_dataset limit 5;
select * from order_items_dataset limit 5;
select * from order_payments_dataset limit 5;
select * from order_reviews_dataset limit 5;
select * from orders_dataset limit 5;
select * from products_dataset limit 5;
select * from sellers_dataset limit 5;

select count(*) from customers_dataset;
select count(*) from order_items_dataset;
select count(*) from order_payments_dataset;
select count(*) from order_reviews_dataset;
select count(*) from orders_dataset;
select count(*) from products_dataset;
select count(*) from sellers_dataset;

SELECT customer_id, COUNT(*)
FROM customers_dataset
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*)
FROM order_items_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*)
FROM order_payments_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT review_id, COUNT(*)
FROM order_reviews_dataset
GROUP BY review_id
HAVING COUNT(*) > 1;

SELECT order_id, COUNT(*)
FROM orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT product_id, COUNT(*)
FROM products_dataset
GROUP BY product_id
HAVING COUNT(*) > 1;

SELECT seller_id, COUNT(*)
FROM sellers_dataset
GROUP BY seller_id
HAVING COUNT(*) > 1;