create table students(
                         id serial primary key,
                         name varchar(50) ,
                         age int,
                         major varchar(50),
                         gpa decimal(3,2)
);
insert into students(name, age, major, gpa) values
                                                ('An',20,'CNTT',3.5),
                                                ('Bình',21,'Toán',3.2),
                                                ('Cường',22,'CNTT',3.8),
                                                ('Dương',20,'Vật Lý',3.0),
                                                ('Em',21,'CNTT',2.9);
--1
insert into students(name, age, major, gpa) values
    ('Hùng',23,'Hóa học',3.4);

--2
update students set gpa =3.6 where name = 'Bình';

--3
delete from students where gpa < 3.0;

--4
select name,major from students order by gpa desc ;

--5
select name from students 
where major = 'CNTT' order by id limit 1;

--6
select name,gpa from students 
where gpa between 3.0 and 3.6;

--7
select name from students where name ilike 'C%';

--8a
select id,name from students order by name asc,id asc limit 3;

--8b
select id,name from students order by name asc,id asc limit 3 offset 1;

