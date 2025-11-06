
select * from pizza_sales_excel_file

-- KPI
-- total revenue
select sum(total_price) as Total_Revenue from pizza_sales_excel_file

-- total pizza sold
select sum(quantity) as Total_Pizza_Sold from pizza_sales_excel_file

-- total orders
select COUNT(DISTINCT order_id) as Total_Order from pizza_sales_excel_file

-- Avarage Order Value (AOV)
select sum(total_price) / COUNT(DISTINCT order_id) as AOV from pizza_sales_excel_file

-- Avarage Pizza per order
select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Avarage_Pizza_Order from pizza_sales_excel_file


-- Daily Trend Sales
select DATENAME(DW, order_date) as Order_day, COUNT(DISTINCT order_id) as Total_Order
from pizza_sales_excel_file
Group by DATENAME(DW, order_date) 

-- Monthy Trend Sales
select DATENAME(MONTH, order_date) as Order_month, COUNT(DISTINCT order_id) as Total_Order
from pizza_sales_excel_file
Group by DATENAME(MONTH, order_date)
Order by Total_Order DESC -- tertinggi

-- Percentage of Sales by Category
select pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales_excel_file where month(order_date) = 1) as Percentage_Sales 
from pizza_sales_excel_file
where month(order_date) = 1 -- kalo mau cari bulan yg ingin dilihat
group by pizza_category

-- Persentage of Sales by Size
select pizza_size, cast(sum(total_price) as decimal(10,2)) as Total_Sales, cast(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales_excel_file where DATEPART(quarter, order_date) = 1) as decimal(10,2)) as Percentage_Sales 
from pizza_sales_excel_file
where DATEPART(quarter, order_date) = 1 -- untuk melihat perquartal
group by pizza_size
order by Percentage_Sales  DESC

-- Top 5 Best Selling Pizza by revenue
select TOP 5 pizza_name, sum(total_price) as Total_revenue
from pizza_sales_excel_file
group by pizza_name
order by Total_revenue DESC

-- Top 5 Best Selling Pizza by order
select TOP 5 pizza_name, count(distinct order_id) as Total_order
from pizza_sales_excel_file
group by pizza_name
order by Total_order DESC

-- Top 5 Best Selling Pizza by quantity
select TOP 5 pizza_name,  sum(quantity) as Total_quantity
from pizza_sales_excel_file
group by pizza_name
order by Total_quantity DESC

-- Bottom 5 Least Selling Pizza by revenue
select TOP 5 pizza_name, sum(total_price) as Total_revenue
from pizza_sales_excel_file
group by pizza_name
order by Total_revenue asc

-- Bottom 5 Least Selling Pizza by order
select TOP 5 pizza_name, count(distinct order_id) as Total_order
from pizza_sales_excel_file
group by pizza_name
order by Total_order ASC

-- Bottom 5 Least Selling Pizza by quantity
select TOP 5 pizza_name,  sum(quantity) as Total_quantity
from pizza_sales_excel_file
group by pizza_name
order by Total_quantity ASC