-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) 
-- of all the departments
use testcoursedb;

select location_id,street_address,city,state_province,country_name
from departments
left join locations using(location_id)
left join countries using(country_id);

use testcoursedb;

select d.location_id,street_address,city,state_province,country_name
from departments d
left join locations l
on l.location_id=d.location_id
left join countries 
on countries.country_id=l.country_id;
 
-- 2. Write a query to find the names (first_name, last name),
--  department ID and name of all the employees.
select first_name,last_name,department_name,employees.department_id
from employees
left join departments 
on departments.department_id=employees.department_id;

-- 3. Find the names (first_name, last_name), job, department number, 
-- and department name of the employees who work in London.

-- on
select first_name,last_name,department_name,e.department_id,job_id
from employees e
left join departments d
on d.department_id=e.department_id
left join locations l
on l.location_id=d.location_id
where city="London";

-- using
select first_name,last_name,department_name,e.department_id,job_id
from employees e
left join departments d
using (department_id)
left join locations l
using (location_id)
where city="London";

-- 4. Write a query to find the employee id, name (last_name) along 
-- with their manager_id, manager name (last_name). 
-- on
select e.employee_id,e.last_name as EmployeeName,m.employee_id,m.last_name as ManagerName
from employees e
 inner join employees m
on e.manager_id=m.employee_id;


-- 5. Find the names (first_name, last_name) and hire date 
-- of the employees who were hired after 'Jones'.
select e.first_name,e.last_name,e.hire_date
from employees e
inner join employees m
on (m.last_name="jones")
where e.hire_date>m.hire_date;

-- 6. Write a query to get the department name and number of employees in the department.
select d.department_name,count(employee_id)
from departments d
left join employees e
on d.department_id=e.department_id
group by d.department_id;

select department_name,count(employee_id)
from departments e
left join employees using(department_id)
group by department_id;

-- 7.Find the employee ID, job title, number of days between ending date and starting date for all 
-- jobs in department 90 from job history.

select employee_id,job_title, end_date - start_date as Days
from job_history j
left join jobs j1
on j.job_id=j1.job_id
where j.department_id=90;

--  8. Write a query to display the department ID, department name and manager first name.
select d.department_id,d.department_name,m.first_name
from departments d
left join employees m
on d.manager_id=m.employee_id;

-- 9.Write a query to display the department name, manager name, and city.
-- on
select d.department_name,e.first_name,city
from departments d
left join locations l
on l.location_id=d.location_id
left join employees e 
on e.employee_id=d.manager_id;

-- 10. Write a query to display the job title and average salary of employees.
select job_title,avg(salary)
from jobs
left join employees
using(job_id)
group by job_title;

-- 11. Display job title, employee name, and the difference between salary of the 
-- employee and minimum salary for the job. 
select job_title,first_name,salary - min_salary
from employees
left join jobs using(job_id);

-- 12. Write a query to display the job history that were done by any employee who 
-- is currently drawing more than 10000 of salary

select *
from job_history
left join employees e
using(employee_id)
where e.salary>10000;

-- 13. Write a query to display department name, name (first_name, last_name), hire date, salary of the
-- manager for all managers whose experience is more than 15 years.
select department_name,e.first_name,e.last_name,e.hire_date,e.salary
from employees e
left join departments d
on e.employee_id=d.manager_id
where datediff(current_date(),e.hire_date)>15*365;

 
