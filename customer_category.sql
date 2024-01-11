create database customer;
use customer;

create table category
(cid int auto_increment primary key,
category_name varchar(50) not null);

create table product
(pid int auto_increment primary key,
product_name varchar(50),
cid int ,constraint fkcat foreign key(cid) references category(cid));

insert into category(category_name) values
("smartwatch"),("smartphone");

select * from category;

-- insert into product(pid,product_name,cid) values
-- (2,"boult",1);

insert into product (product_name,cid) values
("Noise",1),("boalt",2);
insert into product (product_name,cid) values
("Noise",2);
select * from product;
 update category set cid=101 where cid=1;
 drop table product;
 
create table product
(pid int auto_increment primary key,
product_name varchar(50),
cid int ,constraint fkcat foreign key(cid) references category(cid)
on delete cascade
on update cascade);

insert into product (product_name,cid) values
("Noise",101),("boalt",101);
insert into product (product_name,cid) values
("Noise",2);

update category set cid=102 where cid=101;
select * from category ;
select * from product;
delete  from category where cid=102;

show create table product;
alter table product 
drop foreign key fkcat;