-- Add the extra branch
select * from branch;
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

SELECT employee.emp_id, employee.first_name, branch.mgr_id
FROM employee
JOIN branch -- it works as a inner join
ON employee.emp_id = branch.mgr_id; -- no problem in reverse

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM branch
LEFT JOIN employee -- fix the left side. here branch
ON employee.emp_id = branch.mgr_id; -- no problem in reverse

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM branch
RIGHT JOIN employee -- fix the right side. here employee
ON employee.emp_id = branch.mgr_id; -- no problem in reverse


 