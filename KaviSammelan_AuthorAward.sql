use Kavi_Sammelan;
create table AuthorAward
(AwardId int primary key auto_increment,
AwardTypeId int ,
Author_Id int,
Book_Id int,
Published_Year date,
constraint Author_Award_cons 
foreign key(AwardTypeId)
references AwardMaster(AwardTYpeId),
constraint Author_Id_cons 
foreign key(Author_Id)
references Author(Author_Id),
constraint Author_Book_cons 
foreign key(Book_Id)
references Book(Book_Id));
-- drop table AuthorAward;
insert into AuthorAward(AwardTypeId,Author_Id,Book_Id,Published_Year)values
(1,1,1,"2023-12-10"),
(2,2,2,"2022-12-10"),
(3,3,3,"2021-12-10"),
(4,4,4,"2020-12-10"),
(5,5,5,"2024-12-10");
select * from AuthorAward;
-- drop table AuthorAward;
-- select * from AwardMaster;

 