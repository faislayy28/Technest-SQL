--Q1.Write a SQL query to fetch the employee details and sort the names in ascending order.

Create table employee(Firstname varchar2(20),lastname varchar2(20));
insert into employee values('Raj','Kumar');
insert into employee values('Raj','Karan');
insert into employee values('Raj','Kishor');
insert into employee values('Raj','IKishor');
insert into employee values('Suraj','Mathor');
insert into employee values('Suraj','Mukherjee');
insert into employee values('Rohan','Sharma');
insert into employee values('Rohit','Kumar');

Select * from employee Order by firstname asc, lastname asc;
drop table employee
--Q2.Which of the following statement is/are correct?

a.By default order by sorts the result in ascending order. - correct
b.By default order by sorts the result in descending order.
c.We must write asc or desc while using order by.

--Q3.Write a SQL query to fetch the employee details and sort the names in ascending order in case of tie consider lastname.
Create table employee(Firstname varchar2(20),lastname varchar2(20));
insert into employee values('Raj','Kumar');
insert into employee values('Raj','Karan');
insert into employee values('Raj','Kishor');
insert into employee values('Suraj','Mathor');
insert into employee values('Suraj','Mukherjee');
insert into employee values('Rohan','Sharma');
insert into employee values('Rohit','Kumar');

Select * from employee order by firstname asc, lastname;

Answer3.

FIRSTNAME	LASTNAME
Raj	        Karan
Raj	        Kishor
Raj	        Kumar
Rohan   	Sharma
Rohit	    Kumar
Suraj	    Mathor
Suraj	    Mukherjee

--Q4.Write a SQL query to fetch the employee details and sort the lastname in descending order.

Create table employee(Firstname varchar2(20),lastname varchar2(20));
insert into employee values('Raj','Kumar');
insert into employee values('Raj','Karan');
insert into employee values('Raj','Kishor');
insert into employee values('Suraj','Mathor');
insert into employee values('Suraj','Mukherjee');
insert into employee values('Rohan','Sharma');
insert into employee values('Rohit','Kumar');

Select * from employee order by lastname desc;

Answer 4.
FIRSTNAME	LASTNAME
Rohan	    Sharma
Suraj	    Mukherjee
Suraj	    Mathor
Rohit	    Kumar
Raj	        Kumar
Raj	        Kishor
Raj	        Karan

--Q5.Which of the following statement is/are correct?

a.By default order by sorts the result in ascending order. - correct
b.By default order by sorts the result in descending order.
c.We must write asc or desc while using order by.
d.Order by saves the output in table.

--Q6. Write an SQL query to list the studname in ascending order but all the Female students should be displayed before all the Male students.

create table stud(studid number,studname varchar2(20),Gender varchar2(5));
insert into stud values(1,'Bilal','M');
insert into stud values(2,'Suresh','M');
insert into stud values(3,'Aman','M');
insert into stud values(4,'Swati','F');

insert into stud values(5,'Saurabh','M');
insert into stud values(6,'Abdul','M');
insert into stud values(7,'Ankit','M');
insert into stud values(8,'Shruti','F');

insert into stud values(9,'Ahmed','M');
insert into stud values(10,'Anup','M');
insert into stud values(11,'Rakesh','M');
insert into stud values(12,'Neha','F');

insert into stud values(13,'Suresh','M');
insert into stud values(14,'Mukesh','M');
insert into stud values(15,'Majid','M');
insert into stud values(16,'Priyanka','F');

Select * from stud order by Gender asc, studname asc;

STUDID	STUDNAME	GENDER
12	Neha	F
16	Priyanka	F
8	Shruti	F
4	Swati	F
6	Abdul	M
9	Ahmed	M
3	Aman	M
7	Ankit	M
10	Anup	M
1	Bilal	M
15	Majid	M
14	Mukesh	M
11	Rakesh	M
5	Saurabh	M
13	Suresh	M
2	Suresh	M


--Q7.Write a Query to sort the salary in ascending order,in case of tie sort based on empname in ascending order.
Create table employee(empid number,empname varchar2(10),salary number);
insert into employee values(1,'A',100);
insert into employee values(2,'B',200);
insert into employee values(3,'C',100);
insert into employee values(4,'D',300);
insert into employee values(5,'E',100);
insert into employee values(6,'F',400);

Select * from employee order by salary asc, empname asc;


