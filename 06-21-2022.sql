create table employee(empid int,empname varchar2(100),salary int,location varchar2(50),dept varchar2(50));

insert into employee values (1,'A',100,'Delhi','Tech');
insert into employee values (2,'B',200,'Chennai','Sales');
insert into employee values (3,'C',300,'Bangalore','878787');
insert into employee values (4,'D',400,'Hyderabad',8798723);
insert into employee values (5,'E',500,'Mumbai','HR');
insert into employee values (6,'F','600','Mumbai','HR');
INSERT INTO EMPLOYEE VaLuES (6,'F','600','Mumbai','HR');

select * from employee
order by dept;

SELECT * FROM employee order by empid desc, empname desc;

desc employee;

create table student(id int,name varchar(50),semester int,dept varchar(50));
insert into student values(1,'Raj',1,'CS');
insert into student values(1,'Raj',2,'CS');
insert into student values(2,'Raj',1,'EC');
insert into student values(2,'Raj',1,'EC');

select * from student 
order by name,semester desc;

create table emp(firstname varchar2(50),lastname varchar2(50));
insert into emp values('Raj','Kumar');
insert into emp values('Raaj','Kishore');
insert into emp values('Abdul','Khan');
insert into emp values('Asif','Sheikh');
insert into emp values('Asif','Khan');

SELECT * FROM emp ORDER BY firstname, lastname desc;

SELECT * FROM emp ORDER BY firstname;
SELECT * FROM emp ORDER BY firstname desc,lastname desc;

select firstname,lastname,rowid from emp
order by firstname desc;

create table practice(val varchar2(10));

insert into practice values(1);
insert into practice values(0);
insert into practice values(9);
insert into practice values('a');
insert into practice values('b');
insert into practice values('z');
insert into practice values('A');
insert into practice values('Z');

SELECT * FROM practice ORDER BY VAL ASC;

SELECT ASCII('0'),ASCII('1'),ASCII('9'),ASCII('a'),ASCII('b'),ASCII('z'),ASCII('A'),ASCII('E'),ASCII('Z') from dual;

--ASCII('0')	ASCII('1')	ASCII('9')	ASCII('A')	ASCII('B')	ASCII('Z')	ASCII('A')	ASCII('E')	ASCII('Z')
--48	49	57	97	98	122	65	69	90



