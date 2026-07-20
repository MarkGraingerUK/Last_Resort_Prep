SELECT * FROM fact_sales;

SELECT
    s.product_name, SUM(f.quantity_sold) AS total_units_sold
FROM fact_sales f
    JOIN dim_stock s ON f.product_id = s.product_id
GROUP BY s.product_name
ORDER BY total_units_sold DESC;

SELECT
    s.category,
    SUM(f.quantity_sold) AS total_units_sold,
    SUM(f.total_price) AS total_revenue,
    SUM(f.quantity_sold * s.unit_cost) AS total_cost,
    SUM(f.total_price - (f.quantity_sold * s.unit_cost)) AS total_profit
FROM fact_sales f
JOIN dim_stock s ON f.product_id = s.product_id
GROUP BY s.category
ORDER BY total_profit;

SELECT 
    s.product_name,
    s.category,
    s.reorder_level,
    SUM(f.quantity_sold) AS total_sold,
    (s.reorder_level - SUM(f.quantity_sold)) AS stock_gap
FROM fact_sales f
JOIN dim_stock s ON f.product_id = s.product_id
GROUP BY s.product_name, s.category, s.reorder_level
HAVING SUM(f.quantity_sold) > 5
ORDER BY stock_gap ASC;
