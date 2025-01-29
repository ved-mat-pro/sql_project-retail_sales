-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select
category,
round(avg(age) , 0)
from retail_sales
group by category;