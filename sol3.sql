-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select
category,
sum(total_sale) as total_sales_per_category,
count(customer_id)
from retail_sales
group by category;