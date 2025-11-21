# Task 6 — Sales Trend Analysis Using MySQL

##  Objective
The goal of this task is to analyze monthly sales trends using SQL aggregation functions.  
We calculate:
- Monthly Revenue  
- Monthly Order Volume  
- Top-performing months  
- Combined trend table  

This task demonstrates how SQL can be used to analyze time-based business trends.

---

## Dataset
Table Name: **online_sales**

Columns used:
- `order_id`
- `order_date`
- `amount`
- `product_id`

20 sample records were added manually to simulate sales data across 6 months.

---

## Tools Used
- MySQL Server
- MySQL Workbench
- SQL Queries (DDL + DML + Aggregations)

---

 ## Insights

- Monthly sales show clear growth over time.
- June recorded the highest revenue and highest number of orders.
- February and March also showed strong performance.
- Early months (Jan–Feb) had moderate activity but steady order counts.
- Using GROUP BY and SUM() provides clear month-wise trend visibility.

---

 ## Files Included

- task_6.sql — SQL script with all queries
- task screenshots — Output screenshots
- README.md — Documentation
