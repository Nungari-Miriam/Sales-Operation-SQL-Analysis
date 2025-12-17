-- =========================
-- FINANCIAL & OPERATIONS ANALYSIS
-- =========================

-- Orders shipped late
SELECT 
    ordernumber,
    requireddate,
    shippeddate,
    (shippeddate - requireddate) AS delayed_days
FROM orders
WHERE shippeddate > requireddate
ORDER BY delayed_days DESC;

-- Percentage of orders shipped on time
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN shippeddate <= requireddate THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS percent_shipped_on_time
FROM orders;

-- Outstanding customer balances
WITH order_totals AS (
    SELECT 
        o.customernumber,
        ROUND(SUM(od.quantityordered * od.priceeach), 0) AS total_order_value
    FROM orders o
    JOIN orderdetails od
        ON o.ordernumber = od.ordernumber
    GROUP BY o.customernumber
),
payment_totals AS (
    SELECT
        customernumber,
        ROUND(SUM(amount), 0) AS total_payment
    FROM payments
    GROUP BY customernumber
)
SELECT 
    o.customernumber,
    o.total_order_value,
    COALESCE(p.total_payment, 0) AS total_payment,
    (o.total_order_value - COALESCE(p.total_payment, 0)) AS outstanding_balance
FROM order_totals o
LEFT JOIN payment_totals p
    ON o.customernumber = p.customernumber
ORDER BY outstanding_balance DESC;
