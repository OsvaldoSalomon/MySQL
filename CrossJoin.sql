-- Create table 1

create table table1
(id int, value varchar(10));
insert into table1 (id, value)
select 1, 'First'
union all
select 2, 'Second'
union all
select 3, 'Third'
union all
select 4, 'Fourth'
union all
select 5, 'Fifth';

-- Create table 2
create table table2
(id int, value varchar(10));
insert into table2 (id, value)
select 1, 'First'
union all
select 2, 'Second'
union all
select 3, 'Third'
union all
select 6, 'Sixth'
union all
select 7, 'Seventh'
union all
select 8, 'Eighth';

select * from table1;
select * from table2;

/* CROSS JOIN */

select t1.*,t2.* from table1 t1
cross join table2 t2;

-- Clean up
drop table table1;
drop table table2;



