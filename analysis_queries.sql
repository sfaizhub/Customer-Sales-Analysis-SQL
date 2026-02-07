-- View all customers
SELECT * FROM Customers;

-- View all orders
SELECT * FROM Orders;

-- Join customers and orders
SELECT 
    c.customer_name,
    o.order_id,
    o.total_amount
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;

-- Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- Customer-wise revenue
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id;

-- Top customers by spending
SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Repeat vs New customers
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    CASE
        WHEN COUNT(order_id) > 1 THEN 'Repeat'
        ELSE 'New'
    END AS customer_type
FROM Orders
GROUP BY customer_id;

-- High value customers
SELECT
    c.customer_name,
    SUM(o.total_amount) AS lifetime_value
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.total_amount) > 4000;
