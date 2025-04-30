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

date: Date of the transaction.

time: Time of the transaction.

payment: Method of payment (e.g., Cash, Credit card, Ewallet).

cogs: Cost of goods sold, or the total cost incurred for the products sold.

gross_margin_pct: Gross margin percentage earned on the transaction.

gross_income: Profit earned on the transaction before deducting operational expenses.

rating: Customer rating of the experience (scale of 1 to 10).

## Insights from Sales Data

## Insights from Sales Data

🏙️ **Top-Performing City: Naypyitaw,Myanmar**

Number of Unique Cities: The company operates in 3 distinct cities, 'Yangon', 'Naypyitaw' and 'Mandalay'.

Top-Performing City: Among the three cities in the dataset, ** Naypyitaw ** stands out as the top revenue generator, bringing in a total of $110,490.78. This figure exceeds the revenue of other cities, positioning Naypyitaw as a crucial driver of business performance.

    Implications:
    
    Customer Engagement: The higher revenue may reflect stronger customer engagement, brand presence, or favorable demographics in Naypyitaw
    
    Marketing Focus: This city could benefit from continued or increased marketing investment, loyalty programs, or new product launches to capitalize on its strong performance.
    
    Inventory Allocation: Products that sell well here should be prioritized in stock planning to prevent shortages and lost sales.



📦 **Best-Selling Product Line (by Quantity):** Electrionic Accessories


The Electronic Accessories category emerged as the highest-selling product line in terms of units, with the largest total quantity sold across all sales. This suggests strong, consistent customer demand and wide appeal — possibly due to the popularity of tech gadgets, chargers, headphones, and other everyday electronics.

    Implications:
    
    High Demand Signals Mass Appeal: The popularity of this product line indicates it’s a staple for many customers. It likely includes essential or frequently replaced items, contributing to high turnover.
    
    Promotion & Merchandising: Since it sells well, this product line is ideal for bundling (e.g., “Buy X, get Y at 10% off”), featured product displays, or holiday promotions to drive even more volume.
    
    Inventory Management: Sales teams and branch managers should ensure that electronic accessories are never understocked. Stockouts here could mean missed sales opportunities and customer dissatisfaction.
    
    Sales Funnel Optimization: As this category brings customers in, it can be used as an anchor to drive additional sales — for example, by recommending related items or upsells at checkout.
    
    Regional Analysis Opportunity: If Electronic Accessories are especially popular in certain cities (e.g., Naypyitaw), regional teams can tailor inventory and marketing to maximize returns.

