use customer;
create table supllier
(Sid int   auto_increment,
Sname varchar(50) not null,
Phone_No varchar(50) not null unique,
Address varchar(100) not null,
primary key(Sid),
constraint id_name_add unique(Sname,Address));

show create table supllier;
insert into supllier(Sname,Phone_No,Address) values
("Adarsh",7066646404,"Nanded"),
("Maruti",3214567890,"KarveNagar"),
("Sunish",55456684550,"NaviMumbai"),
("Bhakti",54551515150,"Baramati"),
("Utkarsha",12148915150,"NaviShangvi");
select * from supllier;
-- insert into supllier(Sname,Phone_No,Address) values
-- ("Muskan",7066646404,null);
alter table supllier
modify Address varchar(100);

alter table supllier
change Address
S_Address varchar(100);
show create table supllier;
select * from supllier;
