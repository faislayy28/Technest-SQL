--Q1.Write an SQL query to dispay INDIA at last and all other countries sorted in ascending order.
CREATE TABLE COUNTRY(NAME VARCHAR(50));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('AFGHANISTAN');
INSERT INTO COUNTRY VALUES('UNITED KINGDOM');
INSERT INTO COUNTRY VALUES('RUSSIA');

Select name from country
Order by 
case when name = 'INDIA' then 2 else 1 end, name asc;

Select name from country
order by
case when name = 'INDIA' then 'B' else 'A' end, name asc;


    NAME
AFGHANISTAN
CHINA
NEPAL
PAKISTAN
RUSSIA
SRI LANKA
UNITED KINGDOM
INDIA



--Q2.Write an SQL query to display the country name in below order.
drop table country;
CREATE TABLE COUNTRY(NAME VARCHAR2(20));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('RUSSIA');

O/p:
NAME
INDIA
RUSSIA
SRI LANKA
PAKISTAN
NEPAL
CHINA

Select name from country
order by
case when name = 'INDIA' then 1 
when name = 'RUSSIA' then 2 end,
name desc;

--Q3.Write an SQL query to display the output as per hierarchy with salary in descending order.
Hierarchy:
HOD
Professor
Instructor
drop table emp
create table emp(id number,name varchar2(50),designation varchar2(50),salary number);
insert into emp values(1,'Aman','HOD',400);
insert into emp values(2,'Rajesh','HOD',500);

insert into emp values(3,'Karan','Professor',800);
insert into emp values(4,'Henry','Professor',300);

insert into emp values(5,'Kunal','Instructor',400);
insert into emp values(6,'Yusuf','Instructor',200);

o/p:
ID	NAME	DESIGNATION	 SALARY
2	Rajesh	HOD	         500
1	Aman	HOD	         400
3	Karan	Professor	 800
4	Henry	Professor	 300
5	Kunal	Instructor	 400
6	Yusuf	Instructor	 200

SELECT * FROM emp
Order by
case when designation = 'HOD' then 1
when designation = 'Professor' then 2
when designation = 'Instructor' then 3 end,
Salary desc;

--Make salary for HOD and instructor Ascending while keeping the hierarchy

SELECT * FROM emp
Order by
case when designation = 'HOD' then 1 end, salary asc,
case when designation = 'Professor' then 2 end, salary desc,
case when designation = 'Instructor' then 3 end, salary asc;

--Q4.Write a SQL query to display the country names which starts with letter 'I' should be displayed first,
--then countries with letter 'S' should be displayed next and remaining countries in ascending order.
CREATE TABLE COUNTRY(NAME VARCHAR2(30));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('INDONESIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('SINGAPORE');
INSERT INTO COUNTRY VALUES('AFGHANISTAN');
INSERT INTO COUNTRY VALUES('UNITED KINGDOM');
INSERT INTO COUNTRY VALUES('RUSSIA');



--Q5.Write an SQL query to dispay INDIA at the top and all other countries sorted in ascending order without using else keyword.
drop table country;
CREATE TABLE COUNTRY(NAME VARCHAR(20));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('AFGHANISTAN');
INSERT INTO COUNTRY VALUES('UNITED KINGDOM');
INSERT INTO COUNTRY VALUES('RUSSIA');

Select Name countries from country
order by 
case when name = 'INDIA' then 1 end, name asc;

--Q6. What should be the output of below query?
select name from country
order by 
case when name = 'INDIA' then 1 else 1 end,name;

--All the countries will be sorted in ascending order

--Q7. which of the following statement is/are correct for the below query?
select name from country
order by 
case when name = 'INDIA' then 'a' else 'A' end,name desc;

a)Throw error message
b)INDIA will be displayed at last and remaining countries at top -- correct
c)INDIA will be displayed at top and other remaining countries at bottom/last.
d)Country names will be displayed but in random order.
