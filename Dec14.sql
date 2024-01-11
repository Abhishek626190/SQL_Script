use testcoursedb;
select avg(salary),count(employee_id) as TotalEmp,department_id
from employees
group by department_id
having TotalEmp>10;
select *
 from employees;
 
 use classicmodels;
 select * from customers;
 select * from orders;
 
 select status,ordernumber
 from orders
 where status=null;