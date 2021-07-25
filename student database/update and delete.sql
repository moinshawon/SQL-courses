SELECT * FROM student; -- UPDATE AND DELETE


UPDATE student
SET std_id = 2
WHERE std_id = 6;   -- std_id will be changed and go to upper row

UPDATE student
SET cgpa = 3.76, major = 'bbs'
WHERE city = 'ctg'; 

UPDATE student
SET major = 'CS'
WHERE std_name = 'Arnob' OR std_name = 'Ragib';

UPDATE student
SET std_name = 'biral rifat', cgpa = 2.02 
WHERE city = 'null';    --  null can't be put in where clause

DELETE FROM student
WHERE cgpa = 2.01; -- the whole row will be deleted

DELETE FROM student
WHERE city = 'dhk'; -- all the rows that has dhk will be deleted 

DELETE FROM student
WHERE city = 'ctg' AND cgpa = 3.76; --  the row that has ctg and 3.76 will be deleted

DELETE FROM student
WHERE city = NULL; --  no change. NULL cant be put in condition

DELETE FROM student; -- delete all the rows



