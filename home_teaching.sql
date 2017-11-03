CREATE DATABASE home_teaching;

CREATE TABLE home_teacher (
id int,
name varchar (55),
age int,
companion varchar(55)
);

INSERT INTO home_teaching (id, name, age, comapanion)
VALUES(1, 'Raymond', 43, 'Steve');

INSERT INTO home_teaching (id, name, age, comapanion)
VALUES(2, 'Jace', 25, 'Carl');

INSERT INTO home_teaching (id, name, age, comapanion)
VALUES(3, 'Mike', 51, 'James');

INSERT INTO home_teaching (id, name, age, comapanion)
VALUES(4, 'John', 33, 'Eric');

INSERT INTO home_teaching (id, name, age, comapanion)
VALUES(5, 'Ryan', 37, 'Dee');

UPDATE home_teaching
SET companion = 'Levi'
WHERE id='3';

SELECT sum(age)
FROM home_teacher
WHERE id > 2 and age > 35
GROUP BY name
HAVING COUNT(*) > 1;
    
SELECT 
  id, name, age, companion
FROM home_teacher
WHERE age > 30;

DELETE FROM home_teacher WHERE id = 5;

INSERT INTO home_teaching (id, name, age, companion)
VALUES(5, 'David', 25, 'Sam');

CREATE TABLE area (
id int,
neighborhood varchar (50),
street varchar (50),
address varchar(55)
);

INSERT INTO area (id, neighborhood, street, address)
VALUES(1, 'standing oaks', 'richardson', '740');

CREATE TABLE Persons (
ID int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
PRIMARY KEY (ID)
);

DELETE FROM Persons WHERE id = 2;
