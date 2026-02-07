CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

SELECT * FROM Orders WHERE total_amount > 2000;
SELECT DISTINCT city FROM Customers;
SELECT COUNT(*) FROM Customers;

SELECT
    c.city,
    SUM(o.total_amount) AS city_revenue
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY city_revenue DESC;

SELECT
    AVG(total_amount) AS avg_order_value
FROM Orders;

SELECT
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

SELECT
    customer_id,
    MIN(order_date) AS first_order_date
FROM Orders
GROUP BY customer_id;

SELECT
    c.customer_name
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT
    c.customer_name,
    SUM(o.total_amount) AS customer_revenue,
    ROUND(
        SUM(o.total_amount) * 100.0 /
        (SELECT SUM(total_amount) FROM Orders),
    2) AS revenue_percentage
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY revenue_percentage DESC;

SELECT
    FORMAT(order_date, 'yyyy-MM') AS order_month,
    SUM(total_amount) AS monthly_sales
FROM Orders
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY order_month;

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spent,
    CASE
        WHEN SUM(o.total_amount) >= 8000 THEN 'Gold'
        WHEN SUM(o.total_amount) >= 4000 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_segment
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
