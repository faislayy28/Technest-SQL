--Q1. Write an SQL query to fetch the records which have at least one yellow present in any of the columns(c1,c2 or c3) without using 'OR' operator.

create table practice(id int,c1 varchar(50),c2 varchar(50),c3 varchar(50));
insert into practice values(1,'red','yellow','blue');
insert into practice values(2,null,'red','green');
insert into practice values(3,'yellow',null,'violet');

Select * from practice
where c1 = 'yellow' or c2 = 'yellow' or c3 = 'yellow';

--ID	C1	C2	C3
--1	red	yellow	blue
--3	yellow	 - 	violet

--Q2.Write a SQL query to fetch the student name who has scored greater than 90 in Phy and less than 90 in Che.

Create table Student(Studid number,NAME varchar2(10),Subject varchar2(20),marks number);
insert into student values(1,'A','Phy','90');
insert into student values(1,'A','Che','95');
insert into student values(2,'B','Phy','95');
insert into student values(2,'B','Che','85');
insert into student values(3,'C','Phy','90');
insert into student values(4,'D','Phy','75');
insert into student values(4,'D','Che','90');


Select *  from student
where (subject = 'Phy' and marks >90) and (subject = 'Che' and marks < 90);

--Q3.Write an SQL query to find the total number of students  
a)who has scored marks greater than equal to 80
b)who has scored less than equal to 90
c)who has scored marks greater than 50 but less than 95
d)who has scored marks greater than equal to 50 and less than equal to 95

Create table Student(Studid number,NAME varchar2(10),Subject varchar2(20),marks number);
insert into student values(1,'A','Phy','90');
insert into student values(1,'A','Che','95');
insert into student values(2,'B','Phy','80');
insert into student values(2,'B','Che','85');
insert into student values(3,'C','Phy','90');
insert into student values(4,'D','Phy','75');
insert into student values(4,'D','Che','90');
insert into student values(5,'E','Che','95');
Select count(*) from student where marks>=80; --7
Select count(*) from student where marks<=90; --6
Select count(*) from student where marks>50 and marks<95; --6
Select count(*) from student where marks>=50 and marks<=95;
Select count(*) from student where marks between 50 and 95; --inclusive operator

--Q4.Write a SQL query to fetch the employee details whose name is 'A' OR  empid is 2.

Create table employee(empid number,empname varchar2(10),Mgrid number);
insert into employee values(1,'A',4);
insert into employee values(2,'B',5);
insert into employee values(3,'C',6);
insert into employee values(4,'D',5);
insert into employee values(5,'E','');
insert into employee values(6,'F','');

Select * from employee where empname = 'A' or empid = 2;

Q5.Write an SQL query to fetch those employee names whose salary is 600 and is either from 'HR' or 'TECH' dept.

create table emp(id number,name varchar2(10),dept varchar2(10),salary number);
insert into emp values(1,'A','HR',100);
insert into emp values(2,'B','HR',600);
insert into emp values(3,'C','HR',600);
insert into emp values(4,'D','HR',500);
insert into emp values(5,'H','TECH',300);
insert into emp values(6,'E','TECH',200);
insert into emp values(7,'F','TECH',600);
insert into emp values(8,'G','TECH',600);
insert into emp values(9,'H','SALES',300);
insert into emp values(10,'I','SALES',400);
insert into emp values(11,'J','SALES',600);
insert into emp values(12,'K','SALES',600);

Select * from emp where (salary=600) and (dept='HR' OR DEPT = 'TECH')
Select * from emp where (salary = 600) and dept IN ('HR','TECH');


