create database zero_analyst_sql;

drop table if exists retail_sales;

create table retail_sales(
transactions_id int,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),
age int,
category varchar(15),
quantiy int,
price_per_unit float,
cogs float,
total_sale float,
primary key(transactions_id));


ALTER TABLE retail_sales 
CHANGE COLUMN quantiy quantity int ;



select * from retail_sales;

-- select count(*) from retail_sales;


-- to find rows having null values

SELECT * FROM retail_sales
WHERE
transactions_id IS NULL
OR
sale_date IS NULL
OR
sale_time IS NULL
OR
gender IS NULL
OR
category IS NULL
OR
quantity IS NULL
OR
cogs IS NULL
OR
total_sale IS NULL;
