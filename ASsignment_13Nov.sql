use classicmodels;

desc employees;
select *
from employees;

-- 1. Write a query to list the number of
--  jobs available in the employees table
 select distinct count(jobtitle)
 from employees
 where jobtitle is not null;
 
 use testcoursedb;
 select * from employees;
 -- 2. Write a query to get the total
 -- salaries payable to employees.
 select sum(salary) as TotalSalary
 from employees;
 
 -- 3. Write a query to get the 
 -- minimum salary from employees table.
 select min(salary) as MinSalary
 from employees;
 
 -- 4. Write a query to get the maximum salary 
 -- of an employee working as a Programmer. 
 select first_name,max(salary)
 from employees
 where job_id="IT_Prog";
 
 select salary 
 from employees
 where job_id="it_prog";

use testcoursedb; 
 -- 5. Write a query to get the average salary and 
 -- number of employees working the department 90.
select *  from employees;
 select avg(salary),count(employee_id)
 from employees
 where department_id=90;
 
 -- 6. Write a query to get the highest, lowest, sum, 
 -- and average salary of all employees. 
 select count(employee_id) as TotalEmployee,
 max(salary) as MaxSalary,
 min(salary) as MinSalary,
 sum(salary) as TotalSalary,
 avg(salary) as AvgSalary
 from employees;
 
 -- 7. Write a query to get the number 
 -- of employees with the same job.
 select job_id,count(job_id)
 from employees
 group by job_id;
 -- 8. Write a query to get the difference 
-- between the highest and lowest salaries.
select max(salary) - min(salary) as Difference
from employees;

-- 9. Write a query to find the manager ID and the salary of 
-- the lowest-paid employee for that manager.
select manager_id,first_name,min(salary) as min
from employees
group by manager_id;

select * from employees;
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- 10. Write a query to get the department ID and 
-- the total salary payable in each department
select sum(salary) as DepartmentWiseTotalSalary
from employees
group by department_id;

-- 12. Write a query to get the total salary, maximum, minimum, average salary of
--  employees (job ID wise), for department ID 90 only.
select sum(salary),
max(salary),
min(salary),
avg(salary)
from employees
where department_id=90
group by department_id;

-- 11. Write a query to get the average salary 
-- for each job ID excluding programmer.
select job_id, avg(salary)
from employees
where job_id!="IT_PROG"
group by job_id;

 
 
