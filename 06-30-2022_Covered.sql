
Q1. Write a SQL query to fetch the records where 
a>ID is null
b>NAME is null
c>ID is not null
d>NAME is not null
e>ID and NAME both are null
f>Either ID is null or NAME is null.
g>total count of null records in ID column.
h>total count of null records in NAME column.
i>total count of records were ID and NAME both are null.
j>display the distinct IDs
k>display the distinct NAME
l>count of distinct ID
m>count of distinct NAME
n>count of distinct ID considering NULL records as well
o>count of distinct NAME considering NULL records as well

CREATE TABLE STUD1(ID NUMBER,NAME VARCHAR(10));
INSERT INTO STUD1 VALUES(NULL,'A');
INSERT INTO STUD1 VALUES(1,NULL);
INSERT INTO STUD1 VALUES(NULL,NULL);

SELECT id,name FROM STUD1 WHERE ID IS NULL;
SELECT id,name FROM STUD1 WHERE name IS NULL;

SELECT id,name FROM STUD1 WHERE ID IS NOT NULL;
SELECT id,name FROM STUD1 WHERE name IS NOT NULL;

SELECT id,name FROM STUD1 WHERE (id IS NULL AND name IS NULL);
SELECT id,name FROM STUD1 WHERE (id IS NULL OR name IS NULL);

SELECT COUNT('Total ID Nulls') FROM STUD1 WHERE id IS NULL;
SELECT COUNT('Total Name Nulls') FROM STUD1 WHERE name IS NULL;
SELECT COUNT('Both NULL') FROM STUD1 WHERE (id IS NULL AND name IS NULL);

SELECT Distinct ID FROM STUD1; --1,null
SELECT Distinct NAME FROM STUD1; --A,null

SELECT COUNT(Distinct ID) FROM STUD1; --1 count
SELECT COUNT(Distinct NAME) FROM STUD1; --1 count
----
--n
SELECT COUNT('Considering ID nulls') FROM STUD1; --3
SELECT ID,count('Distinct ID w/ nulls') from stud1 group by id;

ID	COUNT('DISTINCTIDW/NULLS')
1	1
 - 	2

----
--o
SELECT COUNT('Considering Name nulls') FROM STUD1; --3
SELECT name,count('duplicates') from STUD1 group by name;

NAME	COUNT('DUPLICATES')
A	    1
 - 	    2

----
Q2. Write an SQL query to find the count of distinct dept considering case insensitive search.
Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');
insert into dept values(2,'B','HR','Delhi');
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','Tech','Kerala');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(8,'j','hr','Delhi');
-----------------------------------------------------------------------------------
select dept,count('all') from dept group by dept; --counts case sensitive depts and nulls
DEPT	COUNT('ALL')
HR  	4
SALES	2
 -   	2
hr  	1
Tech	1
-------------------------------------------------------------
Select distinct upper(dept),count('count of depts') from dept group by upper(dept);--counts all case insensitive depts and nulls

UPPER(DEPT)	COUNT('COUNTOFDEPTS')
HR      	5
SALES   	2
TECH	    1
 - 	        2
------------------------------------------------------------------
Select upper(dept),count(distinct upper(dept)) from dept group by upper(dept);--counts distinct case insensitive depts excludes null

UPPER(DEPT)	COUNT(DISTINCTUPPER(DEPT))
HR	        1
SALES	    1
TECH	    1
 - 	        0
-------------------------------------------------------------------
Select upper(dept),count(upper(dept)) from dept group by upper(dept);--excludes null but counts all

UPPER(DEPT)	COUNT(UPPER(DEPT))
HR	        5
SALES   	2
TECH	    1
 - 	        0
---------------------------------------------------- 
---------------------------------------------------------------------
Select count(*),count(dept),count(distinct dept) from dept;

COUNT(*)	COUNT(DEPT)	    COUNT(DISTINCTDEPT)
10	        8	            4
---------------------------------------------------------------------
select distinct dept from dept;
DEPT
HR
SALES
 - 
hr
Tech
-----------
select distinct upper(dept) from dept;
UPPER(DEPT)
HR
SALES
TECH
 - 
------------
Q3. Write an SQL query to find the distinct dept considering case insensitive search where the employees are not working in Kerala and sort it in descending order of no. of employees.
Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');
insert into dept values(2,'B','HR','Delhi');
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','Tech','Kerala');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(3,'C','SALES');
insert into dept values(8,'j','hr','Delhi');

select distinct lower(dept) from dept where location not in ('Kerala');
<>--
!=
not in

select distinct empid from dept where empid <> '1' 
select distinct empid from dept where empid < '1' or empid > 1 
select distinct upper(dept),count(*) from dept where lower(location) not in ('kerala') group by upper(dept)



-------------------
create table emp(id int,name varchar(50));
insert into emp values(1,'A');
insert into emp values(2,'B');
insert into emp values(3,'C');
insert into emp values(4,'D');
insert into emp values(1,'A');
insert into emp values(2,'E');
drop table emp

select * from emp order by id;

select id,count(*) from emp where count(*) > 1 group by id; --syntax error

select id,count(*) from emp having count(*) > 1 group by id;
select id,count(*) from emp group by id having count(*) > 1;

from
where
group by
having

--Find the IDs assigned to two different names
select id,count(name) from emp group by id;--Wrong
select id,count(distinct name) from emp group by id;

