show databases;
create database   student;
drop database student;
use college;
show tables;
drop table student;
show tables;
create table student
(id int primary key,name varchar(50),age int not null,city varchar(50));
create table student
(id int primary key,name varchar(50),age int not null,city varchar(50));
insert into student values
(101,"Pratiksha",23,"Pune"),
(102,"Rupali",23,"Pune"),
(103,"Dhaani",24,"Jabalpur"),
(104,"Muskan",22,"Sihora"),
(105,"Kavya",23,"Narishinhpur"),
(106,"Priya",22,"Shahdol"),
(107,"Neha",21,"Shahdol"),
(108,"Akansha",25,"Umaria"),
(109,"Ragini",23,"Anuupur"),
(110,"Sejal",24,"Pachmari");
select * from student;
-- select id,name from student;
-- select age,name from student;
-- select name from student;
-- select * from student where age<24;
-- select * from student where city="Pune";
-- select * from student order by name;
-- select * from student order by age;
-- select * from student order by age limit 3;
-- select * from student limit 5;
-- delete from student where id=105;
-- select city  from student group by city;
-- select  max(age) from student;
-- select count(name) from student;
-- select sum(age) from student;
-- select avg(age) from student;
-- select min(age) from student;
-- select distinct age from student;



