use testcoursedb;

create table salary_changes 
(employee_id int,
changed_at DateTime default current_timestamp,
old_salary decimal(8,2),
new_salary decimal(8,2),
primary key(employee_id,changed_at));

desc employees;

update employees
set salary=salary*1.5
where employee_id=101;

select * from employees
where employee_id=100;

update employees
set salary=650000
where employee_id=100;

insert into employees(employee_id,salary)
values (404,680000);

insert into employees(employee_id,salary)
values (405,63000);

insert into employees(employee_id,salary,LAST_NAME)
values (406,67000,'Ganesh');

select * from salary_changes;

select * from salary_changes ;

