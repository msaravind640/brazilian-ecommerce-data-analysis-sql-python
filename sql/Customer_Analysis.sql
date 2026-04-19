USE brazil_ecommerce;

-- Total unique customers

 SELECT 
	count(distinct customer_id) AS Total_Customers
 FROM customers_dataset;
 
--  Repeat vs one-time customers

with customer_orders AS (
	select 
		customer_id,
        count(order_id) as order_count
	from orders_dataset
    group by customer_id)
    
    select
		case
			when order_count>1 then 'Repeat'
            when order_count=1 then 'One Time'
		end as customer_type,
        count(*) as total_customers
        from customer_orders
        group by customer_type;
        
-- Top 10 states by number of customers

SELECT 
	customer_state AS State,
    COUNT(distinct customer_id) AS Customers
FROM customers_dataset
GROUP BY State
ORDER BY Customers DESC 
LIMIT 10;



