use ecommerce_project;

----Top 10 Profitable Products

SELECT Top 10
	product_name,
	SUM(profit) AS total_profit
FROM final_cleaned_dataset_v2
GROUP BY product_name
ORDER BY total_profit DESC;


---- Top 10 Customers by Sales

SELECT Top 10
	customer_name,
	SUM(sales) AS total_sales
FROM final_cleaned_dataset_v2
GROUP BY customer_name
ORDER BY total_sales DESC;


---Region-wise Total Sales

SELECT 
	region,
	SUM(sales) AS total_sales
FROM final_cleaned_dataset_v2
GROUP BY region
ORDER BY total_sales DESC;


---Category-wise Average Profit

SELECT 
	category,
	AVG(profit) AS average_profit
FROM final_cleaned_dataset_v2
GROUP BY category
ORDER BY average_profit DESC;


----Highest Discount Category

SELECT Top 1
	category,
	AVG(discount) AS average_discount
FROM final_cleaned_dataset_v2
GROUP BY category
ORDER BY average_discount DESC;


---- Orders with Negative Profit

SELECT *
FROM final_cleaned_dataset_v2
WHERE profit < 0;


---- Montly Sales Trend

SELECT
    DATENAME(MONTH, order_date) AS month_name,
    MONTH(order_date) AS month_number,
    SUM(sales) AS total_sales
FROM final_cleaned_dataset_v2
GROUP BY
    DATENAME(MONTH, order_date),
    MONTH(order_date)
ORDER BY MONTH(order_date);


--- Market-wise Revenue Analysis

SELECT
	market,
	SUM(sales) AS total_revenue
FROM final_cleaned_dataset_v2
GROUP BY market
ORDER BY total_revenue DESC;


--- Top-performing Sub-Categories

SELECT Top 10
	sub_category,
	SUM(profit) AS total_profit
FROM final_cleaned_dataset_v2 
GROUP BY sub_category
ORDER BY total_profit DESC;


--- Ship mode usage analysis

SELECT
    ship_mode,
    COUNT(*) AS total_orders
FROM final_cleaned_dataset_v2
GROUP BY ship_mode
ORDER BY total_orders DESC;
