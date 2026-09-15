USE workers;

--1.INNER JOIN
SELECT Users.Name, companies.Company_Address
FROM users
INNER JOIN companies
ON users.id= companies.user_id;

SELECT users.`Name`,
users.`User_Address`,
companies.`Company_name`,
companies.`Company_Address`
FROM users
INNER JOIN companies
ON users.`User_Address`=companies.`Company_Address`;

SELECT `Name`, user_address
FROM users u
WHERE EXISTS(
    SELECT 1
    FROM companies c
    WHERE u.`User_Address`= c.`Company_Address`
);

---------2. LEFT JOIN---------
SELECT users.`Name`,
users.`User_Address`,
companies.`Company_name`,
companies.`Company_Address`
FROM users
LEFT JOIN companies
ON users.`User_Address`=companies.`Company_Address`;



--------3.RIGHT JOIN--------------
SELECT users.`Name`,
users.`User_Address`,
companies.`Company_name`,
companies.`Company_Address`
FROM users
RIGHT JOIN companies
ON users.`User_Address`=companies.`Company_Address`;
