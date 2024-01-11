use testcoursedb;

create view Employee_Contact
as
select first_name,last_name,email,phone_number,department_name
from employees
inner join departments using(department_id);

select * from Employee_Contact;

select *  
from employee_contact
where department_name='sales';

use classicmodels;

select customerNumber,customerName,phone,orderNumber,salesRepEmployeeNumber,
sum(quantityordered*priceeach) as Total
from customers 
inner join orders using(customerNumber)
inner join orderdetails using(orderNumber)
group by ordernumber 
;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

DROP VIEW CUSTOMER_VIEW;

create view Customer_view
as 
select customerNumber,customerName,phone,orderNumber,salesRepEmployeeNumber,
SUM(quantityordered*priceeach) as Sum
from customers 
inner join orders using(customerNumber)
inner join orderdetails using(orderNumber)
group by ordernumber;

select * from customer_view;

-- create view product whose buy price higher than average price of all product
select *
from products
where buyprice >(select avg(buyprice) from products );

create view Product_View 
as
select *
from products
where buyprice >(select avg(buyprice) from products );

 select * from product_view;

select customerName,count(orderNumber)
from customers
inner join orders
using(customerNumber)
group by  customerName;

create view CUST_DETAILS
(CUST_NAME,ORDERCOUNT)
AS
select customerName,count(orderNumber)
from customers
inner join orders
using(customerNumber)
group by  customerName;

SELECT * FROM CUST_DETAILS;

-- SIMPLE VIEW
CREATE VIEW EMP_DETAIL
AS 
SELECT EMPLOYEENUMBER,FIRSTNAME,LASTNAME
FROM EMPLOYEES;

SELECT * FROM EMP_DETAIL;

SELECT * FROM EMPLOYEES;

UPDATE EMP_DETAIL
SET FIRSTNAME="ABHSISHEK" 
WHERE EMPLOYEENUMBER=1002;

SELECT EMPLOYEENUMBER,FIRSTNAME,LASTNAME
FROM EMPLOYEES;

SHOW FULL TABLES;

SELECT table_name AS view_name,IS_UPDATABLE
FROM information_schema.views
WHERE table_schema = 'TESTCOURSEDB';

SELECT table_name AS view_name,IS_UPDATABLE
FROM information_schema.views6OI
WHERE table_schema = 'CLASSICMODELS';
