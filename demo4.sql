use contacts;

/* INSERT
insert into 
person (
person_id,
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
) 
values 
(
6,
'John',
'Smith',
0,
'2020-03-15 14:22:38',
'2020-03-15 14:22:38'
);*/

/* BULK INSERT
insert into 
person (
person_id,
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
) 
values 
(
7,
'Papa',
'Dock',
0,
'2020-03-15 14:22:38',
'2020-03-15 14:22:38'
),
(
8,
'James',
'Jameson',
0,
'2020-03-15 14:22:38',
'2020-03-15 14:22:38'
),
(
42,
'Jim',
'Gordon',
0,
'2020-03-15 14:22:38',
'2020-03-15 14:22:38'
); */

/* UPDATE
update person p
set p.person_first_name = 'Bob'
where p.person_id = 4 */

/* DELETE
delete from person
where person_id > 6; */

-- CRUD stands for CREATE, READ, UPDATE and DELETE.
