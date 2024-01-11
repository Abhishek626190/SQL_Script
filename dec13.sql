use classicmodels;
 select * from customers;
 desc customers;
-- 1.find city wise customer count
select count(customerName)
from customers
group by city;

desc orderdetails;
desc orders;
-- 2.find out year wise count of order number ,orderdetails as year
select year(orderdate) as year,
count(orderNumber)
from orders
group by year;

select distinct orderdate  
from orders;

desc products;
select * from products;

select productname,avg(buyprice)
from products
group by productname;

desc orders;
select * from orders;

select distinct status
from orders;

select  distinct lastname
from employees;

select state 
from customers;

select  distinct state
from customers;

-- distinct with mutiple columns
select distinct city,state
from customers
where state is not null;

-- group by clause
select status 
from orders
group by status;

-- group by with aggregate function
select status,
count(*)
from orders
group by status;

select *,
sum(quantityordered*priceeach) as Total
from orderdetails
group by ordernumber;

select * 
from orders
group by ordernumber;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
 
-- limit clause
select 
customername,customernumber,creditlimit
from customers
order by creditlimit desc 
limit 1,5;

select 
customername,customernumber,creditlimit
from customers
order by creditlimit desc 
limit 5;

-- find avg buy price of all
-- the products in prducts table
select avg(buyprice)
from products;

-- aggregate function
desc products;
select * from products;

-- find number of products in product table
select  productname,
count(productcode)
from products
group  by productcode;

-- find number of products in a products line
-- as per desc order of product line
use classicmodels;
select productline,count(productcode) as count
from products
group by productline
 -- order by count desc;
  order by productline desc;



-- write query to get sum of price*quantity
-- as per product code
use classicmodels;
select * from products;
select productname, sum(msrp*quantityinstock) as TotalSum
from products
group by productcode;

-- write query to get highest buyprice from product 
select  max(buyprice)
from products;

select min(buyprice) as Min
from products
group by productline
order by Min desc;
 

-- find avg buy price for each productline
use classicmodels;
 
select avg(buyprice)
from products
group by productline;

-- write query to get lowest buyprice from product 
select min(buyprice)
from products;
-- 
select max(buyprice) as Max
from products
group by productline
order by Max desc;

