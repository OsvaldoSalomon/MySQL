-- UPDATE Statement
Use Sakila;

-- Populate Sample Table
create table ActorSample (
	actor_id smallint(5) unsigned not null auto_increment,
    first_name varchar(45) not null,
    last_name varchar(45) null,
    last_update timestamp not null default current_timestamp
					on update current_timestamp,
	primary key (actor_id)
);
insert into sakila.ActorSample (first_name, last_name, last_update)
select first_name, last_name, last_update from sakila.actor;

-- Update Single Row Single Column
update sakila.ActorSample
set first_name = 'Pinal'
where actor_id = 1;
update sakila.ActorSample
set last_name = 'Dave'
where actor_id = 1;




