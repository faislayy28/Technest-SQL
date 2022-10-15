CREATE TABLE COUNTRY(NAME VARCHAR2(50), continent varchar(50));
INSERT INTO COUNTRY VALUES('INDIA','Asia');
INSERT INTO COUNTRY VALUES('NEPAL','Asia');
INSERT INTO COUNTRY VALUES('CHINA','Asia');
INSERT INTO COUNTRY VALUES('PAKISTAN','Asia');
INSERT INTO COUNTRY VALUES('Liby','Africa');
INSERT INTO COUNTRY VALUES('SRI LANKA','Asia');
INSERT INTO COUNTRY VALUES('AFGHANISTAN','Asia');
INSERT INTO COUNTRY VALUES('UNITED KINGDOM','Europe');
INSERT INTO COUNTRY VALUES('RUSSIA','Europe');

Select Name,continent from country
Order by
case when name = 'INDIA' then 2 
when name = 'AFGHANISTAN' then 4
else 5 end, Continent asc;


--NAME	    CONTINENT
INDIA	    Asia
AFGHANISTAN	Asia
Liby	    Africa
PAKISTAN	Asia
SRI LANKA	Asia
NEPAL	    Asia
CHINA	    Asia
RUSSIA	    Europe
UNITED KINGDOM	Europe

Select ascii('s'),ascii('f') from dual;

Select continent, name from country
order by
case when name = 'RUSSIA' then 1
when name = 'UNITED KINGDOM' then 2 
when continent = 'Africa' then 1 else 4 end, continent desc; --Russia-1 , Africa-1 contradict

CONTINENT	NAME
Europe	RUSSIA
Africa	Liby
Europe	UNITED KINGDOM
Asia	CHINA
Asia	PAKISTAN
Asia	INDIA
Asia	SRI LANKA
Asia	AFGHANISTAN
Asia	NEPAL

Select continent, name from country
ORDER BY
case when name = 'RUSSIA' then 'A'
when name = 'UNITED KINGDOM' then 'B' 
when continent = 'Africa' then 'A' else 'C' END, continent desc;