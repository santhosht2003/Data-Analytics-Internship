CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1, '2023-01-05', 1200, 101),
(2, '2023-01-15', 800, 102),
(3, '2023-01-22', 1500, 103),

(4, '2023-02-03', 900, 101),
(5, '2023-02-11', 2500, 104),
(6, '2023-02-25', 700, 102),

(7, '2023-03-02', 1800, 103),
(8, '2023-03-10', 1100, 105),
(9,  '2023-03-21', 900, 101),

(10, '2023-04-05', 2300, 101),
(11, '2023-04-11', 500, 102),
(12, '2023-04-27', 700, 103),

(13, '2023-05-05', 1700, 104),
(14, '2023-05-13', 900, 105),
(15, '2023-05-24', 1200, 102),

(16, '2023-06-01', 1600, 101),
(17, '2023-06-08', 600, 103),
(18, '2023-06-18', 1500, 102),
(19, '2023-06-22', 800, 105),
(20, '2023-06-29', 1000, 104);

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(*) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;



