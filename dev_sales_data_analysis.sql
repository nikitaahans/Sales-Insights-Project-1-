# Data Analysis business questions 
-- 1. Show all customer records
select * from sales.customers;

-- 2. Show total number of customers
select count(*) from sales.customers;

-- 3. Show transactions for Chennai market (market code for chennai is Mark001
select * from sales.transactions where market_code = 'Mark001';

-- 4. Show distrinct product codes that were sold in chennai
select distinct product_code from sales.transactions where market_code = 'Mark001';

-- 5. Show transactions where currency is US dollars
select * from sales.transactions where currency = 'USD';

-- 6. Show transactions in 2020 join by date table
select * from sales.date d join sales.transactions t on d.date = t.order_date where d.year = 2020;

-- 7. Show total revenue in year 2020
select sum(t.sales_amount) from sales.date d join sales.transactions t on d.date = t.order_date where d.year = 2020;

-- 8. Show total revenue in year 2020, January Month
select sum(t.sales_amount) from sales.date d join sales.transactions t on d.date = t.order_date where d.year = 2020 and d.month_name = 'January';

-- 9. Show total revenue in year 2020 in Chennai
select sum(t.sales_amount) from sales.date d join sales.transactions t on d.date = t.order_date where d.year = 2020 and t.market_code = 'Mark001';


select distinct(currency) from sales.transactions; -- we have two types of INR values that is 'INR\r' and 'INR'

select count(*) from sales.transactions where currency = 'INR\r'; -- 150000 records

select count(*) from sales.transactions where currency = 'INR'; -- 279 records

-- DUPLICATES CHECK
select count(*) from sales.transactions where currency = 'USD\r'; -- 2 records

select count(*) from sales.transactions where currency = 'USD'; -- 2 records

-- Since majority of records have '/r' character so we can filter out other records and after observing USD records, they actually have duplicates in records. 


