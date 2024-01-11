use classicmodels;
-- 1. find out all employees who work in usa 
select * 
from offices
where country='USA';

select officecode
from offices
where country='usa';


select *
from employees
where officecode in (select officecode
from offices
where country='USA');

use classicmodels;
-- 2. w.a.q. to find customer who has highest payment
select * from payments ;

select * from customers;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

select customernumber, max(amount)
from payments;

select customernumber
from payments
where amount = (select max(amount)
from payments);
 
 -- 3.w.a.q. to find customer whose payment is greater than average of payment.alter
 
 select avg(amount)
 from payments ;
 
 select customerNumber,amount
 from payments 
 where amount>(select avg(amount)
 from payments );
 
 -- 4. w.a.q. to find customer who have not placed any order
 select *
 from orders;
 
 select customernumber
 from orders;
 
 select customernumber,customername
 from customers
 where customernumber not in (select customernumber
 from orders);
 
 -- 5.find max,min,and avg number of items in sales order
 select ordernumber,count(ordernumber) as items
    from orderdetails
    group by ordernumber  ;
 
select max(items),min(items),floor(avg(items))
from 
	(select ordernumber,count(ordernumber) as items
    from orderdetails
    group by ordernumber ) as LinesItems;
    
-- w.a.q. to get product whose buyprice are greater than of  average buyprice 
-- of all the product in each product line.
select * 
from products;

select productname,avg(buyprice)
from products ;

select avg(buyprice)
from products
group by productline;

select productname,buyprice
from products 
where buyprice>(select avg(buyprice)
from products );

select productname,buyprice
from products p1
where buyprice>(select avg(buyprice)
from products 
where productline =p1.productline);
 
