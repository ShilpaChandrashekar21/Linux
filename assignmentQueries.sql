use UST;

--Retrieve the details (Name, Salary and dept code) of the staff who are working in
--department code 20, 30 and 40.
select ename,salary,deptno
from EMP
where DEPTNO not in(10)

--Display the code and total marks for every student. Total Marks will be calculated as    
--subject1+subject2+subject3 .(Refer Student_marks table )

CREATE TABLE Student_Marks(
Student_Code int, 
Student_Year int  not null,
Subject1 int,
Subject2 int,
Subject3 int);
INSERT INTO student_marks VALUES(1001,	2010,	55,45,78);
INSERT INTO student_marks VALUES(1002,	2010,	66,74,88);
INSERT INTO student_marks VALUES(1003,	2010,	87,54,65);
INSERT INTO student_marks VALUES(1004,	2010,	65,64,90);
INSERT INTO student_marks VALUES(1005,	2010,	78,88,65);
INSERT INTO student_marks VALUES(1006,	2010,	65,86,54);
INSERT INTO student_marks VALUES(1007,	2010,	67,79,49);
INSERT INTO student_marks VALUES(1008,	2010,	72,55,55);
INSERT INTO student_marks VALUES(1009,	2010,	71,59,58);
INSERT INTO student_marks VALUES(1010,	2010,	68,44,92);
INSERT INTO student_marks VALUES(1011,	2010,	89,96,78);
INSERT INTO student_marks VALUES(1012,	2010,	78,56,55);
INSERT INTO student_marks VALUES(1013,	2010,	75,58,65);
INSERT INTO student_marks VALUES(1014,	2010,	73,74,65);
INSERT INTO student_marks VALUES(1015,	2010,	66,45,74);
INSERT INTO student_marks VALUES(1016,	2010,	68,78,74);
INSERT INTO student_marks VALUES(1017,	2010,	69,44,52);
INSERT INTO student_marks VALUES(1018,	2010,	65,78,56);
INSERT INTO student_marks VALUES(1019,	2010,	78,58,74);
INSERT INTO student_marks VALUES(1020,	2010,	45,55,65);
INSERT INTO student_marks VALUES(1021,	2010,	78,79,78);
INSERT INTO student_marks VALUES(1001,	2011,	68,44,92);
INSERT INTO student_marks VALUES(1002,	2011,	89,96,78);
INSERT INTO student_marks VALUES(1003,	2011,	78,56,55);
INSERT INTO student_marks VALUES(1004,	2011,	75,58,65);
INSERT INTO student_marks VALUES(1005,	2011,	73,74,65);
INSERT INTO student_marks VALUES(1006,	2011,	66,45,74);
INSERT INTO student_marks VALUES(1007,	2011,	68,78,74);
INSERT INTO student_marks VALUES(1008,	2011,	69,44,52);
INSERT INTO student_marks VALUES(1009,	2011,	65,78,56);
INSERT INTO student_marks VALUES(1010,	2011,	78,58,74);
INSERT INTO student_marks VALUES(1011,	2011,	45,55,65);
INSERT INTO student_marks VALUES(1012,	2011,	78,79,78);
INSERT INTO student_marks VALUES(1013,	2011,	66,74,88);
INSERT INTO student_marks VALUES(1014,	2011,	65,64,90);
INSERT INTO student_marks VALUES(1015,	2011,	78,88,65);
INSERT INTO student_marks VALUES(1016,	2011,	65,86,54);
INSERT INTO student_marks VALUES(1017,	2011,	67,79,49);
INSERT INTO student_marks VALUES(1018,	2011,	72,55,55);
INSERT INTO student_marks VALUES(1019,	2011,	71,59,58);
INSERT INTO student_marks VALUES(1020,	2011,	55,45,78);
INSERT INTO student_marks VALUES(1021,	2011,	87,54,65); 

select * 
from Student_Marks


select Student_Code, (Subject1+Subject2+Subject3) as total_marks
from Student_Marks 


CREATE TABLE staff_Masters(
Staff_Code int PRIMARY KEY,
Staff_Name varchar(50) NOT NULL,
Design_Code int ,
Dept_Code int ,
Staff_dob DATE,
Hiredate DATE,
Mgr_code int,
Staff_sal int,
Staff_address VARCHAR(240));

INSERT INTO staff_masters 
VALUES(100001,'Arvind',102,30,'1-15-80','1-15-03',100006,17000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100002,'Shyam',102,20,'2-18-80','2-17-02',100007,20000,'Chennai');
INSERT INTO staff_masters 
VALUES(100003,'Mohan',102,10,'3-23-80','1-19-02',100006,24000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100004,'Anil',102,20,'4-22-77','3-11-01',100006,20000,'Hyderabad');
INSERT INTO staff_masters
VALUES(100005,'John',106,10,'5-22-76','1-21-01',100007,32000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100006,'Allen',103,30,'1-22-80','4-23-01',100005,42000,'Chennai');


INSERT INTO staff_masters 
VALUES(100007,'Smith',103,20,'7-19-73','3-12-02',100005,62000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100008,'Raviraj',102,40,'6-17-80','1-11-03',100006,18000,'Bangalore');
INSERT INTO staff_masters
VALUES(100009,'Rahul',102,20,'1-16-78','12-11-03',100006,22000,'Hyderabad');
INSERT INTO staff_masters 
VALUES(100010,'Ram',103,30,'1-17-79','1-17-02',100007,32000,'Bangalore');

select * from staff_Masters



--List the Name and Designation code of the staff who have joined before Jan 2003
--and whose salary range is between 12000 and 25000. Display the columns with user
--defined Column headers

select Staff_Name, Design_Code, Hiredate as "join date",Staff_sal
from staff_Masters
where Hiredate < '2003-01-01' and( Staff_sal between 12000 and 25000) 

--List the code, name, and department number of the staff who have experience of 18
--or more years and sort them based on their experience.

select Design_Code, Staff_Name, Dept_Code as "department number", datediff(YYYY, Hiredate,'2024-01-01') as experience
from staff_Masters
where datediff(YYYY, Hiredate,'2024-01-01') >= 18
order by experience;

--List the name, designation code, and salary for 10 years of the staff who are working
--in departments 10 and 30.  

select Design_Code, Staff_Name, datediff(YYYY, Hiredate,'2024-01-01') as experience , Dept_Code
from staff_Masters
where datediff(YYYY, Hiredate,'2024-01-01') >= 10 and Dept_Code in (10,30)


--Display name concatenated with dept code separated by comma and space. Name the column as ‘Student Info’.

select concat(Staff_Name,',',Dept_Code) as "staff info"
from staff_Masters

--Display the staff details who do not have manager.
select * 
from staff_Masters
where Mgr_code = null;




CREATE TABLE Student_Masters(
Student_Code int PRIMARY KEY,
Student_Name VARCHAR(50) NOT NULL,
Dept_Code int ,
Student_Dob DATE,
Student_Address VARCHAR(240));

INSERT INTO student_masters VALUES(1001,'Amit',10,'11-Jan-80','chennai');
INSERT INTO student_masters VALUES(1002,'Ravi',10,'1-Nov-81','New Delhi');
INSERT INTO student_masters VALUES(1003,'Ajay',20,'13-Jan-82',null);
INSERT INTO student_masters VALUES(1004,'Raj',30,'14-Jan-79','Mumbai');
INSERT INTO student_masters VALUES(1005,'Arvind',40,'15-Jan-83','Bangalore');
INSERT INTO student_masters VALUES(1006,'Rahul',50,'16-Jan-81','Delhi');
INSERT INTO student_masters VALUES(1007,'Mehul',20,'17-Jan-82','Chennai');
INSERT INTO student_masters VALUES(1008,'Dev',10,'11-Mar-81','Bangalore');
INSERT INTO student_masters VALUES(1009,'Vijay',30,'19-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1010,'Rajat',40,'20-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1011,'Sunder',50,'21-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1012,'Rajesh', 30,'22-Jan-80',null);
INSERT INTO student_masters VALUES(1013,'Anil',20,'23-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1014,'Sunil',10,'15-Feb-85',	null);
INSERT INTO student_masters VALUES(1015,'Kapil',40,'18-Mar-81','Mumbai');
INSERT INTO student_masters VALUES(1016,'Ashok',40,'26-Nov-80',null);
INSERT INTO student_masters VALUES(1017,'Ramesh',30,'27-Dec-80',null);
INSERT INTO student_masters VALUES(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
INSERT INTO student_masters VALUES(1019,'Ravi Raj',50,'29-May-81','New Delhi');
INSERT INTO student_masters VALUES(1020,'Amrit',10,'11-Nov-80',null);
INSERT INTO student_masters VALUES(1021,'Sumit',20,'1-Jan-80','Chennai');

--Write a query which will display name, department code and date of birth of all
--students who were born between January 1, 1981 and March 31, 1983. Sort it based
--on date of birth (ascending).Hint: Use between operator
select Student_Name, Dept_Code , Student_Dob
from Student_Masters
where Student_Dob between '1981-01-01' and '1983-03-31'
order by Student_Dob

CREATE TABLE Book_Masters(
Book_code int PRIMARY KEY,
Book_name VARCHAR(50) NOT NULL,
Book_pub_year int,
Book_pub_author VARCHAR (50) NOT NULL);


INSERT INTO book_masters VALUES(10000001,'Let Us C++',2000,'Yashavant Kanetkar');

INSERT INTO book_masters VALUES(10000002,'Mastersing VC++',2005,'P.J Allen');

INSERT INTO book_masters VALUES(10000003,'JAVA Complete Reference',2004,'H.Schild');

INSERT INTO book_masters VALUES(10000004,'J2EE Complete Reference',2000,'H. Schild');

INSERT INTO book_masters VALUES(10000005,'Relational DBMS',2000,'B.C. Desai');

INSERT INTO book_masters VALUES(10000006,'Let Us C',2000, 'Yashavant Kanetkar');

INSERT INTO book_masters VALUES(10000007,'Intoduction To Algorithams',2001,'Cormen');

INSERT INTO book_masters VALUES(10000008,'Computer Networks',2000,'Tanenbaum');

INSERT INTO book_masters VALUES(10000009,'Introduction to O/S',2001,'Millan');

 --Display the Book details that were published during the period of 2001 to 2004. Also
--display book details with Book name having the character ‘&’ anywhere.

select * 
from Book_Masters
where Book_pub_year between 2001 and 2004 and
Book_name like '%&%'

--Display the Book details where the records have the word “COMP” anywhere in the Book name.
select * 
from Book_Masters
where Book_name like '%comp%'

--List the details of the staff, whose names start with ‘A’ and end with ‘S’ or whose
--names contains N as the second or third character, and ending with either ‘N’ or ‘S’.

select *
from staff_Masters
where Staff_Name like 'a%s' 
or Staff_Name like  '_n'
or Staff_Name like '__n' 
or Staff_Name like '%n'
or Staff_Name like '%s'

--List the names of the staff having ‘_’ character in their name.
select * from staff_Masters
where Staff_Name like '%\_%'

CREATE TABLE Department_Masters(
Dept_code int PRIMARY KEY,
Dept_Name VARCHAR(50) UNIQUE);
INSERT INTO department_masters VALUES(10,'Computer Science');
INSERT INTO department_masters VALUES(20,'Electricals');
INSERT INTO department_masters VALUES(30,'Electronics');
INSERT INTO department_masters VALUES(40,'Mechanics');
INSERT INTO department_masters VALUES(50,'Robotics');
--Write a query which displays Staff Name, Department Code, Department Name, and
--Salary for all staff who earns more than 20000.

select s.Staff_Name , s.Dept_Code, d.Dept_Name
from staff_Masters s inner join Department_Masters d
on s.Dept_Code = d.Dept_code
where s.Staff_sal > 20000


-- Display Staff Code, Staff Name, Department Name, and his manager’s number and name. Label the columns Staff#, Staff, Mgr#, Manager.  

select s.Staff_Code as "staff#", s.Staff_Name as "staff", m.Mgr_code as "mgr#"
from staff_Masters s , staff_Masters m

select * from dept

--Create a query that will display Student Code, Student Name, Department Name,
--Subject1, Subject2, and Subject3 for all students who are getting 60 and above in
--each subject from department 10 and 20.

select  s.Student_Code,m.Student_Name
from Student_Marks s 
join
Student_Masters m 
on s.Student_Code=m.Student_Code
where s.Subject1 > 60 and m.Dept_Code in (10,20)