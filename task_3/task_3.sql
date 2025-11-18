CREATE DATABASE ecommerce;
USE ecommerce;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    join_date DATE
);

INSERT INTO customers VALUES
(1, 'John Doe', 'john@example.com', 'Chennai', '2021-01-10'),
(2, 'Priya Singh', 'priya@example.com', 'Mumbai', '2021-03-15'),
(3, 'Rahul Kumar', 'rahul@example.com', 'Delhi', '2021-05-20'),
(4, 'Sara Mathew', 'sara@example.com', 'Bangalore', '2021-02-05');

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Headphones', 'Electronics', 3000),
(103, 'Shoes', 'Fashion', 2000),
(104, 'Watch', 'Fashion', 1500);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders VALUES
(1001, 1, 101, 1, '2021-06-12'),
(1002, 2, 102, 2, '2021-06-15'),
(1003, 3, 104, 1, '2021-06-16'),
(1004, 1, 103, 1, '2021-06-18'),
(1005, 4, 101, 1, '2021-06-20');

SELECT * FROM customers
WHERE city = 'Chennai';

SELECT * FROM products
ORDER BY price DESC;

SELECT category, SUM(price * quantity) AS total_revenue
FROM orders
JOIN products USING(product_id)
GROUP BY category;

SELECT o.order_id, c.name, p.product_name, o.quantity, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

SELECT c.customer_id, c.name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT p.product_name, o.order_id
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders o
    JOIN products p USING(product_id)
    GROUP BY customer_id
    HAVING SUM(price * quantity) >
           (SELECT AVG(price * quantity) FROM orders JOIN products USING(product_id))
);

SELECT 
    (SELECT SUM(price * quantity) FROM orders JOIN products USING(product_id)) /
    (SELECT COUNT(*) FROM customers) 
AS ARPU;

CREATE VIEW order_summary AS
SELECT c.name, p.product_name, p.price, o.quantity,
       (p.price * o.quantity) AS total_amount
FROM orders o
JOIN customers c USING(customer_id)
JOIN products p USING(product_id);

SELECT * FROM order_summary;

SELECT IFNULL(email, 'No Email Provided') AS fixed_email
FROM customers;

CREATE INDEX idx_customer ON orders(customer_id);




