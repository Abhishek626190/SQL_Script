use testcoursedb;
-- 2. Write a query to display the names (first_name, last_name) and 
-- department ID of all employees in departments 30 or 100 in ascending alphabetical order by department ID.
desc employees;
select first_name,last_name,department_id
from employees
where department_id=30 or department_id=100
order by department_id  ;

-- 1. Write a query to display the names (first_name, last_name) and 
-- salary for all employees whose salary is not in the range $10,000 through $15,000.
select first_name,last_name,salary
from employees
where salary not between 10000 and 15000;

-- 3. Write a query to display the names (first_name, last_name) and salary for all employees 
-- whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.

select first_name,last_name,salary
from employees
where salary not between 10000 and 15000 and department_id in (30,100);

-- 4. Write a query to display the names (first_name, last_name) 
-- and hire date for all employees who were hired in 1987.
select first_name ,last_name,hire_date
from employees
where year(hire_date)=1987;

-- 5. Write a query to display the first_name of 
-- all employees who have both "b" and "c" in their first name.
select first_name
from employees
where first_name like '%B%'and first_name like '%c%' ;

-- 6. Write a query to display the last name, job, and salary for 
-- all employees whose job is that of a Programmer or a Shipping Clerk, 
-- and whose salary is not equal to $4,500, $10,000, or $15,000.

select last_name,job_id,salary
from employees
where salary!=4500 and 10000 and 15000 and 
job_id in ("St_clerk" , "It_prog");

select *from employees;

-- 7. Write a query to display the last names
--  of employees whose names have exactly 6 characters.
select last_name
from employees
where length(last_name)=6;

-- 10. Write a query to display the names (first_name, last_name),
--  salary and PF (15% of salary) of all employees.
select first_name,last_name,salary,salary*0.15 as "PF"
from employees;

-- 9. Write a query to display the jobs/designations
--  available in the employees table.
select distinct job_id
from employees;

-- 11. Write a query to select all record from employees 
-- where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
select * 
from employees
where last_name in( 'blake','scott' , 'King' ,'ford');

-- 8. Write a query to display the last names of 
-- employees having 'e' as the third character.
select last_name
from employees
where last_name like '__e';
