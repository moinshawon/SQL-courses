SELECT * FROM client;

-- Find any client's who are an LLC
SELECT client_name
FROM client
WHERE client_name LIKE '%LLC'; -- % means ANY CHARACTER, _ means ONE CHARACTER

SELECT * FROM employee;

update branch_supplier
set supplier_name = 'Stamford Labels'
where supplier_name = 'Stamford Lables';

-- Find any branch suppliers who are in the label business
SELECT supplier_name
FROM branch_supplier
WHERE supplier_name like '% Labels';

-- Find any employee born on the 10th of the month
SELECT emp_id
FROM employee
WHERE birth_day LIKE '_____10%';


-- Find any clients who are schools
SELECT client_name
FROM client
WHERE client_name like '%school%';

