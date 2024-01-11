-- show employees with highest salary
use testcoursedb;

select max(salary)
from employees;
 
-- show employees with lowest salary
use testcoursedb;

select min(salary)
from employees;
--  show employees who are hired in 2017
select * 
from employees
where year(hire_date)=1988;

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

--  list department which has highest no of employees
select department_id ,(count(employee_id)) as MaxEmp
from employees
group by department_id
order by MaxEmp desc limit 1;
 
 --  show minimum salary for each department
 select department_id,min(salary)
 from employees
 group by department_id;
 
 --  show maximium salary for each department
 select department_id,max(salary)
 from employees
 group by department_id;
 
 -- •	show locations which has maximum departments 
 select city ,count(employee_id) as MaxEmp
 from locations
left join departments d using(location_id)
left join employees e using(department_id)
group by location_id
order by MaxEmp desc limit 1;

-- •list employees who start with name 'A' 
SELECT * 
FROM employees
WHERE first_name LIKE 'A%';

-- •show list of region with highest no of employees 
select region_name,count(employee_id) as MaxEmp
from regions
left join countries c using(region_id)
left join locations l using(country_id)
left join departments d using(location_id)
left join employees e using(department_id);
 
 

 