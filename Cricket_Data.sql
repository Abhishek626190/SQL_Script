create database Cricket_Data;
use Cricket_Data;
create table Countries
(cid int primary key auto_increment,
cname varchar(50) not null);
insert into Countries(cname) values
("India"),
("Australia"),
("England"),
("South Africa"),
("Afghanistan");

select * from Countries;

create table Formats
(fid int primary key auto_increment,
fname varchar(50) not null);

insert into Formats(fname) values
("ODI"),
("Test"),
("T20"),
("T10"),
("4_Day");
select * from Formats;

create table Batsman(
Player_Id int auto_increment primary key,
Player_Name varchar(50) not null,
Age int not null,
Country_Id int ,
Total_Runs int ,
Total_50s int ,
Total_100s int,
Player_Grade char,
constraint Batsmen_Cons
foreign key countryid_fk(Country_Id)
references Countries (cid));
show tables ;

insert into Batsman(Player_Name,Age,Country_Id,Total_Runs,Total_50s,Total_100s,Player_Grade) values
("Virat Kohli",35,1,12980,57,50,'A'),
("Rohit Sharma",38,2,94512,52,35,'A'),
("Sachin Tendulkar",52,3,15021,61,49,'A'),
("M.S. Dhoni",45,4,11021,49,25,'A'),
("Suresh Raina",44,5,10145,35,21,'B');
select * from Batsman;

create table B_F_Mapping(
id int primary key auto_increment,
Player_Id int not null,
Format_Id int not null,
Constraint Map_Cons
foreign key palyerid_fk(Player_Id)
references Batsman (Player_Id),
constraint Format_cons 
foreign key format_fk(Format_Id)
references Formats(fid));

insert into B_F_Mapping(Player_Id,Format_Id) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

select * from B_F_Mapping;