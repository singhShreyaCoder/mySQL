SHOW DATABASES;

USE DATABASE Books;

SELECT DATABASE();

CREATE TABLE NOVELS(
    Name VARCHAR(60) PRIMARY KEY,
    Author VARCHAR(60) NOT NULL,
    Ratings FLOAT(4,2) NOT NULL
);

SHOW TABLES;

INSERT INTO NOVELS(Name,Author,Ratings)
VALUES('Verity','Coolen hover', 5),
    ('The Predator','Ruynx',4.5),
    ('The Reaper','Ruynx',5)

SELECT * FROM NOVELS;

SHOW COLUMNS FROM novels;


SHOW TABLES;

ALTER TABLE novels ADD COLUMN Reviews VARCHAR(20);

UPDATE novels
SET `Reviews`='good'
WHERE `Name`='verity';

UPDATE novels
SET `Reviews`='Best DR book'
WHERE `Name`='The Reaper';

UPDATE novels
SET `Reviews`='LOVED IT'
WHERE `Name`='The predator';




