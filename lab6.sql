<<<<<<< HEAD
CREATE TABLE locations(
  location_id SERIAL primary key ,
  street_address varchar(50),
  postal_code varchar(12),
  city varchar(30),
  state_province varchar(12)
);
CREATE TABLE departments(
  department_id SERIAL PRIMARY KEY ,
  department_name varchar(50) unique ,
  budget integer,
  location_id INT REFERENCES locations
);
CREATE TABLE employees(
  employee_id SERIAL PRIMARY KEY ,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(20),
  salary INT,
  department_id INT REFERENCES departments
);

INSERT INTO locations (street_address, postal_code, city, state_province)values ('Gaidara',1,'Almaty','a'),
                             ('a',1,'ab','a'),
                             ('b',2,'ab','b'),
                             ('c',3,'abc','c');
--INSERT INTO departments (department_name, budget, location_id) VALUES ('KBTU',)
SELECT first_name, last_name, d.department_id, d.department_name from employees as e left join departments as d on e.department_id = d.department_id;
SELECT first_name, last_name, d.department_id, d.department_name from employees as e INNER JOIN departments as d  on e.department_id = d.department_id and d.department_id in(40,80);
SELECT first_name, last_name, d.department_id, d.location_id, l.state_province from employees as e INNER JOIN departments as d on e.department_id = d.department_id inner join locations l on d.location_id = l.location_id;
=======
alter table Movie add constraint movie_pkey primary key (mID); --1

alter table Movie add constraint movie_unique1 unique (title, year); --2

alter table Reviewer add constraint reviewer_pkey primary key (rID); --3

alter table Rating add constraint rating_unique1 unique (rID, mID, ratingDate); --4

alter table Reviewer alter column name set not null; --5

alter table Rating alter column stars set not null; --6

alter table Movie add constraint movie_checker1 check (year >= 1900); --7

alter table Rating add constraint rating_checker1 check (stars between 1 and 5); --8

alter table Rating add constraint rating_checker2 check (ratingDate >= TO_DATE('2000-01-01', 'yyyy-mm-dd')); --9

/*checking errors, constraint enforcement // task 2-3 errors*/

alter table Rating add constraint rating_fkey1 foreign key (rID) references Reviewer on update cascade on delete set null; --task4 / 26

alter table Rating add constraint rating_fkey2 foreign key (mID) references Movie on delete cascade; --task4 / 26

select conname, contype, consrc from pg_constraint;

select * from Movie;


>>>>>>> 9783e1a23f4ffc06db8d89f4e90fb1d2a483b450
