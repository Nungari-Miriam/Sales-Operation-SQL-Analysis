# Sales, Operations & Performance Analysis Using SQL (PostgreSQL)

## Project Overview
This project showcases business focused data analysis using **SQL (PostgreSQL)** to extract insights from a relational sales database.  
The analysis answers clearly defined business questions related to **employees, customers, revenue, products, operations, and time-based trends** using structured, well documented SQL queries.

The objective of the project is to translate business questions into accurate, maintainable and insight driven queries that support data driven decision making.

---

## About the Data
The dataset used in this project was provided as part of the **PLP Scholarship program** for learning purposes.

- The data represents a fictional company with information on:
  - Employees and organizational structure
  - Offices and geographic presence
  - Customers and credit limits
  - Orders, payments, and shipments
  - Products and product lines

📁 The dataset used for this analysis can be found here:  
➡️ **[PLP Scholarship Dataset](https://github.com/Nungari-Miriam/Sales-Operation-SQL-Analysis/tree/main/Data)**

---

## Tools & Technologies
- **Database:** PostgreSQL  
- **Development Environment:** pgAdmin
- **Version Control:** Git & GitHub
  
---

## Business Questions Addressed

### Basic Business Metrics
- How many employees does the organization currently have?
- How many active customers does the organization serve?

### Employee & Organizational Structure
- How are employees distributed across office locations?
- Which employees report directly to the Sales Manager?
- What is the organizational reporting hierarchy starting from the CEO?

### Office & Geographic Presence
- Which countries or territories have the highest number of office locations?

### Customer Overview
- How are customers distributed by country and city?
- How many customers does each sales representative manage?
- What is the average customer credit limit by country?

### Sales & Revenue Performance
- What is the total sales revenue by year and by customer country?
- Which offices generate the highest revenue?
- Which countries contribute the most to overall revenue?
- Which employees generate the highest revenue through their assigned customers?

### Product Performance
- How many products exist within each product line?
- What are the top 3 revenue-generating products in each product line?

### Time-Based Sales Trends
- How does monthly sales revenue trend over time?
- What is the cumulative revenue growth within each year?
- How does revenue change year-over-year across office locations?

### Operations & Order Fulfillment
- Which orders were shipped later than their required delivery date?
- What percentage of orders are shipped on time?

### Financial Health
- Which customers have outstanding balances after payments are applied?

---

## Insights
The analysis revealed several meaningful insights, including:

- Revenue is unevenly distributed across countries and offices, with a small number of regions contributing a significant share of total sales.
- Certain sales representatives manage a disproportionately high number of customers and generate higher revenue.
- A small subset of products consistently drives the majority of revenue within each product line.
- Monthly sales trends indicate seasonality, with noticeable revenue fluctuations across the year.
- While most orders are shipped on time, delayed shipments highlight potential operational inefficiencies.
- Some customers have outstanding balances, indicating opportunities for improved credit control and payment follow-up.

---

## Key Insights

### Revenue Performance & Growth
- Total revenue increased from **$3.32M in 2003** to **$4.52M in 2004**, representing approximately **36% year-over-year growth**.
- Revenue exhibits strong **seasonality**, with **Q4 consistently outperforming other quarters**.
- **November is the peak revenue month**, generating **$988K in Nov 2003** and **$979K in Nov 2004**.
- In **2005**, the business generated **$1.77M within the first five months**, with **May 2005 ($441K)** being the highest single month recorded.

---

### Geographic Revenue Distribution
- The **USA is the dominant market**, contributing **$3.27M (~36%)** of total revenue.
- The **top three countries (USA, Spain, France)** collectively contribute approximately **55% of overall revenue**.
- Secondary markets such as **Australia ($563K)** and **New Zealand ($477K)** show steady performance and growth potential.

---

### Sales Team Performance & Efficiency
- **Gerard Hernandez** generated **$1.26M from 7 customers**, averaging **~$180K per customer**.
- **Leslie Jennings** generated **$1.08M from 6 customers**, also averaging **~$180K per customer**.
- **Pamela Castillo** managed the highest number of customers (10) but generated **$868K**, averaging **~$87K per customer**.
- This reveals an **inverse relationship between customer count and revenue efficiency**, where fewer high-value accounts outperform larger portfolios.

---

### Office Performance & Productivity
- **Office Code 4** is the top-performing office, generating **$3.08M (~37% of total company revenue)** with **5 employees**.
- This translates to approximately **$617K revenue per employee**, more than **2×** the productivity of several other offices.
- **Office Code 5** underperforms with **$457K total revenue**, indicating uneven operational efficiency across offices.

---

### Product Portfolio & Revenue Drivers
- **Classic Cars** dominate the catalog with **38 products**, making it the largest product line.
- The **1992 Ferrari 360 Spider (Classic Cars)** is the highest revenue-generating product at **$277K**.
- Despite having only **3 products**, the **Trains** product line averages approximately **$63K revenue per product**, outperforming several larger product lines on a per-product basis.
- Revenue follows a **Pareto-style distribution**, where a small subset of products drives a significant share of total sales.

---

### Operational & Financial Risk Indicators
- **95.4% of orders are shipped on time**, leaving **4.6% delayed**, which may affect customer satisfaction.
- Outstanding balances among top customers total approximately **$680K**.
- Several customers have **more than 10% of their total order value outstanding**, indicating potential **credit and cash-flow risk**.

---

## Strategic Recommendations

1. **Optimize Sales Team Structure**  
   - Replicate strategies used by top performers managing fewer high-value customers to improve overall revenue efficiency.

2. **Scale High Performing Offices**  
   - Analyze best practices from **Office Code 4** and apply similar operational models to underperforming offices.

3. **Expand High Efficiency Product Lines**  
   - Consider expanding the **Trains** product line due to its strong revenue-per-product performance.

4. **Improve Credit & Collections Controls**  
   - Introduce stricter payment terms or monitoring for customers with **>10% outstanding balances**.

5. **Reduce Geographic Revenue Concentration**  
   - Invest in growing secondary markets to reduce dependency on the USA market.

6. **Enhance Logistics Performance**  
   - Target improving on-time shipping from **95.4% to 98%+** to strengthen customer satisfaction and retention.

---

## Conclusion

This project demonstrates how SQL can be used to support business decision making by converting operational data into clear and measurable insights. Using PostgreSQL, the analysis covers revenue trends, sales performance, product contribution, geographic distribution and operational efficiency.

The results highlight key drivers of growth, areas of risk and opportunities for improvement across sales, operations and finance. The project shows how data can be used to inform planning, performance monitoring and strategic actions.



---
