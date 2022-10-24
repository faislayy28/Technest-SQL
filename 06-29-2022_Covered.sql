--Q1.Write a SQL query to fetch the employee details with lastname KUMAR.

Create table employee(Firstname varchar2(20),lastname varchar2(20));
insert into employee values('Raj','Kumar');
insert into employee values('Raj','Karan');
insert into employee values('Raj','Kishor');
insert into employee values('Suraj','Mathor');
insert into employee values('Suraj','Mukherjee');
insert into employee values('Rohan','Sharma');
insert into employee values('Rohit','KumAr');

SELECT * FROM employee WHERE UPPER(lastname) = 'KUMAR';
---------------------
Q2.Write a SQL query to fetch the employee details whose first_name is RAJ(case insensitive search)
Please write query using both upper and lower keyword.
drop table employee;
Create table employee(Firstname varchar2(20),lastname varchar2(20));
insert into employee values('Raj','Kumar');
insert into employee values('RAJ','Karan');
insert into employee values('raj','Kishor');
insert into employee values('Suraj','Mathor');
insert into employee values('Suraj','Mukherjee');
insert into employee values('Rohan','Sharma');
insert into employee values('Rohit','Kumar');

SELECT * FROM employee WHERE UPPER(firstname) = 'RAJ' and LOWER(firstname) = 'raj';
-------------------------------------
Q3.Which of the following statement is correct for the below select statement.
select * from employee where upper(firstname) = 'raj'

a)This will throw error message.
b)This will fetch all the records with firstname Raj(with any case)
c)No data found --correct

Q4.Which of the following statement is correct for the below select statement.
select * from employee where lower(firstname) = 'RAJ'

a)This will throw error message.
b)This will fetch all the records with firstname Raj(with any case)
c)No data found --correct

----------------------------------------------
Q5.Explain the output of count(*),count(mgrid),count('mgrid'),count(empid) and count(empname).
Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E','');
insert into employee values(6,'F','');

SELECT count(*),count(mgrid),count('mgrid'),count(empid),count(empname),count(distinct mgrid) FROM employee;
--o/p:
COUNT(*) - 6 --counts all records
COUNT(MGRID) - 4 --counts all records in mgrid column excluding 'NULL'
COUNT('MGRID') - 6 --counts all records
COUNT(EMPID) - 6 --counts all records in the EMPID column	
COUNT(EMPNAME) - 6 --counts all records in the EMPNAME column
COUNT(DISTINCT MGRID)- 3 --counts distinct mgrid excluding NULLs


----------------------------
Q6.Write an SQL query to find if NULL record exists in mgrid column.
drop table employee

Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E','');
insert into employee values(6,'F','');
insert into employee values(7,'G',NULL);

SELECT count(*),count(mgrid),count(*)-count(mgrid) from employee;

SELECT * FROM employee WHERE MGRID=NULL; --no data found, = works on absolute data

SELECT * FROM employee WHERE MGRID IS NULL;



------------------------------
Q7.Fetch the no.of employees working in each dept from Delhi and sort the result in descending order.
Please note dept search must be case insensitive i.e HR and hr will be considered as one dept only.
drop table dept;

Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');
insert into dept values(2,'B','HR','Delhi');
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','SALES','Chennai');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(8,'j','hr','Delhi');

----------Count---------------

SELECT COUNT(*) FROM dept WHERE location = 'Delhi' AND UPPER(dept) = 'HR';--3
SELECT COUNT(*) FROM dept WHERE location = 'Delhi' AND UPPER(dept) = 'SALES';--1
SELECT COUNT(*) FROM dept WHERE location = 'Delhi' AND UPPER(dept) IN ('SALES','HR');--4

--------Group By w/ upper(),count()----------

SELECT empname,count(*) from dept; --error
SELECT count(empname) from dept; --10
SELECT COUNT(DISTINCT empname) from dept; --8
SELECT empname,count(1) from dept group by empname; --group by is used to create buckets
SELECT empname,count(empname) from dept group by empname;

SELECT dept,count(2) from dept group by dept;

DEPT	COUNT(2)
HR	    4
SALES	3
 - 	    2
hr	    1

SELECT dept,count(dept) from dept group by dept;

DEPT	COUNT(DEPT)
HR  	4
SALES	3
 - 	    0
hr	    1
 

SELECT UPPER(DEPT),COUNT(*) FROM DEPT WHERE location = 'Delhi' and UPPER(DEPT) IN ('HR','SALES') GROUP BY UPPER(DEPT) ORDER BY COUNT(*) asc;
SELECT UPPER(dept),COUNT(DEPT) FROM dept WHERE location = 'Delhi' and UPPER(dept) IN ('HR','SALES') GROUP BY UPPER(dept);

--------Distinct, count w/ distinct------

SELECT count(distinct upper(dept)) from dept; -2

Select distinct dept from dept; --4 departments
Select DISTINCT UPPER(dept) from dept; --3 departments

Select Distinct dept,location from dept; --Distinct is applied on all the columns

SELECT Distinct upper(Dept),location from dept;

Q8.Fetch the total number of students who have passed and failed.
Create table student(id number,name varchar2(10),subject varchar2(10),result varchar2(10));
insert into student values(1,'A','Maths','Pass');
insert into student values(1,'A','Phy','Pass');
insert into student values(1,'A','Chem','Fail');
insert into student values(1,'A','Chem','Fail');
insert into student values(2,'B','Maths','Pass');
insert into student values(2,'B','Phy','Fail');
insert into student values(2,'B','Chem','Fail');
insert into student values(3,'C','Maths','Pass');
insert into student values(3,'C','Phy','Pass');
insert into student values(3,'C','Chem','Fail');

Q9.Fetch the number of employees working in different dept earning salary greater than 500
create table emp(id number,name varchar2(50),designation varchar2(50),salary number);
insert into emp values(1,'Aman','HOD',400);
insert into emp values(2,'Rajesh','HOD',500);
insert into emp values(7,'Rakesh','HOD',700);

insert into emp values(3,'Karan','Professor',800);
insert into emp values(4,'Henry','Professor',300);

insert into emp values(5,'Kunal','Instructor',400);
insert into emp values(6,'Yusuf','Instructor',200);

