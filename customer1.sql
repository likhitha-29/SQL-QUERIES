CREATE DATABASE EXCERCISE;
SELECT * FROM CUSTOMER;
CREATE TABLE  CUSTOMER (ID INT PRIMARY KEY, NAME VARCHAR(30),CITY VARCHAR(20),GRADE INT ,SALESMAN_ID INT);
INSERT INTO CUSTOMER VALUES (101,'RUK','DELHI',98,201),
(102,'PARI','AP',95,202),
(103,'LIK','JAPAN',85,203),
(104,'OOPS','PIN',74,204),
(105,'DEEP','JK',190,205),
(106,'VI','MP',62,206),
(107,'JOEE','KERALA',45,207),
(108,'PRAV','KOLTATA',144,208),
(109,'SUD','MUMBAI',159,209),
(110,'KEER','JAIPUR',198,210);
-- TO FIND CUSTOMERS WHOSE GRADE IS ABOVE 100
SELECT * FROM customer WHERE GRADE>100;
-- TO FIND CUSTOMERS WHOSE GRADE IS ABOVE 100 AND IN ASCENDING ORDER
select * from customer where grade >=100 order by grade asc;
select * from customer where grade >=100 order by grade;

select * from  customer where city = "AP" and grade >=75; 


select * from  customer where city = "AP" or grade >=75; 



select * from  customer where  not city = "AP" or grade >75; 


select * from  customer where not city = "Mumbai" and grade >200; 

select * from  customer where not city = "Mumbai" or grade >200; 


