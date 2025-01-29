-- Q.1O Write a SQL query to create each shift and number of orders (Example Morning < 12, Afternoon Between 12 & 17, Evening > 17)


select
count(transactions_id),

case
when (hour(sale_time)<12) then 'morning'
when (hour(sale_time)>=12 and hour(sale_time)<17) then 'afternoon'
else 'evening' 
end as shift
	
from retail_sales
group by shift;
