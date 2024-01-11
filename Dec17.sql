-- Create the database
CREATE DATABASE IF NOT EXISTS university;

-- drop database university;

-- Switch to the university database
USE university;

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    birth_date DATE,
    major VARCHAR(255)
);

-- Create the courses table
CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    credit_hours INT
);

-- Create the enrollments table
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample data into the students table
INSERT INTO students (student_id, student_name, birth_date, major)
VALUES
    (1, 'Abhishek Rai', '2000-01-15', 'Computer Science'),
    (2, 'Suraj Rokde', '1999-05-20', 'Physics'),
    (3, 'Pritam Mane', '1998-11-08', 'Mathematics');

-- Insert sample data into the courses table
INSERT INTO courses (course_id, course_name, credit_hours)
VALUES
    (101, 'Introduction to Programming', 3),
    (102, 'Newtons Law', 4),
    (103, 'Trignometry', 3);

-- Insert sample data into the enrollments table
INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
    (1, 1, 101, '2023-01-01'),
    (2, 2, 102, '2023-01-02'),
    (3, 3, 103, '2023-01-03');
    
    -- Queries
    -- 1.	Select all students and their majors.
    select student_name,major 
    from students ; 
    
    -- 2.	List the names of courses with more than 3 credit hours.
    select course_name
    from courses
    where credit_hours>3;

-- 3.	Find the students born after 2000.
select * 
from students
where year(birth_date)>1999;