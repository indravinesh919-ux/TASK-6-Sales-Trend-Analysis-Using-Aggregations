select 
    month(order_date) as month,
    sum(amount) as total_revenue,
    count(distinct order_id) as total_orders
from dbo.orders
where year(order_date) = 2024
group by month(order_date)
order by month;

