SELECT * FROM employee;


-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find the number of employees
SELECT COUNT(super_id)
FROM employee;      -- WRONG !! there is a null so wont get real count number

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;


-- Find the sum of all employee's salaries
SELECT SUM(salary) 
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex; -- take M & count(M), take F count(F) 

SELECT * FROM works_with;

-- Find the total sales of each salesman
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;   -- take 102 & give SUM(102), take 105 & give SUM(105).....

-- Find the total amount of money spent by each client
SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;

-- find the number of female employees born after 1970
SELECT count(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day >= '1971-01-01';


