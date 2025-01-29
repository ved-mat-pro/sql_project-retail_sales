-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select
category,
count(distinct customer_id) as unique_customers
from retail_sales
group by category;