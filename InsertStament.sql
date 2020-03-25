-- INSERT Statement

use sakila;

create table ActorSample (
actor_id smallint(5) unsigned not null auto_increment,
first_name varchar(45) not null,
last_name varchar(45) null,
last_update timestamp not null default current_timestamp on update current_timestamp,
primary key (actor_id)
);

-- Insert Single Row
insert into sakila.actorsample(first_name, last_name, last_update)
values ('Pinal', 'Dave', '2013-04-15');
-- Check Data
select * from ActorSample;

-- Insert Single Row
insert into sakila.actorsample
values (default, 'Nupur', 'Dave', '2013-04-16');
-- Check Data
select * from ActorSample;

-- Insert Single Row
insert into sakila.actorsample(first_name, last_name)
values ('Pinal', 'Dave');
-- Check Data
select * from ActorSample;

-------------
-- Insert Multiple Values
insert into sakila.actorsample(first_name, last_name, last_update)
values ('Pinal', 'Dave', '2020-03-15'),
	   ('Nupur', 'Dave', '2020-03-16'),
       ('Shaivi', 'Dave', '2020-03-17');
-- Check Data
select * from ActorSample;

-- Subquery
insert into sakila.actorsample(first_name, last_name, last_update)
select first_name, last_name, last_update from actor
where first_name = 'Nick';
-- Check Data
select * from ActorSample;



