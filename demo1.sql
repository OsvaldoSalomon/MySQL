-- SELECT 'Hello', 'World';
-- SELECT 'Hello' as FirstWord, 'World' as SecondWord;
USE contacts;

/* SELECT p.person_last_name
FROM
person p
where p.person_first_name = 'Jon'
or
p.person_contacted_number > 0; */
/* select p.person_last_name
FROM
person p
where p.person_contacted_number
between 1 and 20; */
/* select p.person_last_name

from
person p
where p.person_first_name like '%h%'; */
/* select p.person_last_name

from person p
where p.person_first_name
in ('Jon','Fritz'); */
/* select p.person_last_name
from person p
where p.person_first_name
is null;*/
/* select e.email_address_person_id, e.email_address
from email_address e
where e.email_address_person_id is not null; */
