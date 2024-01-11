-- Create a table to store employee information
CREATE TABLE employees1 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    employee_salary DECIMAL(10, 2) NOT NULL,
    dob DATE NOT NULL,
    age INT
);

-- Insert sample records with age calculation
INSERT INTO employees1 (employee_id, employee_name, employee_salary, dob, age)
VALUES
    (1, 'John Doe', 50000.00, '1990-05-15', YEAR(CURDATE()) - YEAR('1990-05-15')),
    (2, 'Jane Smith', 60000.00, '1988-10-20', YEAR(CURDATE()) - YEAR('1988-10-20')),
    (3, 'Bob Johnson', 55000.00, '1995-03-08', YEAR(CURDATE()) - YEAR('1995-03-08')),
    (4, 'Alice Brown', 65000.00, '1992-07-12', YEAR(CURDATE()) - YEAR('1992-07-12')),
    (5, 'Charlie Wilson', 70000.00, '1985-12-28', YEAR(CURDATE()) - YEAR('1985-12-28')),
    (6, 'Emily Davis', 48000.00, '1998-04-02', YEAR(CURDATE()) - YEAR('1998-04-02')),
    (7, 'Frank Miller', 52000.00, '1993-09-18', YEAR(CURDATE()) - YEAR('1993-09-18')),
    (8, 'Grace Taylor', 62000.00, '1991-06-25', YEAR(CURDATE()) - YEAR('1991-06-25')),
    (9, 'Henry White', 58000.00, '1987-11-14', YEAR(CURDATE()) - YEAR('1987-11-14')),
    (10, 'Ivy Turner', 53000.00, '1996-01-30', YEAR(CURDATE()) - YEAR('1996-01-30'));
    
    select * from employees1;
