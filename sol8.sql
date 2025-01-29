-- Q.8 Write a SQL query to find the top 5 customers based on the highest totat sales

select
distinct customer_id,
sum(total_sale)
from retail_sales
group by customer_id
order by 2 desc limit 5;