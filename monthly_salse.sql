select 
	year (order_date) as year,
	month (order_date) as month,
	sum(amount) as total_revenue,
	count(distinct order_id) as total_orders
	from dbo.orders
	group by year(order_date), month(order_date)
	order by year, month;



