CREATE DATABASE IF NOT EXISTS salesData;

CREATE TABLE IF NOT EXISTS sales(
	invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT(6,4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_pct FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    rating FLOAT(2, 1)
);

-- Feature Engineering ---
-- Adding coulmn called "time_of_day" --
SELECT time,
	    (CASE 
			WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
            WHEN time BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
            ELSE "Evening"
            END) AS time_of_day
FROM sales;

ALTER TABLE sales ADD COLUMN time_of_day VARCHAR (20);

UPDATE sales
SET time_of_day = (CASE 
			WHEN time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
            WHEN time BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
            ELSE "Evening"
            END);
            
-- Addinng a new column named "day_name" --
	

SELECT date
FROM sales;

SELECT date, DAYNAME(date)
FROM sales;

ALTER TABLE sales ADD COLUMN day_name VARCHAR(20);

UPDATE sales
SET day_name = (DAYNAME(date));


-- Adding a new column named "month_name" --

SELECT date, MONTHNAME(date)
FROM sales;

ALTER TABLE sales ADD COLUMN month_name VARCHAR(20);

UPDATE sales
SET month_name = MONTHNAME(date);


-- add season maybe or the quarter (Q1, Q2, etc) --
       
--  Questions and Answers --
-- How many unique cities does the data have? --

SELECT DISTINCT city
FROM sales;

SELECT COUNT( DISTINCT city)
FROM sales;

-- In which city is each branch? --

SELECT DISTINCT city, branch
FROM sales;

-- How many unique product lines does the data have? --

SELECT *
FROM sales;

SELECT COUNT( DISTINCT product_line) AS "Number of Product Lines"
FROM sales;

-- What is the most common payment method? --

SELECT MAX(payment)
FROM sales;

SELECT payment, (COUNT(payment)) AS "Count"
FROM sales
GROUP BY payment
ORDER BY "Count" DESC;


-- What is the highest selling product line? --



SELECT product_line, SUM(quantity) as "QTY"
FROM sales
GROUP BY product_line
ORDER BY QTY DESC;

-- What is the total revenue by month --

  SELECT *
FROM sales;

SELECT 
    month_name AS 'Month', SUM(total) AS 'Total Revenue'
FROM
    sales
GROUP BY month_name
ORDER BY 'Total Revenue' DESC;

-- What month had the largest COGS? --

SELECT *
FROM sales; 

SELECT month_name AS "Month", SUM(cogs) AS "COGS"
FROM sales
GROUP BY month_name
ORDER BY cogs DESC;

-- What product line had the largest revenue? --

SELECT product_line as "Product Line", SUM(total) AS "Total Revenue"
FROM sales
GROUP BY product_line
ORDER BY "Total Revenue" DESC;

-- What city has the largest revenue? --

SELECT city, SUM(total) 
FROM sales
GROUP by city
ORDER by SUM(total) DESC;

-- Which branch sold more products than average products sold?--

SELECT branch, SUM(quantity)
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG (quantity) FROM sales);

-- What is the average rating of each product line? --

SELECT product_line, AVG(rating) AS "Average Rating"
FROM sales
GROUP BY product_line
ORDER BY AVG(rating) DESC;

-- What are the number of sales made in each time of the day ? --
SELECT time_of_day, COUNT(*) AS total_sales
FROM sales
GROUP BY time_of_day
ORDER BY total_sales DESC;

-- Which of the customer types brings the most revenue?--
SELECT
	customer_type,
	SUM(total) AS total_revenue
FROM sales
GROUP BY customer_type
ORDER BY total_revenue;

-- How many unique costumer types does the data have?--
SELECT DISTINCT customer_type
FROM sales;

-- How many unique payment types does the data have?--

SELECT DISTINCT payment
FROM sales;
