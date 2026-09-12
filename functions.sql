USE workers;
----------------------------
--1.Aggregate functions
----------------------------

--COUNT()
SELECT COUNT(*) FROM users;

SELECT COUNT (*) FROM users
WHERE `Gender`='Female';

SELECT COUNT(*) FROM users
WHERE `Salary`>100000;

--MIN() MAX()
SELECT MIN(Salary) AS min_salary,
MAX(Salary) AS max_salary 
FROM users;

---------------------------------------
--2.Aggregate  and string functions
---------------------------------------

--SUM()
SELECT SUM(Salary) AS total_salary
FROM users;

--Average
SELECT AVG(Salary) AS average_salary
FROM users;

--GROUP BY()
SELECT Gender, AVG(Salary) AS average_salary
FROM users
GROUP BY(`Gender`);


--------------------------
--3. String function
--------------------------

--LENGTH()
SELECT Name,
LENGTH(Name) AS name_length
FROM users;

--LOWER() and UPPER()
SELECT Name,
LOWER(Name) AS lowercase_name
FROM users;

SELECT Name,
UPPER(Name) AS uppercase_name
FROM users;

--CONCAT()
SELECT CONCAT(Name,' <', Email, '>')
AS user_email
FROM users;

----------------------------
--4. date functions
----------------------------

--NOW()
SELECT NOW();

--YEAR(),DAY(),MONTH()
SELECT name,
YEAR(date_of_birth) as birth_year
FROM users;

SELECT Name, 
MONTH(DATE_OF_BIRTH) AS birth_month
FROM users;

SELECT name,
DAY(date_of_birth) AS birth_day
FROM users;

SELECT Name,
DATEDIFF(curdate(),date_of_birth) AS days_lived
FROM users;

SELECT Name,
TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())
FROM users;

---------------------------------
--5.Mathematical functions
---------------------------------

--ROUND(),FLOOR(),CEIL()
SELECT Salary,
ROUND(Salary) AS rounded,
FLOOR(Salary) AS floored,
CEIL(Salary) AS ceiled
FROM users;

--conditional function

SELECT name, salary,
IF(salary>70000,'high salary','low salary') as salary_status
FROM users;