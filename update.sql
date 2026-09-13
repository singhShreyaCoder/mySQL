USE Workers;

--update table
UPDATE users
SET `Name`= 'Didiyaaa'
WHERE `Date_of_birth`='2001-08-05';

--update salary based on role
UPDATE users
SET `Salary`=CASE 
    WHEN `Role`='Data Analyst' THEN 90000
    WHEN `Role`='Developer' THEN 100000
    WHEN `Role`='Java developer' THEN 80000
    WHEN `Role`='teacher' THEN 40000
    WHEN `Role`='CA' THEN 150000  
END
WHERE `Role` IN ('data analyst', 'developer','java developer','teacher', 'CA')


UPDATE users
SET `Salary`= `Salary`+10000
WHERE `Salary`<100000;

UPDATE users
SET `Name`= 'Meetha'
WHERE `Gender`='Others'
