CREATE TABLE home_teacher (
id int,
name varchar (255),
age int,
companion varchar(255)
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
    
SELECT 
  id, name, age, companion
FROM home_teacher
WHERE age > 30;

DELETE FROM home_teacher WHERE id = 5;

INSERT INTO home_teaching (id, name, age, companion)
VALUES(5, 'David', 25, 'Sam');
