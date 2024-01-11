 -- create database services;
-- use services;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    requestcompleted BOOLEAN,
    emp_rating FLOAT
);

-- Add 10 records (sample data)
INSERT INTO Employee (emp_id, name, age, requestcompleted, emp_rating)
VALUES
(1, 'John Doe', 30, true, 4.5),
(2, 'Jane Smith', 28, false, 3.8),
(3, 'Alice Johnson', 35, true, 4.2),
(4, 'Bob Williams', 40, false, 3.9),
(5, 'Eva Davis', 25, true, 4.7),
(6, 'Chris Anderson', 32, false, 3.5),
(7, 'Sophia Martinez', 28, true, 4.1),
(8, 'Daniel Brown', 45, false, 3.2),
(9, 'Olivia Harris', 37, true, 4.8),
(10, 'William Taylor', 29, false, 3.6);

CREATE TABLE Customer (
    cust_id INT PRIMARY KEY,
    address1 VARCHAR(255),
    address2 VARCHAR(255),
    city VARCHAR(255),
    pincode VARCHAR(10)
);

-- Add 10 records (sample data)
INSERT INTO Customer (cust_id, address1, address2, city, pincode)
VALUES
(1, '123 Main St', 'Apt 45', 'Cityville', '12345'),
(2, '456 Oak St', 'Suite 102', 'Townsville', '67890'),
(3, '789 Elm St', 'Unit 15', 'Villagetown', '54321'),
(4, '987 Pine St', 'Floor 3', 'Hamletsville', '87654'),
(5, '321 Maple St', 'Apt 28', 'Grove City', '34567'),
(6, '555 Birch St', 'Suite 10', 'Woodsville', '89012'),
(7, '876 Cedar St', 'Unit 7', 'Treecity', '67890'),
(8, '234 Pinecone St', 'Floor 5', 'Coniferous', '12345'),
(9, '789 Oakleaf St', 'Apt 12', 'Leafyville', '23456'),
(10, '456 Redwood St', 'Suite 8', 'Evergreen', '78901');

CREATE TABLE Service_Status (
    sid INT PRIMARY KEY,
    desc_value VARCHAR(255)
);

-- Add 10 records (sample data)
INSERT INTO Service_Status (sid, desc_value)
VALUES
(1, 'Open'),
(2, 'In Progress'),
(3, 'Completed'),
(4, 'Cancelled'),
(5, 'On Hold'),
(6, 'Scheduled'),
(7, 'Assigned'),
(8, 'Pending'),
(9, 'Resolved'),
(10, 'Closed');

  CREATE TABLE Service_Request (
    service_id INT PRIMARY KEY,
    cust_id INT,
    service_desc VARCHAR(255),
    request_open_date DATE,
    sid INT,
    emp_id INT,
    request_closed_date DATE,
    charges DECIMAL(10, 2),
    feedback_rating FLOAT,
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (sid) REFERENCES Service_Status(sid),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);


-- Add 10 records (sample data)
INSERT INTO Service_Request (service_id, cust_id, service_desc, request_open_date, sid, emp_id, request_closed_date, charges, feedback_rating)
VALUES
(1, 1, 'Repair', '2023-01-01', 1, 1, '2023-01-05', 150.00, 4.0),
(2, 2, 'Installation', '2023-02-01', 2, 2, '2023-02-10', 200.00, 3.5),
(3, 3, 'Maintenance', '2023-03-01', 3, 3, '2023-03-10', 180.00, 4.2),
(4, 4, 'Upgrade', '2023-04-01', 4, 4, '2023-04-15', 220.00, 3.8),
(5, 5, 'Consultation', '2023-05-01', 5, 5, '2023-05-08', 120.00, 4.5),
(6, 6, 'Testing', '2023-06-01', 6, 6, '2023-06-12', 160.00, 3.7),
(7, 7, 'Inspection', '2023-07-01', 7, 7, '2023-07-18', 180.00, 4.1),
(8, 8, 'Cleaning', '2023-08-01', 8, 8, '2023-08-25', 130.00, 3.9),
(9, 9, 'Troubleshooting', '2023-09-01', 9, 9, '2023-09-10', 200.00, 4.6),
(10, 10, 'Setup', '2023-10-01', 10, 10, '2023-10-15', 180.00, 3.6);

