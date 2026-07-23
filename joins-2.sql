USE perfect;
CREATE TABLE customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    sales INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
INSERT INTO customers (id, first_name, country, score) VALUES
(1, 'Maria', 'Germany', 350),
(2, 'John', 'USA', 900),
(3, 'Georg', 'UK', 750),
(4, 'Martin', 'Germany', 500),
(5, 'Peter', 'USA', 0);
-- Disable constraint check
SET FOREIGN_KEY_CHECKS = 0;

-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
(1001, 1, '2021-01-11', 35),
(1002, 2, '2021-04-05', 15),
(1003, 3, '2021-06-18', 20),
(1004, 6, '2021-08-31', 10);

-- Re-enable constraint check
SET FOREIGN_KEY_CHECKS = 1;
SELECT * FROM customers;
SELECT * FROM orders;
/*
SELECT * 
FROM customers AS c
INNER JOIN orders AS o
WHERE c.id=o.customer_id;
*/
SELECT * 
FROM customers AS c
INNER JOIN orders AS o
ON c.id=o.customer_id;
SELECT 
c.first_name,
o.order_id,
o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id=o.customer_id;
SELECT 
c.first_name,
o.order_id,
o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id=o.customer_id;
SELECT 
c.first_name,
o.order_id,
o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id=o.customer_id;
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o
LEFT JOIN customers AS c 
    ON c.id = o.customer_id
UNION
SELECT 
    c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o
RIGHT JOIN customers AS c 
    ON c.id = o.customer_id;
SELECT * 
FROM customers
CROSS JOIN orders;
