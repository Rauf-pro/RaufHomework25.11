--TASK 13.png
--SELECT 'This is SQL Exercise, Practice and Solution';


--TASK 5.png
--CREATE DATABASE Homework;
USE Homework;
--CREATE TABLE nobel_win 
--(YEAR int,
-- SUBJECT nvarchar(200),
-- WINNER nvarchar(200),
-- COUNTRY nvarchar(200),
-- CATEGORY nvarchar(200)
-- );

--INSERT INTO nobel_win ([YEAR], [SUBJECT], WINNER, COUNTRY, CATEGORY)
--VALUES ( 1970, 'Physics', 'Hannes Alfen', 'Sweden', 'Scientist'),
--       ( 1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
--	   ( 1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
--	   ( 1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
--	   ( 1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
--	   ( 1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
--	   ( 1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
--	   ( 1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
--	   ( 1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
--	   ( 1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
--	   ( 1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
--	   ( 1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
--	   ( 1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
--	   ( 1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
--	   ( 1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
--	   ( 1987, 'Chemistry', 'Donald J.Cram', 'USA', 'Scientist'),
--	   ( 1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
--	   ( 1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
--	   ( 1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
--	   ( 1994, 'Peace', 'Yitzakh Rabin', 'Israel', 'Prime Minister'),
--	   ( 1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
--	   ( 1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
--	   ( 1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
--	   ( 1994, 'Literature', 'Kenzbora Oe', 'Japan', 'Linguist');

-- //Order the result by subject, acsending except 'Chemistry' and 'Economics'.//
Select * from nobel_win 
WHERE SUBJECT not in ('Chemistry', 'Economics')
order by SUBJECT ASC; 

--TASK 8.png / 10.png

CREATE TABLE salesman
(salesman_id int PRIMARY KEY,
  [name] nvarchar(200),
  city nvarchar(200),
  comission float(2));

  drop table salesman
INSERT INTO salesman (salesman_id, [name], city, comission)
VALUES (5001, 'James Hoog', 'New York', 0.15),
       (5002, 'Nail Knite', 'Paris', 0.13),
       (5005, 'Pit Alex', 'London', 0.11),
       (5006, 'Mc Lyon', 'Paris', 0.14),
	   (5007, 'Paul Adam', 'Rome', 0.13),
	   (5003, 'Lauson Hen', 'San Jose', 0.12);

-- task 1 // Display all the information of all salesman//
SELECT * FROM salesman;

--task 5 // Display all the information who gets the comission within the range more than 0.10% and less than 0.12%//?
Select * from salesman
where comission > 0.10 and comission< 0.12;


--task 6 // Display spacific columns like name and commission //

SELECT [name],comission
FROM salesman;


--Task 8.png // who live in cities apart from 'Paris' and 'Rome'//
 SELECT * FROM salesman
 WHERE city not in ('Paris', 'Rome');

 --Task 10.png // whose name starts with any letter 'A' and 'L'//

 SELECT * FROM salesman
 where [name] LIKE '% L%' or [name] LIKE '% A%';

 

--TASK 9.png / 11.png / 12.png

CREATE TABLE customer
( customer_id int PRIMARY KEY,
 cust_name nvarchar(200),
 city nvarchar(200),
 grade int,
 salesman_id int);

 INSERT INTO customer ( customer_id, cust_name, city, grade, salesman_id)
 VALUES ( 3002, 'Nick Rimando', 'New York', 100, 5001),
        ( 3007, 'Brad Davis', 'New York', 200, 5001),
		( 3005, 'Graham Zusi', 'California', 200, 5002),
		( 3008, 'Julian Green', 'London', 300, 5002 ),
		( 3004, 'Fabian Jhonson', 'Paris', 300, 5006 ),
		( 3009, 'Geoff Cameron', 'Berlin', 100, 5003),
		( 3003, 'Jozy Altidor', 'Moscow', 200, 5007),
		( 3001, 'Bard Guzan', 'London', null, 5005);

	-- task 3 // Display all customers in New York who have a grade value above 100//?
	SELECT *
	FROM customer
	WHERE city = 'New York' and grade>100;

	--task 4 // Display all the information for those customers with grade of 200//
	SELECT * FROM customer
	WHERE grade = 200;

	--TASK 9.png // Whose ID belongs to any of the values 3007, 3008 and 3009//?
	SELECT * FROM customer
	WHERE customer_id in (3007, 3008, 3009);

	--TASK 11.png // Whose names end with the letter 'n'//?
	SELECT * FROM customer 
	WHERE cust_name LIKE '% %n';

	--TASK 12.png // Whose grade value exists//?
    SELECT * FROM customer
	WHERE grade is not null;


--TASK 2 emp_details

--CREATE TABLE emp_details ( EMP_IDNO int PRIMARY KEY, 
--                           EMP_FNAME nvarchar(25),
--						   EMP_LNAME nvarchar(30),
--						   EMP_DEPT int
--						   );

--INSERT INTO emp_details ( EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT)
--VALUES (127323, 'Michale', 'Robbin', 57),
--       (526689, 'Carlos', 'Snares', 63),
--	   (843795, 'Enric', 'Dosio', 57),
--	   (328717, 'Jhon', 'Snares', 63),
--	   (444527, 'Joseph', 'Dosni', 47),
--	   (659831, 'Zanifer', 'Emily', 47),
--	   (847674, 'Kuleswar', 'Sitaraman', 57),
--	   (748681, 'Henrey', 'Gabriel', 47),
--	   (555935, 'Alex', 'Manuel', 57);

--task 2 // whose last name is Dosni or Emily//?

SELECT EMP_LNAME 
FROM emp_details 
WHERE EMP_LNAME in ('Dosni', 'Emily');

