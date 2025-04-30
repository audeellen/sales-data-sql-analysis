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

