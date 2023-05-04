create database Employee;
CREATE TABLE EMPLOYE_DETAILS(
EMP_ID INT PRIMARY KEY NOT NULL,
EMP_NAME VARCHAR(20),
JOB_NAME VARCHAR(30),
MANAGER_ID INT,
HIRE_DATE DATE,
SALARY INT,
DEP_ID int
);
INSERT INTO EMPLOYE_DETAILS VALUES(501,"SAM","SOFTWARE DEVELOPER",401,'2020-5-1',50000,101),
(502,"RAM","ARTIST",402,'2020-5-8',60000,102),(503,"MAHESH","TESTER",403,'2020-5-29',200000,103),
(504,"VENKY","TESTER",404,'2022-8-1',30000,104),(505,"HONEY","ENGINEER",405,'2023-1-1',40000,105),
(506,"RUKS","ENGINEER",406,'2020-9-1',100000,106),(507,"PARI","SINGER",407,'2021-8-12',60000,107),
(508,"SUNNY","SOFTWARE DEVELOPER",408,'2023-5-1',30000,108),(509,"DEEPTHI","REPORTER",409,'2021-5-1',70000,109),
(600,"ROOP","ENGINEER",500,'2022-11-9',55000,200);
SELECT * FROM EMPLOYE_DETAILS;
-- FIND ALL SALARIES OF EMPLOYEES
SELECT SALARY FROM EMPLOYE_DETAILS;
-- UNIQUE DESIGNATIONS 
SELECT JOB_NAME FROM EMPLOYE_DETAILS GROUP BY JOB_NAME HAVING COUNT(JOB_NAME)<=1;
-- CHANGE SALARY WHERE NAME=RUKS
UPDATE EMPLOYE_DETAILS SET SALARY = 100000 WHERE EMP_NAME="RUKS";

CREATE DATABASE FOOTBALL;
CREATE TABLE FOOTBALLVENUE(
VENUE_ID INT PRIMARY KEY,
VENUE_NAME VARCHAR(30),
CITY_ID INT,
CAPACITY int
);
INSERT INTO FOOTBALLVENUE VALUES(10001,'PARIS',2020,14000),
(10002,'TURKEY',2024,15000),(10003,'AUSTRALIA',2030,16000),
(10004,'INDIA',3030,20000),(10005,'UK',2028,13000),(10006,'PARIS',202,140000),
(10007,'AUSTRALIA',2030,16000),(10008,'TURKEY',2024,15000),
(10009,'INDIA',3030,20000),(10010,'SRILANKA',2040,11000);
SELECT * FROM FOOTBALLVENUE;
-- COUNT NO.OF VENUES 
-- LIST ALL VE NUES AND CAPACITIES IN FORMAT OF "LOCATION" AND "VOLUME"
SELECT VENUE_NAME AS LOCATION, CAPACITY AS VOLUME FROM FOOTBALLVENUE;
-- WITHOUT DUPLICATE VENUES
SELECT DISTINCT VENUE_NAME AS LOCATION,  CAPACITY AS VOLUME FROM FOOTBALLVENUE;
-- DELETE DETAILS WHERE VENUENAME = AUSTRALIA
DELETE FROM FOOTBALLVENUE WHERE VENUE_NAME='AUSTRALIA';
SELECT * FROM FOOTBALLVENUE;

SELECT * FROM CUSTOMER;
-- CREATING ALIAS NAME FOR CUSTOMER TABLE 
CREATE VIEW LIK AS SELECT * FROM CUSTOMER;
SELECT * FROM LIK;
CREATE VIEW RUK AS SELECT NAME,CITY,SALESMAN_ID FROM CUSTOMER;
SELECT * FROM RUK;

CREATE INDEX PARI ON CUSTOMER(CITY);
SELECT * FROM PARI;
