CREATE TABLE home_teacher (
id int,
name varchar (255),
age int,
companion varchar(255)
);

INSERT INTO home_teaching (comapanion)
VALUES('Raymond');
    
SELECT 
  id, 
  name, 
  age, 
  companion
FROM home_teacher
WHERE age > 30;
