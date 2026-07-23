USE perfect;
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID)
);

CREATE TABLE cus (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE ord (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES cus(CustomerID)
);

INSERT INTO categories VALUES 
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Books'),
(4, 'Clothing'),
(5, 'Sports');

INSERT INTO products VALUES 
(101, 'Laptop', 1, 999.99),
(102, 'Office Chair', 2, 150.00),
(103, 'SQL Guidebook', 3, 45.00),
(104, 'Running Shoes', 4, 89.99),
(105, 'Tennis Racket', 5, 120.00),
(106, 'Monitor', 1, 199.99),
(107, 'Desk', 2, 250.00),
(108, 'Python Handbook', 3, 55.00),
(109, 'Jacket', 4, 79.99),
(110, 'Basketball', 5, 29.99);

INSERT INTO cus VALUES 
(1, 'Alice', 'Smith', 'alice@email.com'),
(2, 'Bob', 'Jones', 'bob@email.com'),
(3, 'Charlie', 'Brown', 'charlie@email.com'),
(4, 'Dave', 'Davis', 'dave@email.com'),
(5, 'Eva', 'Green', 'eva@email.com'),
(6, 'Frank', 'White', 'frank@email.com'),
(7, 'Grace', 'Black', 'grace@email.com'),
(8, 'Hank', 'Hill', 'hank@email.com');

INSERT INTO ord VALUES 
(1001, 1, '2026-01-10', 1149.99),
(1002, 2, '2026-01-11', 699.99),
(1003, 3, '2026-01-12', 45.00),
(1004, 4, '2026-01-13', 89.99),
(1005, 5, '2026-01-14', 120.00),
(1006, 6, '2026-01-15', 199.99),
(1007, 7, '2026-01-16', 250.00),
(1008, 8, '2026-01-17', 55.00),
(1009, 1, '2026-01-18', 79.99),
(1010, 2, '2026-01-19', 29.99);
SELECT * FROM cus;
SELECT * FROM ord;
SELECT * FROM products;
SELECT * FROM categories;

SELECT 
CategoryId,
CategoryName
FROM categories
UNION
SELECT 
CustomerId,
firstName
FROM cus;

SELECT 
CategoryId,
CategoryName
FROM categories
UNION ALL
SELECT 
CustomerId,
firstName
FROM cus;
