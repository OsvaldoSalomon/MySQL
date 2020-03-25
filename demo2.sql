use contacts;

/* select p.person_first_name, p.person_last_name
from person p 
order by p.person_last_name; */

/* SET FUNCTIONS
count
max
min
avg
sum */

/* SET FUNCTIONS WITH QUALIFIERS
-- COUNT
select count(p.person_first_name)
from person p
where p.person_last_name = 'Ahern';
-- MAX
select max(p.person_contacted_number)
from person p;
-- MIN
select min(p.person_contacted_number)
from person p;
-- AVG
select avg(p.person_contacted_number)
from person p;
-- SUM
select sum(p.person_contacted_number)
from person p; */

/* GROUP BY and HAVING
 select count(p.person_first_name), p.person_first_name
from person p
group by p.person_first_name
having p.person_first_name = 'Jon'; */

/* HAVING Example
select count(p.person_first_name) as FirstNameCount , 
p.person_first_name
from person p
group by p.person_first_name
having count(p.person_first_name) > 1; */