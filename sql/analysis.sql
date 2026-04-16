/-KPI-/
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) AS profit_margin
FROM sales;

/-Category-/
SELECT 
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC

/-Region-/
SELECT 
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_profit DESC;

/-Discount-/
SELECT 
    discount,
    AVG(profit) AS avg_profit,
    AVG(sales) AS avg_sales
FROM sales
GROUP BY discount
ORDER BY discount;

/-Monthly Sales Trend-/
SELECT
	DATE_TRUNC('month', TO_DATE(oder_date, 'MM/DD/YYYY'))AS month,
	SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;