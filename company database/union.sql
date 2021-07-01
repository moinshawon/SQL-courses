SELECT * FROM works_with;

-- Find a list of employee and branch names

SELECT first_name AS Emp_name_and_details
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT total_sales
FROM works_with; -- both need to select the same num of column and need to have similar data type

SELECT client_name, branch_id
FROM client
UNION
SELECT client_id, total_sales
FROM works_with;

-- Find a list of all clients & branch suppliers' names
SELECT client_name
FROM client
union
SELECT supplier_name
FROM branch_supplier;


