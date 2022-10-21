create table stud(studid number,studname varchar2(20),Gender varchar2(5));
insert into stud values(1,'Bilal','M');
insert into stud values(1,'BILAL','M');
insert into stud values(1,'bilal','M');
insert into stud values(1,'bIlAl','M');
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
insert into stud values(17,'SITA','F');
insert into stud values(18,'alok','M');
insert into stud values(19,'Bilal_Rakesh','M');
insert into stud values(20,'Bilal Rakesh','M');
insert into stud values(21,null,'M');

SELECT * from stud where upper(studname) = 'BILAL'; --records found
SELECT * FROM stud WHERE UPPER(studname) = 'Bilal'; --no record formed
SELECT * FROM stud WHERE LOWER(studname) = 'bilal'; --RECORDS FOUND
SELECT * FROM stud WHERE UPPER(studname) = '

select * from stud where upper(studname) = 'BILAL RAKESH'; --1 RECORD FOUND
select * from stud WHERE upper(STUDNAME) = 'bILaL'; --NO RECORD FOUND
select * from stud WHERE lower(STUDNAME) = 'bilal'; --records found
select * from stud WHERE upper(STUDNAME) = 'bILaL'; --NO RECORDS FOUND  



India Ventures
INDIA VENTURES

SELECT COUNT(*) FROM STUD;

SELECT COUNT(1234) FROM STUD;
SELECT COUNT('ANY NUMBER OR STR CAN BE INSERTED') FROM STUD; --COUNT(ANY NUMBER),COUNT('ANT STR WITHIN QUOTES')
SELECT COUNT('NO.OF STUDENTS') FROM STUD;
SELECT COUNT('1') FROM STUD;

SELECT COUNT('RANDOMSTR'),COUNT(STUDID),COUNT(STUDNAME),COUNT('STUDNAME') FROM STUD; --COLUMN NAME CAN BE INSERTED W/O QUOTES
--BUT NULL RECORDS WILL NOT BE CONSIDERED WHEN COLUMN NAME IS ENTERED IN COUNT

select 
count(*),
count(1),count(8056187685),count(666499809284098209438),
count(sql),count('sql'),count('india')
from stud;

select count(*),count(studid),count(studname),count(gender),count('studname') from stud;
select * from stud;

count(*)-->count(any number)-->count(any string within quotes)