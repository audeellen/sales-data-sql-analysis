# Sales Data Analysis using SQL

This dataset contains transactional sales data from a retail store. Each row represents a single customer purchase and includes detailed information on the purchase, customer, and product. The data is suitable for exploratory data analysis, performance tracking, business reporting, and practicing SQL for business analyst roles.


| Column | Description | Data Type
| ------------- | ------------- | ----------
| invoice_id  | Unique identifier for each transaction.  |VARCHAR(30)
| branch | Store branch where the transaction occurred (e.g., A, B, C). |VARCHAR(5)
city | City where the branch is located. |VARCHAR(30)
customer_type| Type of customer (e.g., Member or Normal).|VARCHAR(30)
gender|Gender of the customer.|VARCHAR(10)
product_line|Category of product purchased (e.g., Fashion accessories, Food and beverages).|VARCHAR(100)
unit_price|Price per unit of the product.|DECIMAL(10, 2)
quantity|Number of units purchased.|INT
tax_pct| Tax applied to the transaction as a percentage.|FLOAT(6, 4)
total|Total amount paid by the customer including tax.|DECIMAL(10, 2)
date|Date of the transaction.|DATE
time| Time of the transaction.| TIMESTAMP
payment| Method of payment (e.g., Cash, Credit card, Ewallet).|DECIMAL(10, 2)
cogs| Cost of goods sold, or the total cost incurred for the products sold.|DECIMAL(10, 2) 
gross_margin_pct| Gross margin percentage earned on the transaction.|	FLOAT(11, 9)
gross_income| Profit earned on the transaction before deducting operational expenses.|DECIMAL(10, 2)
rating| Customer rating of the experience (scale of 1 to 10).|FLOAT(2, 1)


## Approaches Used

**Data Wrangling:** This is the first step where inspection of data is done to make sure **NULL** values and missing values are detected and data replacement methods are used to replace, missing or **NULL** values.

    1. Build a database
    2. Create table and insert the data.
    3. Select columns with null values in them. (There were no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.)


   

**Feature Engineering:** This will help use generate some new columns from existing ones.

    1. Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
    2. Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
    3. Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

## Insights from Sales Data

🏙️ **Top-Performing City: Naypyitaw,Myanmar**

Number of Unique Cities: The company operates in 3 distinct cities, 'Yangon', 'Naypyitaw' and 'Mandalay'.

Top-Performing City: Among the three cities in the dataset, ** Naypyitaw ** stands out as the top revenue generator, bringing in a total of $110,490.78. This figure exceeds the revenue of other cities, positioning Naypyitaw as a crucial driver of business performance.

    Implications:
    
    Customer Engagement: The higher revenue may reflect stronger customer engagement, brand presence, or favorable demographics in Naypyitaw
    
    Marketing Focus: This city could benefit from continued or increased marketing investment, loyalty programs, or new product launches to capitalize on its strong performance.
    
    Inventory Allocation: Products that sell well here should be prioritized in stock planning to prevent shortages and lost sales.




⏰ **Time of Day Analysis:** Peak Sales in the Evening

Insight: Based on the **feature-engineered** column time_of_day, which categorizes transactions into Morning, Afternoon, and Evening, the data reveals that the Evening period experiences the highest volume of sales.

This time-based trend suggests a clear customer behavior pattern: shoppers are most active later in the day, likely after work or school hours. This behavior is critical for both operational planning and marketing strategy.

    Implications for Business Operations:
    
    Digital Engagement Timing: Schedule promotional emails, SMS messages, or social media posts to hit inboxes just before the evening window to boost conversion rates.

    Staffing Optimization: Allocate more staff or extend cashier coverage during the evening to manage peak traffic and minimize wait times. This ensures smoother customer service and better in-store experiences during the busiest hours.
    
    Inventory Management:Ensure high-demand items are restocked and available before the evening rush. Replenishing stock too late could lead to missed sales.


📦 **Best-Selling Product Line (by Quantity):** Electrionic Accessories


The Electronic Accessories category emerged as the highest-selling product line in terms of units, with the largest total quantity sold across all sales. This suggests strong, consistent customer demand and wide appeal — possibly due to the popularity of tech gadgets, chargers, headphones, and other everyday electronics.

    Implications:
    
    High Demand Signals Mass Appeal: The popularity of this product line indicates it’s a staple for many customers. It likely includes essential or frequently replaced items, contributing to high turnover.
    
    Promotion & Merchandising: Since it sells well, this product line is ideal for bundling (e.g., “Buy X, get Y at 10% off”), featured product displays, or holiday promotions to drive even more volume.
    
    Inventory Management: Sales teams and branch managers should ensure that electronic accessories are never understocked. Stockouts here could mean missed sales opportunities and customer dissatisfaction.
    
    Sales Funnel Optimization: As this category brings customers in, it can be used as an anchor to drive additional sales — for example, by recommending related items or upsells at checkout.
    
    Regional Analysis Opportunity: If Electronic Accessories are especially popular in certain cities (e.g., Naypyitaw), regional teams can tailor inventory and marketing to maximize returns.

📦 **Best-Selling Product Line (by revenue):** Food and Beverages

The Food and Beverages category generated the highest total revenue ($56144.84) across all product lines, even though it wasn’t the highest in unit sales. This implies that products in this category are priced higher, purchased in larger quantities per transaction, or possibly have better margins.This infomation is valuable because customers may be more willing to spend on consumables, suggesting high perceived value or necessity.

  


    Implications:
    
    Sales Strategy Focus: This category should be prioritized in marketing and sales efforts. Use featured placement, upsell strategies, and loyalty programs to drive even greater value.
    
    Profit Margin Optimization: Analyze unit costs and gross income to ensure these high revenues translate into strong profitability. 
If margins are already high, this line could be a major profit engine.
    
    Branch-Level Tailoring: Identify which branches (e.g., Naypyitaw or others) are contributing most to this revenue and double down on tailored promotions in those areas.
    
    Consumer Behavior Insight: This could suggest frequent repeat purchases, making the category ideal for subscription-based offerings, combo deals, or digital coupons.
