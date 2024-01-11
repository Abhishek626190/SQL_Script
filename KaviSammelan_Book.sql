use Kavi_sammelan;
create table Book
(Book_Id int primary key auto_increment,
Book_Name varchar(50) not null,
Book_Price dec(5,2) default 0,
Author_Id int ,
constraint book_cons
foreign key author_fk(Author_Id)
references Author(Author_Id));

insert into Book(Book_Name,Book_Price,Author_Id) values
("One Arranged Murder",100,1),
("Wish I Could Tell You",200,2),
("The Monk Who Sold His Ferrari",300,3),
("ThePowerofYourSubconsciousMind",400,4),
("Happy Ending",500,5);
select * from Book;
