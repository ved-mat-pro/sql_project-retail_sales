-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' 
-- and the quantity sold is more than 3 in the month of Nov—2022

select * from retail_sales
where category = 'Clothing'
and quantity > 3 
and date_format(sale_date , '%Y-%m' ) = '2022-11';

-- alternate
-- AND YEAR(sale_date) = 2022 
-- AND MONTH(sale_date) = 11;

-- alternate
-- AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';