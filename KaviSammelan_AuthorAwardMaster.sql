use Kavi_Sammelan;
create table AwardMaster
(AwardTypeId int primary key auto_increment,
AwardName varchar(100) not null,
AwardPrice dec(5,2) default 0);
 insert into AwardMaster(AwardName,AwardPrice) values
 ("Bharat Ratn",900),
 ("Padma Shree",800),
 ("Pasma Vibhusan",700);
 insert into AwardMaster(AwardName,AwardPrice) values
 ("Swach Bharat",600),
 ("Padma Bhusan",500);
 select * from AwardMaster;