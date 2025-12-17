-- SALES & REVENUE ANALYSIS

-- Total sales revenue by year and country
WITH total_revenue AS (
    SELECT 
        c.country,
        EXTRACT(YEAR FROM o.orderdate) AS year,
        ROUND(SUM(od.quantityordered * od.priceeach), 0) AS revenue
    FROM customers c
    JOIN orders o 
        ON c.customernumber = o.customernumber
    JOIN orderdetails od
        ON o.ordernumber = od.ordernumber
    GROUP BY c.country, year
)
SELECT *
FROM total_revenue
ORDER BY revenue DESC;

-- Revenue by office
SELECT 
    e.officecode,
    ROUND(SUM(od.quantityordered * od.priceeach), 0) AS office_revenue
FROM orderdetails od
JOIN orders o ON od.ordernumber = o.ordernumber
JOIN customers c ON o.customernumber = c.customernumber
JOIN employees e ON c.salesrepemployeenumber = e.employeenumber
GROUP BY e.officecode
ORDER BY office_revenue DESC;

-- Revenue by employee
SELECT 
    e.employeenumber,
    ROUND(SUM(od.quantityordered * od.priceeach), 0) AS revenue
FROM orderdetails od
JOIN orders o ON od.ordernumber = o.ordernumber
JOIN customers c ON o.customernumber = c.customernumber
JOIN employees e ON c.salesrepemployeenumber = e.employeenumber
GROUP BY e.employeenumber
ORDER BY revenue DESC;
