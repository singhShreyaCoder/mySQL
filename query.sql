USE Workers;

--Insert values into table
INSERT INTO users(`Name`,`Email`,`User_Address`,`Date_of_birth`,`Role`,`Gender`)
VALUES
('Shreya Kumari','shreya@gmail.com','Greater Noida','2005-11-07','Data Analyst','Female'),
('Utkarsh Yadav','utkarsh@gmail.com','Ghaziabad','2005-12-10','Developer','Male'),
('Shagun','shagun@gamil.com','Sorrow','2007-10-15','Java Developer','Female'),
('Riya Gupta','riya@gamil.com','Ranchi','2006-01-03','CA','Female'),
('Sanya singh','sanya@gmail.com','Delhi','2005-05-27','Teacher','Female'),
('Surbhi Singh','surbhi@gmail.com','Greater Noida','2001-08-05','Teacher','Female');

INSERT INTO users(`Name`,`Email`,`User_Address`,`Date_of_birth`,`Role`,`Gender`,`Salary`)
VALUES('Vansh Sharma','vansh@gmail.com','Haldoni','2008-06-04','Game developer','Others','30000'),
('Shreyansh Agarwal','shreyansh@gamil.com','Greater Noida','2006-11-04','AI engineer','Male','60000');

SELECT * FROM Users;

--Filtering rows with WHERE clause
SELECT Name, Email FROM users WHERE `Gender`='Male';

--Not equal to 
SELECT Name,User_Address FROM users WHERE `Gender`!='Male';

--Greater than/ less than
SELECT Name,Gender FROM users WHERE `Date_of_birth`<'2005-11-08';

--NULL/NOT NULL
SELECT * FROM users
WHERE date_of_birth IS NOT NULL;

--Between
SELECT * FROM users
WHERE `Date_of_birth` BETWEEN '2004-01-01' AND '2006-12-31';

--use of IN
SELECT * FROM users
WHERE `Gender` IN ('Female');

--AND and OR 
SELECT * from users
WHERE `Gender`='Female' AND `Date_of_birth`> '2005-01-01'; 

SELECT * FROM users
WHERE `User_Address`= 'Delhi' OR `User_Address`='Greater Noida';

--LIKE(Pattern matching)
SELECT * FROM users
WHERE NAME LIKE 'S%'; --Starts with 

SELECT * FROM users
WHERE Name LIKE '%SINGH';  --Ends with 

SELECT * FROM users
WHERE Name LIKE '%sh%'; --In Between

--ORDER BY
SELECT * FROM users
ORDER BY Name ASC;

--LIMIT
SELECT * FROM users
LIMIT 2;         --Top 2 rows

SELECT * from users
LIMIT 6 OFFSET 2; --skips first 2 rows

SELECT * FROM users
LIMIT 3,6;        --get rows starting from 4th row




