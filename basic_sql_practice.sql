-- Find orders where total amount is greater than 2000
SELECT * FROM Orders
WHERE total_amount > 2000;

-- View orders sorted by highest amount first
SELECT * FROM Orders
ORDER BY total_amount DESC;

-- Top 2 highest value orders
SELECT * FROM Orders
ORDER BY total_amount DESC
LIMIT 2;

-- View unique cities of customers
SELECT DISTINCT city FROM Customers;

-- Count total number of customers
SELECT COUNT(*) AS total_customers
FROM Customers;
