CREATE DATABASE Lab2;
Create table countries(
  country_id Serial primary key,
  country_name varchar(50),
  region_id INT,
  population INT
);
insert into countries(country_id,country_name, region_id, population) values (default ,'Kazakhstan', 1,18000000);
select * from countries;
insert into countries(country_id,country_name) values (default , 'Turkey');
insert into countries(region_id) values(null );
insert into countries(country_id,country_name, region_id, population) values (default ,'Uzbekistan',2,30000000),
                                                                             (default ,'Iran',3,31345600),
                                                                             (default ,'Irak',4,45674674);
alter table countries alter column country_name set default ('Kazakhstan');
insert into countries(country_name) values (default );
insert into countries values (default );
Create table countries_new(
  like countries
);
insert into countries_new select * from countries ;
select * from countries_new;
update countries set region_id=1 where region_id is null ;
update countries set population=population*1.1 returning country_name,population as "New population";
delete from countries_new as c using countries as cn where c.country_id=cn.country_id returning *;
delete from countries returning *;



