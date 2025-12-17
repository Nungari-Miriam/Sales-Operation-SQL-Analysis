-- CUSTOMER ANALYSIS

-- Customers by country and city
SELECT country, city, COUNT(*) AS customers
FROM customers
GROUP BY country, city;

-- Average customer credit limit per country
SELECT country, ROUND(AVG(creditlimit), 0) AS avg_credit_limit
FROM customers
GROUP BY country;

-- Sales representatives handling customers
SELECT 
    e.employeenumber,
    e.lastname,
    e.firstname,
    COUNT(c.customernumber) AS total_customers
FROM employees e
JOIN customers c
    ON e.employeenumber = c.salesrepemployeenumber
GROUP BY e.employeenumber
ORDER BY total_customers DESC;
