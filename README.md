# TASK-6-Sales-Trend-Analysis-Using-Aggregations
Sales trend analysis was performed using SQL to calculate monthly revenue and order volume. Aggregation functions and date-based grouping were used to identify time-based patterns in online sales data.

# TASK 6: Sales Trend Analysis Using Aggregations

## 📌 Objective

The objective of this task is to analyze **monthly sales trends** by calculating total revenue and order volume using SQL aggregation functions.

---

## 🛠 Tools Used

* **SQL Server Management Studio (SSMS)**
* **SQL (T-SQL)**

---

## 📂 Dataset Description

**Database:** `online_sale`
**Table:** `orders`

### Table Structure

| Column Name | Data Type     | Description                |
| ----------- | ------------- | -------------------------- |
| order_id    | INT           | Unique order identifier    |
| order_date  | DATE          | Date when order was placed |
| amount      | DECIMAL(10,2) | Order revenue amount       |
| product_id  | INT           | Product identifier         |

---

## 🧾 Sample Data

The dataset contains sample online sales records for the year 2024, distributed across multiple months to enable time-based analysis.

---

## 📊 SQL Queries Used

### 1️⃣ Monthly Sales Trend (Year & Month)

```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
```

### 2️⃣ Monthly Sales Trend for 2024 Only

```sql
SELECT
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE YEAR(order_date) = 2024
GROUP BY MONTH(order_date)
ORDER BY month;
```

---

## 📈 Results Summary

* Monthly revenue and order counts were successfully calculated
* Each month shows aggregated sales performance
* Results clearly highlight increasing revenue trends over time

---

## 🔍 Key Insights

* SQL aggregation functions like `SUM()` and `COUNT()` are effective for trend analysis
* Grouping by month helps identify seasonal patterns
* Filtering by year allows focused time-period analysis

---

## ✅ Outcome

This task demonstrates the ability to:

* Group data by time periods
* Perform revenue and volume analysis
* Write efficient SQL aggregation queries
* Interpret time-based business trends

---

## 📎 Deliverables

* SQL script file (`task6_sales_trend.sql`)
* Query result screenshots
* This README documentation

---

✅ **Task 6 completed successfully using SQL Server Management Studio**
