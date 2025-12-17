-- EMPLOYEE ANALYSIS

-- Employees by office location
SELECT officecode, COUNT(*) AS total_employees
FROM employees
GROUP BY officecode;

-- Employees reporting directly to Sales Manager
SELECT lastname, firstname, employeenumber, reportsto
FROM employees
WHERE reportsto = 1056;

-- Employee hierarchy (CEO downward)
WITH RECURSIVE emp_hierarchy AS (
    SELECT employeenumber, lastname, firstname, reportsto, jobtitle, 1 AS level
    FROM employees
    WHERE employeenumber = 1002  -- CEO

    UNION ALL

    SELECT e.employeenumber, e.lastname, e.firstname, e.reportsto, e.jobtitle, level + 1
    FROM employees e
    JOIN emp_hierarchy eh 
        ON e.reportsto = eh.employeenumber
)
SELECT *
FROM emp_hierarchy;
