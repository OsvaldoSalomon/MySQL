use contacts;

-- Do not do this at home, work or anywhere else
/* select 
p.person_first_name, 
p.person_last_name, 
e.email_address
from person p, email_address e*/

/* INNER JOIN
select p.person_first_name, p.person_last_name, e.email_address
from person p inner join email_address e 
on p.person_id = e.email_address_person_id;
*/

/* LEFT OUTER JOIN
select p.person_first_name, p.person_last_name, e.email_address
from person p left outer join email_address e 
on p.person_id = e.email_address_person_id; */

/* RIGHT OUTER JOIN
select p.person_first_name, p.person_last_name, e.email_address
from person p right outer join email_address e 
on p.person_id = e.email_address_person_id; */

/* FULL OUTER JOIN SIMULATION, GIVEN THAT 'FULL' ISN'T A KEYWORD
select p.person_first_name, p.person_last_name, e.email_address
from person p left outer join email_address e 
on p.person_id = e.email_address_person_id
union distinct
select p.person_first_name, p.person_last_name, e.email_address
from person p right outer join email_address e 
on p.person_id = e.email_address_person_id; */


