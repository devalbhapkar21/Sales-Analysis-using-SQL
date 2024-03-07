-- Sales Analysis

-- Number of sales made in each time of the day per week

SELECT 
	time_of_day,
    COUNT(*) AS total_sales
FROM sales
WHERE day_name = 'Sunday'
GROUP BY time_of_day
ORDER BY total_sales DESC;


-- Which number of customer types brings the most revenue
SELECT 
	customer_type,
    SUM(total) AS total_rev
FROM sales
GROUP BY customer_type
ORDER BY total_rev DESC;


-- Which city has largest VAT
SELECT 
	city,
    AVG(VAT) AS avg_tax
FROM sales
GROUP BY city
ORDER BY avg_tax DESC;


-- Which customer type pays most tax
SELECT
	customer_type,
    AVG(VAT) AS vat
FROM sales
GROUP BY customer_type
ORDER BY vat;


-- ----------------------------------------CUSTOMER INFO------------------------------------------------------------------------------------

-- How many unique customer types
SELECT  
	customer_type,
    COUNT(customer_type) AS total_cust
FROM sales
GROUP BY customer_type
ORDER BY total_cust;


-- How many unique payment methods does data have
SELECT DISTINCT payment_method
FROM sales;


-- Which customr type buys the most
SELECT
	customer_type,
    COUNT(*) AS cust_cnt
FROM sales
GROUP BY customer_type
ORDER BY cust_cnt;


-- What is gender of most customers
SELECT
	gender,
    COUNT(*) AS total_cnt
FROM sales
GROUP BY gender
ORDER BY total_cnt DESC;


-- What is gender distribution per branch
SELECT
	branch,
	gender,
    COUNT(*) AS total_cnt
FROM sales
GROUP BY branch,gender
ORDER BY branch;


-- What time of day do customers give most rating
SELECT 
	time_of_day,
    AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC;


-- Which time of day do customers give most rating per branch
SELECT 
	time_of_day,
    branch,
    AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day,branch
ORDER BY branch;


-- Which day of the week has best avg rating
SELECT 
	day_name,
    AVG(rating) AS avg_rating
FROM sales
GROUP BY day_name
ORDER BY avg_rating DESC;

-- Which day of the week has best avg rating per branch
SELECT 
	branch,
    day_name,
    AVG(rating) AS avg_rating
FROM sales
GROUP BY branch,day_name
ORDER BY branch;




