use classicmodels;
-- find order along with its details

-- without using join
select o.ordernumber,productcode,quantityordered,priceeach,orderdate,status,customernumber
from orders o, orderdetails o1
where o.ordernumber=o1.ordernumber;

-- innner join using
select o.ordernumber,productcode,quantityordered,priceeach,orderdate,status,customernumber
from orders o
inner join orderdetails using (ordernumber); 

select  count(*)
from orders o
inner join orderdetails using (ordernumber); 

-- inner join on
select o.ordernumber,productcode,quantityordered,priceeach,orderdate,status,customernumber
from orders o
inner join orderdetails 
on orderdetails.ordernumber=o.ordernumber;

select * from orders;
select * from customers;
select * from orderdetails;

select count(*),ordernumber
from orderdetails
group by ordernumber;

-- inner join using more than one table
use testcoursedb;

select ordernumber,productcode,orderdate,status,customernumber,customername
from orders o
inner join orderdetails using (ordernumber)
inner join customers using (customernumber);

-- find all countries information along with locations information
select c.country_id,country_name,l.country_id,city
from countries c
left join locations l
on c.country_id=l.country_id;

-- find the country that does not have any locations in the location
select country_name,c.country_id
from countries c
left outer join locations l 
using (country_id)
where l.country_id is not null;

-- 
select r.region_name,c.country_name,l.street_address,l.city
from regions r
left join countries c 
on c.region_id=r.region_id
left join locations l on l.country_id =c.country_id
where c.country_id in ("US","UK","CN");

use classicmodels;
-- find employee name with its manager name
select e.employeenumber,concat(e.firstname,'',e.lastname) as Employee,
e.reportsTo as ManagerNumber ,concat(m.firstname,'',m.lastname) as Manager
from employees e
inner join employees m
on e.reportsto=m.employeenumber;

-- find employee numbers and customer number where employee work as a slaesrepnumber
select employeenumber,customernumber
from customers
right join employees 
on salesrepEmployeenumber=employeenumber
order by employeenumber;