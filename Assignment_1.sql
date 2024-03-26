

--Part 1: Table Creation

--Create a table named Employees with the following columns:

--Employee_id: INT (Primary Key)
--File_name: VARCHAR(50)
--last_name: VARCHAR(50)
--age: INT
--gender: CHAR(1) - ('M' or 'F')
--job_title: VARCHAR(50)
--salary: DECIMAL(10,2)
--Use the INSERT statement to populate the Employees table with data for 20 employees. Include a mix of valid values and NULL values for some entries, as shown in the sample data provided below.

--Sample Data

--employee_id	first_name	last_name	age	gender	job_title	salary
--1	John	Doe	30	M	Software Engineer	85000.00
--2	Jane	Smith	25	F	Marketing Manager	72000.50
--3	David	Lee	NULL	M	Data Analyst	68000.00
--4	Emily	Garcia	42	F	Sales Representative	55000.75
--5	Michael	Chen	38	M	Project Manager	NULL
--(and so on for 15 more employees)						
--Part 2: Select Statements

--Write SQL queries using the SELECT statement with the following functionalities:

--Count Employees:

--Select the total number of employees in the table.
--Filter by Gender:

--Select all employees who identify as male (M).
--Find Employees with Missing Salary:

--Select employees whose salary is NULL.
--Group by Job Title:

--Select the job title and count the number of employees for each job title. Order the results by the number of employees in descending order.
--Sort by Age (Descending):

--Select all employee information and order the results by age in descending order.
--Bonus Challenge:

--Select employees with a salary greater than $70,000 and group them by gender,
--calculating the average salary for each gender group.



--Part 2: Select Statements

--In addition to the functionalities mentioned earlier, solve the following problems using SELECT statements with LIKE and IN:

--Search by First Name:

--Select employees whose first names start with the letter "J" (use LIKE).
--Filter by Job Titles (IN):

--Select employees with job titles of "Software Engineer" or "Marketing Manager" (use IN).
--Find Employees with Age between 30 and 40:

--Select employees whose age is greater than or equal to 30 and less than or equal to 40 (combine comparison operators).
--Bonus Challenge (Updated):

--Select employees with last names containing the substring "ee" (use LIKE). Group them by gender and calculate the average salary for each gender group.



--Create table Employees
--(Employee_ID int,
--File_Name varchar(50),
--Last_Name varchar(50),
--Age int,
--Gender varchar(50),
--Job_Title varchar(50),
--Salary int)




--Insert into Employees values
--(1,'John','Doe',30,'M','Software Engineer',85000.00),
--(2,	'Jane','Smith',	25,'F'	,'Marketing Manager',	72000.50),
--(3,	'David','Lee',	NULL,	'M'	,'Data Analyst',	68000.00),
--(4,	'Emily','Garcia',	42	,'F',	'Sales Representative',	55000.75),
--(5,	'Michael','Chen',	38	,'M',	'Project Manager',	NULL)


--1.Count Employees:
--Select the total number of employees in the table.
select Count(*) as No_of_Employees
from Projects.dbo.Employees


--2.Filter by Gender:
--Select all employees who identify as male (M).

Select *
from Employees
where Gender='M'

--3.Find Employees with Missing Salary:
--Select employees whose salary is NULL.

Select *
from Employees
where Salary is null

--4.Group by Job Title:
--Select the job title and count the number of employees for each job title. Order the results by the number of employees in descending order.

Select Job_Title,Count(Employee_ID) as NO_of_Employees
from Employees
Group by Job_Title
order by NO_of_Employees desc

--5.Sort by Age (Descending):
--Select all employee information and order the results by age in descending order.

select *
from Employees
order by Age desc

--Bonus Challenge:
--Select employees with a salary greater than $70,000 and group them by gender, calculating the average salary for each gender group.

select Gender, avg(Salary)
from Employees
where Salary>70000 
Group by Gender


--6. Search by First Name:
--Select employees whose first names start with the letter "J" (use LIKE).

Select *
from Employees
where File_Name like 'J%'

--7. Filter by Job Titles (IN):
--Select employees with job titles of "Software Engineer" or "Marketing Manager" (use IN).
select *
from Employees
where Job_Title in ('Software Engineer','Marketing Manager')


--8.Find Employees with Age between 30 and 40:
--Select employees whose age is greater than or equal to 30 and less than or equal to 40 (combine comparison operators).

Select *
from Employees
where   Age >=30 and Age<=40


--9.Select employees with last names containing the substring "ee" (use LIKE).
--Group them by gender and calculate the average salary for each gender group

select Gender,avg(Salary) as Avg_Salary
from Employees
where Last_Name like '%ee%' 
Group by Gender