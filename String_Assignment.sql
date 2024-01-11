use classicmodels;
use testcoursedb;
select * from employees;
-- 1. Write a query to get the job_id and related employee's id
select job_id,group_concat(employee_id)
from employees
group by job_id;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- 2. Write a query to update the portion of the phone_number in the employees table, 
-- within the phone number the substring '124' will be replaced by '999'. Sample table: employees

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
select phone_number 
from employees;
update employees
set phone_number = replace (phone_number,'124','999')
where phone_number like '%124%';

update employees
set phone_number = replace(phone_number,'127','786')
where phone_number like '%127%';

update employees
set phone_number = replace (phone_number,'515.123.4567','626.190.4221')
where phone_number like '%515.123.4567%';

update employees
set last_name = replace(last_name,'King','kohli')
where last_name like '%King%';
update employees
set last_name = replace(last_name,'Kochhar','sharma')
where last_name like "Kochhar";

select * from employees;

-- 3. Write a query to get the details of the employees where 
-- the length of the first name greater than or equal to 8.
select *
from employees
where  length(first_name)>=8;

-- 4.Write a query to display leading zeros before maximum and minimum salary
select job_id,lpad(max_salary,7,0),lpad(min_salary,7,0)
from jobs;

select job_id,lpad(max_salary,6,'#'),lpad(min_salary,6,'#')
from jobs;

-- 5. Write a query to append '@example.com' to email field. Sample table: employees
select * from employees;
update employees
set email = concat(email,'@example.com');

-- 6. Write a query to get the employee id, first name and hire month. Sample table: employees
select employee_id,first_name,month(hire_date) as Month
from employees;

-- 7. Write a query to get the employee id, email id (discard the last three characters). Sample table: employees
select employee_id,substring(email,1,length(email)-3)
from employees;