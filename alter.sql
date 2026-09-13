-- Active: 1788709491440@@127.0.0.1@3306@workers
--Create database
CREATE DATABASE Workers;

--Show datbase
SHOW DATABASE;

--Use database
USE Workers;

--Create tables in database

CREATE TABLE Users(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(60) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    GENDER ENUM("Male","Female","Others"),
    Date_of_birth DATE,
    City VARCHAR(70),
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;

--select specific column from table
SELECT Name, Email FROM users;

--Rename table
RENAME TABLE Users TO Employees;

--Rename back 
RENAME TABLE Employees TO Users;

--ALTER COLUMN
ALTER TABLE users
ADD COLUMN Is_Active BOOLEAN DEFAULT TRUE;

--DROP COLUMN
ALTER TABLE users
DROP COLUMN Is_Active;

--Modify column
ALTER TABLE users
MODIFY COLUMN Name VARCHAR(100);

--MOVE A COLUMN POSITION
ALTER TABLE users
MODIFY COLUMN Email VARCHAR(100) FIRST;

--MOVE A COLUMN AFTER ANOTHER COLUMN
ALTER TABLE users
MODIFY COLUMN Gender ENUM("Male","Female","Others") AFTER Name;

--RENAME A COLUMN
ALTER TABLE users
RENAME COLUMN City TO User_Address;

ALTER TABLE Users
ADD Salary DECIMAL(10,2);