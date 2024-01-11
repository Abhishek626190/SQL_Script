use classicmodels;
show tables;
desc employees;
select lastname from employees;
show create table employees;
select firstname,lastname,jobtitle from employees;
select * from employees;
select employeenumber,lastname,firstname,extension,email,officecode,reportsto,jobtitle 
from employees;

select * from employees
where officecode>4;
select * from employees
where employeenumber>1000;

select 1+1;
-- show current time of our system
select now();

select concat('Abhishek ',':',' Rai') as Name;

select concat(firstname," ", lastname)as fullname
from employees;

select * 
from employees 
order by employeenumber asc;

select * 
from employees
order by 
officecode desc,
reportsto asc;

desc customers;

select * 
from customers
order by customername desc;

select contactfirstname,contactlastname 
from customers
order by 
contactlastname desc,
contactfirstname asc;

desc orderdetails;

select productcode,ordernumber,quantityordered*priceeach
as TotalPrice
from orderdetails
order by
TotalPrice desc;

desc orders;

select ordernumber,status
from orders
order by field(status,
'in procees',
'cancelled',
'on hold',
'disputed',
'resolved',
'shipped');

select firstname,lastname,reportsto
from employees
-- where reportsto>0
order by 
reportsto;

desc employees;
-- using where clause
select * 
from employees
where jobtitle='Sales Rep';

select * 
from employees
-- where jobtitle='Sales Rep' or officecode=1;
where jobtitle='Sales Rep' and officecode=1;

select officecode
from employees
where officecode between 1 and 3;

select lastname
from employees
where lastname like '%son';
desc employees;

select * 
from employees
where lastname like'___';

select *
from employees
where officecode in (1,2,3);

select * 
from employees
where firstname like'%a';

select * 
from employees
-- where reportsto is not null;
where reportsto is null;
select * 
from employees
-- where jobtitle >'Sales Rep';
-- where jobtitle !='Sales Rep';
-- where jobtitle <> 'Sales Rep';
-- where officecode >5;
where officecode <=4;