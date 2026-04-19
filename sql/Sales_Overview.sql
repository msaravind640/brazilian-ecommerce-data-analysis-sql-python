use brazil_ecommerce;

-- Total revenue (sum of payment_value)
-- Total number of orders
-- Average order value

select 
	count(distinct od.order_id) as total_orders,
    round(sum(opd.payment_value),2) as total_payment,
    round(avg(opd.payment_value),2) as avg_payment_per_order
from orders_dataset od
inner join order_payments_dataset opd
	on od.order_id = opd.order_id
where od.order_status='Delivered';


 -- Monthly revenue trend
with monthly_trend as (
	select 
		date_format(od.order_purchase_timestamp, '%Y-%m') as order_month,
        count(od.order_id) as total_orders,
        sum(opd.payment_value) as total_payment
	from orders_dataset od
    join order_payments_dataset opd
    on od.order_id = opd.order_id
    where od.order_status='Delivered'
    group by order_month)
    
	select 
		order_month,
        total_orders,
        total_payment,
        sum(total_payment) over(order by order_month) as running_total
        from monthly_trend
        order by order_month;

