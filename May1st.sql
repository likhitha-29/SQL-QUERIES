create database HeroVired;
create table RGM(
 id int primary key not null,
 name varchar(30) not null,
 college varchar(30) not null,
 session varchar(20) not null,
 contact int not null,
 address varchar(25) not null
 );
 
 SELECT * FROM HeroVired.RGM; 
 INSERT INTO RGM VALUES (101,"deep","rgm","Java",897,"ndl");
 INSERT INTO RGM VALUES (102,"de","rgm","Python",89567,"ndl");
 INSERT INTO RGM VALUES (103,"jo","rgm","C",893347,"ndl");
 INSERT INTO RGM VALUES (104,"ep","rgm","C++",8989897,"ndl");
 INSERT INTO RGM VALUES (105,"ki","pr","Java",897,"knl");
 INSERT INTO RGM VALUES (106,"tu","pr","Go",97,"knl");
 INSERT INTO RGM VALUES (107,"deit","svr","html",89897,"ndl");
-- --  INSERT INTO RGM VALUES (108,"dyu","svr","C",89997,"ndl");
-- --  INSERT INTO RGM VALUES (109,"dep","pr","Java",897,"knl");-- 
 INSERT INTO RGM VALUES (110,"deepthi","rgm","Python",897,"ndl");
SELECT * FROM HeroVired.RGM;
-- Find all the rows where session is equal to java
SELECT * FROM rgm WHERE session="Java";

SELECT id,name,session FROM rgm WHERE session ="Java";

SELECT * FROM rgm WHERE session ="C" AND address="ndl";

SELECT * FROM rgm WHERE address="knl";

-- Search name starts with "d"

SELECT * FROM rgm WHERE name LIKE 'd%';
SELECT * FROM rgm WHERE name LIKE 'de%';
SELECT * FROM rgm WHERE name LIKE '%ee%';
SELECT * FROM rgm WHERE name LIKE '%I';
SELECT * FROM rgm WHERE name NOT LIKE '_E%';
SELECT * FROM rgm WHERE name LIKE '_E%';