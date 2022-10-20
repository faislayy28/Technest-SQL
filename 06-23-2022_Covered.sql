Q1.Write an SQL query to dispay INDIA at last and all other countries sorted in ascending order.
CREATE TABLE COUNTRY(NAME VARCHAR2(50));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('AFGHANISTAN');
INSERT INTO COUNTRY VALUES('UNITED KINGDOM');
INSERT INTO COUNTRY VALUES('RUSSIA');

select * from country
order by
case when name = 'INDIA' then 2 else 1 end,name;

select * from country
order by
case when name = 'INDIA' then 2 end,name;

A-90
B-85

drop table country;
Q2.Write an SQL query to display the country name in below order.

CREATE TABLE COUNTRY(NAME VARCHAR2(10));
INSERT INTO COUNTRY VALUES('INDIA');
INSERT INTO COUNTRY VALUES('NEPAL');
INSERT INTO COUNTRY VALUES('CHINA');
INSERT INTO COUNTRY VALUES('PAKISTAN');
INSERT INTO COUNTRY VALUES('SRI LANKA');
INSERT INTO COUNTRY VALUES('RUSSIA');
INSERT INTO COUNTRY VALUES('ROMANIA');

O/p:
NAME
INDIA
RUSSIA
SRI LANKA
PAKISTAN
NEPAL
CHINA
ROMANIA

select name from country
order by 
case
when name = 'INDIA' then 1
when name = 'RUSSIA' then 2
when name = 'SRI LANKA' then 3
else 4 end,name desc

select name from country
order by 
case
when name = 'INDIA' then 1
when name = 'RUSSIA' then 2
else 3 end,name desc

select name from country
order by 
case
when name = 'INDIA' then 1
else 2 end,name desc;

select name from country
order by 
case when name = 'INDIA' then 2 else 2 end,name;

select name from country
order by 
case when name = 'INDIA' then '@' else ']' end,name;

select ascii('@') from dual;--64
select ascii(']') from dual;--93

select name from country
order by 
case when name = 'INDIA' then 64 else 93 end,name;

select name from country
order by 
case when name = 'INDIA' then ' ' else ',' end,name;


create table emp(id number,name varchar2(50),designation varchar2(50),salary number);
insert into emp values(1,'Aman','HOD',400);
insert into emp values(2,'Rajesh','HOD',500);
insert into emp values(2,'Rajesh','HOD',500);
insert into emp values(2,'Rajesh','HOD',300);

insert into emp values(3,'Karan','Professor',800);
insert into emp values(4,'Henry','Professor',300);

insert into emp values(5,'Kunal','Instructor',400);
insert into emp values(6,'Yusuf','Instructor',200);

select * from emp where designation = 'HOD' and salary >400;

select * from emp where salary > 400 or name = 'Rajesh';
select * from emp where designation = 'HOD' or designation = 'Professor';


CREATE TABLE STUD(ID NUMBER,NAME VARCHAR2(10),SEMESTER NUMBER,SUBJECT VARCHAR2(10),MARKS NUMBER);
INSERT INTO STUD VALUES(1,'A',1,'PHYSICS',100);
INSERT INTO STUD VALUES(1,'A',2,'PHYSICS',150);
INSERT INTO STUD VALUES(1,'A',3,'PHYSICS',200);
INSERT INTO STUD VALUES(1,'A',4,'PHYSICS',250);

INSERT INTO STUD VALUES(1,'A',1,'CHEMISTRY',50);
INSERT INTO STUD VALUES(1,'A',2,'CHEMISTRY',250);
INSERT INTO STUD VALUES(1,'A',3,'CHEMISTRY',200);
INSERT INTO STUD VALUES(1,'A',4,'CHEMISTRY',350);

INSERT INTO STUD VALUES(2,'B',1,'PHYSICS',150);
INSERT INTO STUD VALUES(2,'B',2,'PHYSICS',250);
INSERT INTO STUD VALUES(2,'B',3,'PHYSICS',100);
INSERT INTO STUD VALUES(2,'B',4,'PHYSICS',200);

INSERT INTO STUD VALUES(2,'B',1,'CHEMISTRY',150);
INSERT INTO STUD VALUES(2,'B',2,'CHEMISTRY',150);
INSERT INTO STUD VALUES(2,'B',3,'CHEMISTRY',250);
INSERT INTO STUD VALUES(2,'B',4,'CHEMISTRY',300);

select * from stud where subject = 'PHYSICS' and marks > 100;

select * from stud where subject = 'CHEMISTRY' and marks > 200;

Q1.Write an SQL query to fetch the student details who have scored (greater than 100 in physics)

Q2.Write an SQL query to fetch the student details who have scored (greater than 200 in chemistry)

Q3.Write an SQL query to fetch the student details who have scored (greater than 100 in physics) or (greater than 200 in chemistry)

select * from stud where subject = 'PHYSICS' and marks > 100;

select * from stud where subject = 'CHEMISTRY' and marks > 200;

select * from stud where (subject = 'PHYSICS' and marks > 100) or (subject = 'CHEMISTRY' and marks > 200) order by subject,marks desc;
select id,name,semester from stud order by 2,1

