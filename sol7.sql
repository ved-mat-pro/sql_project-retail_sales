-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

select * from
(
select
year(sale_date) as year,
month(sale_date) as month,
round(avg(total_sale) , 2) as avg_sale,
rank() over(partition by year(sale_date) order by avg(total_sale) desc) as r
from retail_sales
group by 1 ,2 
-- 1 means first selected parameter
) as t1
where r = 1;


