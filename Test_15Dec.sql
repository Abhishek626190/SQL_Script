use test_sql;
  
-- 1.	Show names of theatres where ‘pallavi’ has booked tickets. 
select theatre_name
from theatre
where theatre_id in (select theatre_id 
						from bookings
                        where cust_id =(select cust_id 
												from customer 
                                                where cust_name="sunish")); 
  
  -- 2.	Show names of theatre where movie ‘Uri’ is screening
select theatre_name 
from theatre 
where theatre_id in 
(select theatre_id 
from bookings
where movie_id =(
select movie_id 
from movie 
where movie_name="uri"));

-- 6.	Write a query to add field totalchargesint(10) in bookings table.
alter table bookings
add column totalcharges int (10);

-- 5.	Write a query to add city field in theatre table between address and rating
alter table theatre
add column city varchar(50) after address;

-- 9.	Delete all bookings done by ‘yogesh’

delete 
from bookings
where cust_id in
(select cust_id 
from customer 
where cust_name="maroti");

select * 
from bookings;

select theatre_id from bookings
group by theatre_id order by sum(no_Of_tickets_booked) limit 1;

select theatre_name from theatre where theatre_id =
(select theatre_id from bookings group by theatre_id 
order by sum(no_of_tickets_booked) limit 1);

update bookings b
set totalcharges = (b.no_of_tickets_booked * 
(select ticket_price from screeningInfo s 
where b.movie_id = s.movie_id and b.theatre_id = s.theatre_id));