SELECT * FROM student;


SELECT major, cgpa
FROM student;

SELECT *
FROM student
ORDER BY std_id DESC;   -- show all the row in descending order

SELECT *
FROM student
ORDER BY major, std_id; -- show all rom in major's alphabatic order, if same then check std_id order

SELECT *
FROM student
LIMIT 2;               -- just 2 rows will be shown

SELECT *
FROM student
ORDER BY std_id DESC
LIMIT 2;               -- 2 rows will be shown in std_id desc order

SELECT *
FROM student
WHERE city = 'ctg' OR major = 'CSE'; -- < , > , <= , >= , <> , AND , OR

SELECT *
FROM student
WHERE major <=3 AND std_name <> 'Moin'; -- the major column's length less than 3 and without Moin 

SELECT *
FROM student
WHERE std_name = 'Moin', 'Rifat', 'Navid'; -- ERROR it doesn't work in that way

SELECT *
FROM student
WHERE std_name IN ('Moin', 'Rifat', 'Navid') AND std_id > 2
ORDER BY major DESC
LIMIT 3; -- limit has to be in last line 







