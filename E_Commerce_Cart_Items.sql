create database E_Commerce;
use E_Commerce;
create table Cart_Items
(item_id int primary key auto_increment,
item_name varchar(100) not null,
Quantity int not null,
Price dec(5,2) not null,
Sales_Tax dec(5,2) not null default 0.1,
check (Quantity>0),
check (Sales_Tax>=0));

insert into Cart_Items(item_name,Quantity,Price,Sales_Tax) values
("Sugar",1,50,2);
insert into Cart_Items(item_name,Quantity,Price,Sales_Tax) values
("Rice",5,500,10),("Pulse",2,300,6),("Noodles",5,100,2);
insert into Cart_Items(item_name,Quantity,Price) values
("Tea",1,50);
delete from Cart_Items where item_id=1;
select * from Cart_Items;