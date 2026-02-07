# Customer Sales Analysis using SQL

## Project Overview
This is a beginner-friendly SQL project created to demonstrate basic to intermediate SQL skills for a Data Analyst role.
The project analyzes customer and sales data using structured queries.

This project is suitable for freshers with no prior work experience.

---

## Tools Used
- SQL (MySQL / SQL Server compatible)
- GitHub for project hosting

---

## Database Schema

### Customers Table
- customer_id (Primary Key)
- customer_name
- city
- signup_date

### Orders Table
- order_id (Primary Key)
- customer_id (Foreign Key)
- order_date
- total_amount

---

## Project Files Description

| File Name | Description |
|----------|-------------|
| schema.sql | Creates Customers and Orders tables |
| insert_data.sql | Inserts sample customer and order data |
| analysis_queries.sql | SQL queries for sales and customer analysis |
| basic_sql_practice.sql | Basic SQL queries for practice |

---

## Key SQL Concepts Used
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- JOIN
- HAVING
- COUNT, SUM
- CASE statement

---

## Analysis Performed
- Total revenue calculation
- Customer-wise spending analysis
- Top customers by total spending
- Repeat vs new customer identification
- High-value customers analysis

---

## How to Run This Project
1. Create a database in your SQL tool
2. Run `schema.sql`
3. Run `insert_data.sql`
4. Execute queries from `analysis_queries.sql`
5. Practice basic queries using `basic_sql_practice.sql`

---

## Author
Syed Faiz  
Aspiring Data Analyst | Fresher
