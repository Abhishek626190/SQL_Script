-- 1>	Write a query to select employee with the highest salary
SELECT FIRST_NAME,LAST_NAME, (SALARY)
FROM employeeS
ORDER BY SALARY DESC LIMIT 1;

-- 2>	Select employee with the second highest salary
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES 
ORDER BY SALARY DESC LIMIT 1,1;

SELECT e.FIRST_NAME,e.LAST_NAME,e.SALARY
FROM EMPLOYEES e
join employees e1
on e.SALARY=e1.SALARY
order by e.SALARY desc limit 1,1;

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES 
ORDER BY SALARY DESC ;

-- 3>	Write a query to select employees and their corresponding managers and their salaries
SELECT EMPLOYEE_ID,E.FIRST_NAME,E.LAST_NAME,E.MANAGER_ID AS MANAGER_ID,SALARY
FROM employees E
LEFT JOIN departments D
ON E.EMPLOYEE_ID=D.MANAGER_ID;

-- 4>	Write a query to show count of employees under each manager in descending order
SELECT COUNT(EMPLOYEE_ID) AS C
FROM EMPLOYEES E
LEFT JOIN departments D
ON E.EMPLOYEE_ID=D.MANAGER_ID
GROUP BY E.MANAGER_ID
order by C DESC;

-- 5>	Find the count of employees in each department
SELECT COUNT(EMPLOYEE_ID),D.DEPARTMENT_ID
FROM employees E
JOIN departments D
USING(DEPARTMENT_ID)
GROUP BY DEPARTMENT_ID;

-- 6>	Get the count of employees hired year wise
SELECT count(E.employee_ID)
FROM EMPLOYEES E
JOIN EMPLOYEES E1
ON E.HIRE_DATE=E1.HIRE_DATE
GROUP BY YEAR(E.HIRE_DATE);

-- 8>Find the employees who joined in August, 1994.
SELECT * 
FROM EMPLOYEES E
JOIN employeeS E1
ON E.HIRE_DATE=E1.HIRE_DATE
WHERE MONTH(E.HIRE_DATE)=8 AND YEAR(E.HIRE_DATE)=1994;

use testcoursedb;
-- 9>	Write an SQL query to display employees who earn more than the average salary in that company
SELECT *  
FROM EMPLOYEES E
JOIN EMPLOYEES E1
ON E.SALARY=E1.SALARY
WHERE E.SALARY > 
(select avg(salary) 
from employees);

-- 10>	Find the maximum salary from each department.
SELECT MAX(SALARY),e.department_id
FROM EMPLOYEES e
LEFT JOIN departments
USING(DEPARTMENT_id)
group by department_id;

--  14>	Show name of city where ‘Ramesh’ is working.
select city ,first_name
from locations l
left join departments d
on d.LOCATION_ID=l.location_id
left join employees e 
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
where first_name="Abhishek";

-- 15>	Write a query to show name of city and number of
--  employees working in that city.

select city ,count(employee_id) as MaxEmp
from locations
left join departments d using(location_id)
left join employees e using(department_id)
where city="South San Francisco";

 






