create database test2;

use test2;

-- Create Customer Table
CREATE TABLE Customer (
    Cust_Id INT PRIMARY KEY,
    Cust_name VARCHAR(255),
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    city VARCHAR(255),
    pin_code VARCHAR(10)
);

-- Create Service_Status Table
CREATE TABLE Service_Status (
    Status_Id INT PRIMARY KEY,
    desp VARCHAR(255)
);

-- Insert values into Service_Status Table
INSERT INTO Service_Status (Status_Id, desp)
VALUES
    (1, 'OPEN'),
    (2, 'IN_PROGRESS'),
    (3, 'CLOSED'),
    (4, 'CANCELLED');

-- Create Employee Table
CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(255),
    age INT,
    requestsCompleted INT,
    emp_rating INT
);

-- Create Service_Request Table
CREATE TABLE Service_Request (
    Service_Id INT PRIMARY KEY,
    cust_id INT,
    service_desc VARCHAR(255),
    request_open_date DATE,
    status_id INT,
    Emp_id INT,
    request_closed_date DATE,
    charges DECIMAL(10, 2),
    feedback_rating INT,
    FOREIGN KEY (cust_id) REFERENCES Customer(Cust_Id),
    FOREIGN KEY (status_id) REFERENCES Service_Status(Status_Id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_Id)
);

-- Insert values into Customer Table
INSERT INTO Customer (Cust_Id, Cust_name, address_line1, address_line2, city, pin_code)
VALUES
    (1, 'Sudarshan', '123 Main St', 'Apt 45', 'Pune', '123452'),
    (2, 'Yogesh', '456 Oak St', 'Suite 101', 'Mumbai', '567489'),
    (3, 'Sunil', '789 Pine St', 'Apt 12', 'Chennai', '101311'),
    (4, 'Anil', '101 Cedar St', 'Suite 50', 'Gujrat', '206222'),
    (5, 'Pankaj', '222 Oak St', 'Apt 30', 'Pune', '303373'),
    (6, 'Raghav', '555 Maple St', 'Suite 75', 'Mumbai', '404444');

-- Insert values into Employee Table
INSERT INTO Employee (Emp_Id, Emp_name, age, requestsCompleted, emp_rating)
VALUES
    (10, 'Amit', 30, 20, 1),
    (20, 'Raju', 35, 15, 2),
    (30, 'Pintu', 28, 25, 1),
    (40, 'Prashant', 40, 18, 2),
   (50, 'Ishwar', 32, 22, 2),
    (60, 'Abhishek', 36, 20, 3);

-- Insert values into Service_Request Table
INSERT INTO Service_Request (Service_Id, cust_id, service_desc, request_open_date, status_id, Emp_id, request_closed_date, charges, feedback_rating)
VALUES
    (101, 1, 'Repair', '2023-01-15', 1, 10, '2023-01-20', 150.00, 1),
    (102, 2, 'Installation', '2023-02-01', 2, 20, NULL, 200.50, 3),
    (103, 3, 'Maintenance', '2023-02-10', 1, 30, '2023-02-15', 120.75, 2),
    (104, 4, 'Consultation', '2023-03-01', 2, 40, NULL, 180.25, 4),
    (105, 1, 'Upgrade', '2023-03-15', 1, 20, NULL, 250.00, 1),
    (106, 5, 'Repair', '2023-04-01', 1, 50, '2023-04-05', 135.50, 2),
    (107, 6, 'Installation', '2023-04-15', 2, 60, NULL, 190.75, 3),
    (108, 2, 'Maintenance', '2023-05-01', 1, 40, NULL, 220.00, 1);
    
    
    -- queries
    -- 3.
    alter table customer
    add column email_id varchar(50) ;
    
    -- 4
select cust_name,service_desc,charges
from customer
inner join service_request using(cust_id)
inner join  employee using(emp_id)
where age>30;

-- 5.
select cust_name
from customer
inner join service_request using(cust_id)
inner join employee using(emp_id)
where emp_name!="Amit";
-- group by cust_name;

-- 6.
select emp_name,sum(charges)
from employee
inner join service_request using(emp_id)
inner join service_status using(status_id)
where emp_name="Amit" and desp="closed";

-- 7
select service_desc,cust_name
from service_request
inner join customer using(cust_id)
order by charges desc limit 2,1;

-- 8
select * 
from employee
where emp_rating=(select emp_rating 
					from employee
                    where emp_name="Amit");
 
 -- 9
 select sum(charges) as Total,emp_name
 from service_request
 inner join employee using(emp_id)
 group by emp_id
 order by Total desc;
 
 -- 12
UPDATE Service_Request
SET charges = charges + 200
WHERE cust_id IN (SELECT cust_id FROM Customer WHERE cust_name = 'sunil');

-- 21
create view Sub_ser as 
select cust_name,service_desc,emp_name,charges,desp
from customer
inner join service_request using(cust_id)
inner join employee using (emp_id)
inner join service_status using(status_id)
where desp!="closed";

-- 19
CREATE TABLE service_request_duplicate AS
SELECT * FROM service_request;


-- 10
DELETE FROM service_request
WHERE emp_id in (select emp_id from employee where emp_name="Abhishek");

-- 11
delete from service_request
where status_id in
 (select status_id
 from service_status 
 where desp="closed");



 
 
 

