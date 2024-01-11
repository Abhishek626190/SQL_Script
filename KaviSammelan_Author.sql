create database Kavi_Sammelan;
use Kavi_Sammelan;
create table Author
(Author_Id int primary key auto_increment, 
Author_Name varchar(50) not null,
Phone_No varchar(50),
Email varchar(50),
Address varchar(50),
city varchar(30));

insert into Author(Author_Name,Phone_No,Email,Address,city) values
("Chetan Bhagat","12345679740","chetan1234@gmail.com","Lane 1","Banglore"),
("BalaGuru Swamy","12345852740","swamy1234@gmail.com","Lane 2","Maharashtra"),
("Arundhati Roy","1125679740","roy1234@gmail.com","Lane 3","Madhya Pradesh"),
("Jhumpa Lahiri","1245682010","lahiri1234@gmail.com","Lane 4","Jabalpur"),
("Rabindranath Tagore","12345678540","tagore1234@gmail.com","Lane 5","Kolkata");
 select * from Author;
-- delete from Author where Author_Id>5;
-- desc Author;