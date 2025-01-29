-- Q. 6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select
category,
gender,
count(distinct transactions_id) as number_of_transactions
from retail_sales
group by category , gender;