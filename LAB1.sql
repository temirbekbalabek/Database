CREATE database lab1;
create table users(
  id serial,
  firstname varchar(50) not null ,
  lastname varchar(50) not null
);
alter table users add column isadmin int;
alter table users alter column isadmin type boolean using isadmin::boolean;
alter table users alter column isadmin set default false ;
select * from users;
alter table users add constraint constraint_tmp primary key(id);
create table tasks(
  id serial primary key,
  name varchar(50)not null ,
  user_id int
);
  drop table tasks;
drop DATABASE lab1;



