-- TIME SERIES ANALYSIS

-- Monthly sales and cumulative revenue
WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', o.orderdate) AS month_start,
        EXTRACT(YEAR FROM o.orderdate) AS year,
        EXTRACT(MONTH FROM o.orderdate) AS month,
        ROUND(SUM(od.quantityordered * od.priceeach), 0) AS monthly_revenue
    FROM orders o
    JOIN orderdetails od
        ON o.ordernumber = od.ordernumber
    GROUP BY DATE_TRUNC('month', o.orderdate), year, month
)
SELECT
    year,
    month,
    monthly_revenue,
    SUM(monthly_revenue) OVER (
        PARTITION BY year ORDER BY month
    ) AS cumulative_revenue_yearly
FROM monthly_sales
ORDER BY year, month;

-- Year-over-year revenue by office
SELECT 
    e.officecode,
    EXTRACT(YEAR FROM o.orderdate) AS year,
    ROUND(SUM(od.quantityordered * od.priceeach), 0) AS office_revenue
FROM orderdetails od
JOIN orders o ON od.ordernumber = o.ordernumber
JOIN customers c ON o.customernumber = c.customernumber
JOIN employees e ON c.salesrepemployeenumber = e.employeenumber
GROUP BY e.officecode, year
ORDER BY office_revenue DESC;
