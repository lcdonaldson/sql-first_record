SELECT 
  home_teacher.id, 
  home_teacher.name, 
  home_teacher.age, 
  home_teacher.companion
FROM home_teaching
WHERE home_teacher.age > 30;

INSERT INTO home_teaching (home_teacher.comapanion)
VALUES('Raymond');
    
