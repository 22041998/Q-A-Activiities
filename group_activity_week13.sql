-- creating database employee-- 
CREATE DATABASE Employee;

-- showing the database-- 
show databases;

-- selecting our database-- 
USE Employee;

-- 1) creating the table-- 
CREATE TABLE info (
Employee_ID varchar(6) primary key,
Name varchar(20),
Gender varchar(10),
Department varchar(20),
Salary INT,
DOB date,
Date_of_joining date
);

-- Showing the table summary-- 
show tables;
DESCRIBE info;

-- Inserting values to our table-- 
INSERT INTO info VALUES('CP0123', 'Ann Mary', 'F', 'HR', 45000, 
STR_TO_DATE('10/Oct/1989', '%d/%M/%Y'),
STR_TO_DATE('1/Jan/2018', '%d/%M/%Y'));
INSERT INTO info VALUES('CP0087', 'Felix','M','Finance',48000,STR_TO_DATE('12/Apr/1981', '%d/%M/%Y'),STR_TO_DATE('10/Dec/2000', '%d/%M/%Y')),
      ('CP0197', 'Merlin','M','CEO',80000,STR_TO_DATE('01/Mar/1990', '%d/%M/%Y'),STR_TO_DATE('10/May/2011', '%d/%M/%Y')),
      ('CP0213', 'Philip','M','Retail',47000,STR_TO_DATE('01/Apr/1991', '%d/%M/%Y'),STR_TO_DATE('11/June/2012', '%d/%M/%Y')),
	  ('CP0243', 'Michael','M','Retail',40000,STR_TO_DATE('01/Dec/1992', '%d/%M/%Y'),STR_TO_DATE('30/May/2016', '%d/%M/%Y')),
	  ('CP0289', 'Susan','F','Retail',40000,STR_TO_DATE('01/Jan/1991', '%d/%M/%Y'),STR_TO_DATE('01/Apr/2016', '%d/%M/%Y')),
	  ('CP0298', 'Abram','M','Relations',30000,STR_TO_DATE('17/Apr/1994', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')),
	  ('CP0300', 'Alia','F','Relations',30000,STR_TO_DATE('17/Oct/1995', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')),
	  ('CP0321', 'Raichal','F','Marketing',34000,STR_TO_DATE('09/Oct/1990', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2016', '%d/%M/%Y')),
	  ('CP0276', 'Thomas','M','Marketing',44000,STR_TO_DATE('19/Nov/1983', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2018', '%d/%M/%Y'));
      
      
-- 2) Select employees from the following departments
-- a. Marketing
-- b. Retail
-- c. HR-- 
select * from info where Department = 'Marketing';
select * from info where Department = 'Retail';
select * from info where Department = 'HR';


-- 3) Create a table only containing female employees.-- 
create table Female_emp as 
(select * from info where gender = 'F');
describe Female_emp;
select * from Female_emp;

-- 4) Write SQL queries to display the Maximum,Minimum 
-- and Average Salary.-- 
select max(Salary) from info;
select min(Salary) from info;
select avg(Salary) from info;


-- 5. Write SQL query to display the employee details based on the
-- following conditions.

-- a. Male employees having salary greater than 40000-- 
select * from info where Gender = 'M' and Salary>40000;

-- b. Female employees having salary less than 45000-- 
select * from info where Gender = 'F' and Salary < 45000;

-- c. Employee having salary between 30000 and 60000 and
-- working in Marketing or Retail department.-- 
select * from info where (Salary > 30000 and Salary < 60000)
and (Department =  'Marketing' or 'Retail');



 


     

