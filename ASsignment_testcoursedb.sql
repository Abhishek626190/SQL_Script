create database testcoursedb;
use testcoursedb;

desc employees;
select concat(first_name," ",last_name) as FirstName
from employees;
-- 1. Write a query to display the names (first_name, last_name) 
-- using alias name “First Name", "Last Name"
select first_name as First_Name ,last_name as Last_Name
from employees;

select distinct
department_id 
from employees;

desc employee;
-- 2. Write a query to get unique department ID from employee table.
 select distinct 
 dept_id
 from employee;
 
 -- 3. Write a query to get all employee details from the employee 
 -- table order by first name, descending.
 select * 
 from employees
 order by 
 first_name desc;
 
 -- 5. Write a query to get the employee ID, names (first_name, last_name),
 -- salary in ascending order of salary.
 select employee_id,first_name,last_name,salary
 from employees
 order by 
 salary asc;
 
 -- 4. Write a query to get the names (first_name, last_name), salary, PF of all the employees 
 -- (PF is calculated as 12% of salary).
 select first_name,last_name,salary*0.12 as "PF"
 from employees;
 
 -- 6. Write a query to get the total salaries payable to employees
 
 select sum(salary) as "Total Payable Amount "
 from employees;
 
 -- 7. Write a query to get the maximum and minimum salary from employees table.
 select max(salary) as "Max Salary "
 from employees;
 select min(salary) as "Max Salary "
 from employees;
 select max(salary),min(salary) as "Max Salary ","Min Salary"
 from employees;
 desc employees;
 
 -- Write a query to get the average salary and
 -- number of employees in the employees table. 9.
 select 
 count(employee_id),
 avg(salary)
 from employees;
  -- Write a query to get the number of 
  -- employees working with the company
  select count(employee_id)
  from employees;
  
  -- 10. Write a query to get the number of 
  -- jobs available in the employees table
  desc employees;
  
  select count(distinct job_id)
  from employees;
  
  -- 11. Write a query get all first name from employees table in upper case.
  select upper(first_name)
  from employees;  

-- 12. Write a query to get the first 3 characters of 
-- first name from employees table.
select substring(first_name,1,3)
from employees;

-- 13. Write a query to calculate 171*214+625.
select 171*214+625 as "Result ";

-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) 
-- of all the employees from employees table.
select first_name ,last_name
from employees ;
  
-- 16. Write a query to get the length of the employee names (first_name, last_name) 
-- from employees table
select length(first_name),length(last_name)
from employees;

-- 17. Write a query to check if the first_name fields 
-- of the employees table contains numbers.
 select first_name
 from employees
 where first_name regexp'[0-9]';
 
 -- 18. Write a query to select first 10 records from a table.
 select * 
 from employees
 limit 10;
 
 -- 19. Write a query to get monthly salary (round 2 decimal places) 
 -- of each and every employee Note : Assume the 
 -- salary field provides the 'annual salary' information.
 select first_name,last_name,round(salary/12,2) as "Monthly Salary"
 from employees;
 
 -- 15. Write a query to get first name from employees table 
 -- after removing white spaces from both side.
 select trim(first_name)
 from employees;
 