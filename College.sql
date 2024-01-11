create database college;
 use college;
 create table student(
 id INT PRIMARY KEY,
 name CHAR(50),
 age INT not null
 );
 
 insert into student values(1,"Abhi",23);
 insert into student values (2,"Suraj",24);
 
 Select * from student;
  INSERT INTO `college`.`course`
(`courseid`,
`coursename`,
`startdate`)
VALUES
(101,"Java","2022/12/10"),(102,"Python","2023/12/06");
select * from course;
insert into college.student values(105,"Akansha",23),(106,"Pratiksha",22),(107,"Rupali",24);
Select * from student;
create database company;
use company;
create table employee(eid int primary key ,ename varchar(50),elocation varchar(40), eaadharnoo long);
select * from employee;
update employee set eid=

