-- TASK 6: Sales Trend Analysis

-- Create table (optional if already exists)
create table orders (
    order_id int,
    order_date date,
    amount decimal(10,2),
    product_id int
);

-- Insert sample data
insert into orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-05', 1200.00, 101),
(2, '2024-01-10', 850.00, 102),
(3, '2024-01-15', 640.00, 103),
(4, '2024-02-02', 1500.00, 101),
(5, '2024-02-08', 980.00, 104),
(6, '2024-02-18', 760.00, 102),
(7, '2024-03-01', 2100.00, 105),
(8, '2024-03-05', 1750.00, 103),
(9, '2024-03-15', 900.00, 104),
(10,'2024-04-02', 2500.00, 101),
(11,'2024-04-10', 1900.00, 102),
(12,'2024-04-22', 1600.00, 105),
(13,'2024-05-03', 2800.00, 103),
(14,'2024-05-14', 2200.00, 104),
(15,'2024-05-25', 1950.00, 101);

-- Monthly sales trend
select
    year(order_date) as year,
    month(order_date) as month,
    sum(amount) as total_revenue,
    count(distinct order_id) as total_orders
from dbo.orders
group by year(order_date), month(order_date)
order by year, month;

-- Filter for year 2024
select
    month(order_date) as month,
    sum(amount) as total_revenue,
    count(distinct order_id) as total_orders
from dbo.orders
where year(order_date) = 2024
group by month(order_date)
order by month;


select *from dbo.orders;


