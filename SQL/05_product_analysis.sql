-- PRODUCT ANALYSIS

-- Products per product line
SELECT 
    p.productline,
    COUNT(p.productname) AS number_of_products
FROM products p
GROUP BY p.productline;

-- Top 3 products per product line by revenue
WITH ranked_products AS (
    SELECT 
        p.productline,
        p.productname,
        ROUND(SUM(od.quantityordered * od.priceeach), 0) AS revenue,
        RANK() OVER (
            PARTITION BY p.productline 
            ORDER BY SUM(od.quantityordered * od.priceeach) DESC
        ) AS product_rank
    FROM products p
    JOIN orderdetails od
        ON p.productcode = od.productcode
    GROUP BY p.productline, p.productname
)
SELECT *
FROM ranked_products
WHERE product_rank <= 3
ORDER BY productline, product_rank;
