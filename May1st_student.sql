-- copying same data from one table to other
SELECT * FROM rgm.student;
create table table1(
st_id int primary key,
st_name varchar(30) not null,
st_contact int not null,
st_dept varchar(25) not null
);
INSERT INTO table1 SELECT * FROM student;
SELECT * FROM rgm.table1; 
-- Renaming column name
ALTER TABLE student RENAME COLUMN st_name to name;
-- Adding new column
ALTER TABLE student ADD address varchar(30);
UPDATE student SET address ="hyd" WHERE st_id=502 or st_id=504;
-- Modifying column datatype
ALTER TABLE student MODIFY COLUMN address varchar(50);
-- Droping column
ALTER TABLE student DROP COLUMN address;

-- adding new column marks
ALTER TABLE student ADD marks int;
UPDATE student SET marks=90 WHERE st_id=502 or st_id=504;

select min(marks) from student;

select max(marks) from student;

select avg(marks) from student;

select sum(marks) from student;

select count(marks) from student;

select sum(marks) as total from RGM_student;

create database db;

 show databases;
 
 drop database db;  --   deletes the  database db 
