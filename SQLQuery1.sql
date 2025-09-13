--Data cleaning

SELECT *
FROM retail_sales
WHERE 
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    gender IS NULL OR
    category IS NULL OR
    quantiy IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;


DELETE FROM retail_sales
WHERE 
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    gender IS NULL OR
    category IS NULL OR
    quantiy IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;


--Data Exploration & Analytics
--How many sales we have ?
select SUM(total_sale) as Total_Sales
from retail_sales


--How many customer we have?
select COUNT(distinct(customer_id)) Total_customers
from retail_sales


--How Many sales for each category ?
select category,SUM(total_sale) Total_sales,COUNT(*) total_orders
from retail_sales
group by category 
order by Total_sales


--retrieve all sales amount we've made on 2022-11-05
select *,
       SUM(total_sale) OVER() AS total_sales
from retail_sales
where sale_date = '2022-11-05'


--retrieve all transactions where category is 'clothing' and quantity sold is more than 3 in nov_month ?
select
   *
from
    retail_sales
where
    MONTH(sale_date) = 11 
	and category='clothing'
	and quantiy >= 3


--find the avg age of our customers  who care about 'beauty' category ?
select AVG(age) AVG_Age
from retail_sales
where category='beauty'
 

 --retrieve all detailes where transactions are greater than 1000 ?
 select * from retail_sales
 where total_sale > 1000


 --find the total number of transactions made by each gender in each category?
 select category , gender , count(*) total_trans
 from retail_sales
 group by gender ,category
 order by category , total_trans desc



 --Calculate the AVG sale for each month,find out the best month in each year ?
 select * from
 (select 
	 AVG(total_sale) Avg_sales,
	 MONTH(sale_date)as month,
	 YEAR(sale_date)as year,
	 RANK() over(partition by YEAR(sale_date) order by AVG(total_sale) desc  ) ranked
	 from retail_sales
	 group by MONTH(sale_date),YEAR(sale_date) 
	  ) as t1

 where ranked =1



--select the top5 customers based on the highest sales ?
select top (5) customer_id,
SUM(total_sale)  Total_sales
from retail_sales
group by customer_id
order by Total_sales desc



--find the number of unique customers who purchaesd items from each category ?
select category ,
       count(distinct customer_id) num_customers
from retail_sales
group by category