PIZZA SALES ANALYSIS
1.	Project Overview
This project analyzes pizza sales transactional data to uncover trends, customer behavior, and performance metrics that support smarter decisions in sales, marketing, and operations.
Key questions answered:
•	What’s our total revenue, total pizzas sold, and average order value?
•	Which pizza categories and sizes perform best?
•	When do we see the highest sales (hourly, daily, monthly)?
•	Which 5 pizzas are top & bottom performers?
•	What is the average order value and average pizzas per order?
All findings are visualized in an interactive Tableau dashboard, and the full analysis is reproducible via Python and SQL.
2.	Dataset Summary
-	File : pizza_sales.csv
-	Source: kaggle
-	Rows: 48620
-	Coloumns: 12
-	Key fields:
•	order_id → Unique identifier for each order
•	pizza_id → Unique identifier for each pizza
•	pizza_name → Name of the pizza sold
•	quantity → Number of pizzas sold per order
•	total_price → Total revenue for each transaction
•	date, time → Order timestamp for time-based analysis
•	pizza_category, pizza_size → Attributes for pizza classification

3.	Data Analysis Using Python
•	Loaded pizza_sales.csv into a panda DataFrame
•	Checked data shape, data types, missing values, and duplicates
•	Calculated core KPIs:
•	Visualized chart distributions : 
-	Ingredient Analysis by hourly, daily, monthly trends
The pizza business aims to understand which ingredients are most frequently used across different pizza types.
Hourly trend : Using a line/bar chart showing sales by hour of the day
	By identifying the most common ingredients by hourly trend, the store can useful for staffing, ingredients, customer rush and operations planning

Daily trend : Using a line/bar chart showing sales by day of the week
	By identifying the most common ingredients by daily trend, the store can useful for staffing and operations planning.

Monthly trend : Using a line chart depicting monthly revenue and orders
	By identifying the most common ingredients by monthly trend, the store can useful for 1). Helps track seasonality and identify peak sales months 2). Summer months show higher sales due to promotional campaigns.
-	% of Sales by category
A bar chart representing revenue and quantity sold for each pizza category (Classic, Supreme, Veggie, Chicken).
	Helps identify customer preferences.
	Classic pizzas dominate sales, while Veggie has lower demand.

-	% of Sales by pizza size & category
A bar/ donut chart comparing sales revenue and quantity by pizza size (S, M, L, XL).
	Highlights demand distribution by size and assist inventory planning.
	Large (L) pizzas contribute the highest revenue.

-	Total pizza sold by pizza category
	Manage inventory by stocking ingredients used in the most popular categories.
	Evaluate if low-performing categories should be optimized, redesigned, or discontinued.

-	Top 5 best selling pizza by total order, quantity, total revenue
A horizontal bar chart showing pizzas with the highest sales (by revenue, orders or quantity).
	Supports promotional and menu strategy.

-	Bottom 5 best selling pizza by total order, quantity, total revenue
A horizontal bar chart showing pizzas with the lowest sales (by revenue, orders or quantity)
	Identifies products for improvement or possible removal from the menu.
 
4.	Key Insight
•	Classic pizzas dominate sales and Veggie has lowest demand
•	Large (L) size generates the highest revenue
•	Peak sales occur during lunch (12 – 2 PM) and on weekends
•	Summer months show higher sales (likely due to promotions)
•	The thai chicken pizza contributes to maximum revenue and The brie carre pizza has lowest revenue
•	The classic deluxe pizza contributes to maiximum quantity and total orders The brie carre pizza has lowest order

5.	Business Recommendations
The analysis provides a comprehensive view of pizza sales performance. Management can leverage these insights to:
•	Focus marketing on high-performing categories.
•	Optimize the menu by reconsidering least-selling pizzas.
•	Plan inventory and staffing based on sales peaks.
•	Monitor KPIs regularly through dashboards for continuous improvement.

📝 Note to Recruiters
I’m a data analyst still learning, but I care deeply about clean code, business relevance, and clear communication.
This project reflects my ability to work independently through the full analytics lifecycle: data → insight → action.
Feedback is always welcome! 
My reference:
YouTube: Data Tutorials


