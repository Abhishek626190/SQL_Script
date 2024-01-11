use classicmodels;
call variableDemo;
call getCountOfEmployee(@Count);
select @Count;
call new_procedure(@T);
select @T;
call if_else_demo(486,@Level);
select @Level;

use testcoursedb;
select department_name,city,first_name
from departments
inner join locations using(location_id)
inner join employees using (department_id)
where employee_id =100;

select department_name,city  
from departments
inner join locations using(location_id)
inner join employees using (department_id)
where employee_id =100;

call findLocation(101,@Locations,@DptName);
select @Locations,@DptName;
use classicmodels;

SET GLOBAL log_bin_trust_function_creators = 1;

use testcoursedb;

-- 3> Create a function that takes a department ID as a parameter and returns the 
-- average salary of employees in that department.

select avg(salary)
from employees
where department_id=60
group by department_id;

-- 4> Create a function that takes a department ID as a parameter and returns the count of
--  employees in that department.

select count(employee_id)
from employees
where department_id=60
group by department_id;

-- 1 > Create a procedure that takes employee details (name, salary, department ID) as 
-- parameters and adds a new employee to the "employees" table.

insert into employees(first_name,last_name,salary,department_id) 
values("Abhishek","Rai",400000,10);

ALTER TABLE employees
MODIFY COLUMN EMPLOYEE_ID int  auto_increment;

 select * 
 from employees
 where first_name="Adarsh";
 
 select * from employees
 where department_id=10;
 
 desc employees;