-- Generic Analysis

-- How many unique cities in the data
SELECT DISTINCT city
FROM sales;

-- In which city is each branch
SELECT
	DISTINCT city,
    branch
FROM sales;


-- Product Analysis

-- How many unique product lines in the data
SELECT 
	COUNT(DISTINCT product_line)
FROM sales;

-- What is the most common payment method
SELECT 
	payment_method,
    COUNT(payment_method) AS cnt
FROM sales
GROUP BY payment_method
ORDER BY cnt DESC;

-- What is the most selling product line
SELECT 
	product_line,
    COUNT(product_line) AS cnt
FROM sales
GROUP BY product_line
ORDER BY cnt DESC;

-- What is the total revenue by month
SELECT 
	month_name AS month,
    SUM(total) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;


-- What month had largest COGS(Cost of goods sold)

SELECT 
	month_name AS month,
    SUM(cogs) AS cogs
FROM sales
GROUP BY month_name
ORDER BY cogs DESC;


-- What product line had the largest revenue

SELECT
	product_line,
    SUM(total) AS total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;


-- What is the city with largest revenue

SELECT 
	city,
    branch,
    SUM(total) AS total_revenue
FROM sales
GROUP BY city,branch
ORDER BY total_revenue DESC;


-- What product line had the largest VAT(value added tax)

SELECT 
	product_line,
    AVG(vat) AS avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC;



-- Which branch sold more products than average products sold
SELECT 
	branch,
    SUM(quantity) AS qty
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);


-- What is the most common product line by gender
SELECT 
	gender,
    product_line,
    COUNT(gender) AS total_cnt
FROM sales
GROUP BY gender,product_line
ORDER BY total_cnt DESC;


-- What is average rating of each product line
SELECT 
	product_line,
    ROUND(AVG(rating),2) AS avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;
