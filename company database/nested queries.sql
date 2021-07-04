
-- Find names of all employees who have sold over 50,000
SELECT employee.first_name, employee.last_name
from employee
WHERE employee.emp_id IN (    -- this will give you emp_id. in can be multiple id repeated. no worry about that! 
	SELECT works_with.emp_id
	from works_with
	WHERE total_sales > 30000 -- second part of the the ques
);



-- Find all clients who handles by the branch that Michael Scott manages
-- Assume you know Michael's ID
 SELECT client.client_name
 from client
 where branch_id = (
	SELECT employee.branch_id
	from employee
	WHERE first_name = 'Michael' and last_name = 'Scott'
    LIMIT 1 -- in the (=) sign multiple value cant given. so make a limit
 );



 -- Find all clients who handles by the branch that Michael Scott manages
 -- Assume you DONT'T know Michael's ID

select client.client_name
from client
where client.branch_id = (
	SELECT branch.branch_id
	from branch
	where branch.mgr_id = (
		Select employee.emp_id
		from employee
		WHERE employee.first_name = 'Michael' and employee.last_name = 'Scott'
        LIMIT 1
	)
);


-- Find the names of employees who work with clients handled by the scranton branch

select employee.first_name, employee.last_name
from employee
where employee.emp_id IN (
	select works_with.emp_id
	from works_with           -- not all the employees works with client. so used works with table
) and employee.branch_id = 2; -- select cant not put in AND thats why gave it manually 



-- Find the names of all clients who have spent more than 100,000 dollars

select client_name
from client 
where client_id in (
	select client_id
	from (
		select sum(works_with.total_sales) as total_spent, works_with.client_id -- some client paid several time. so need to add all
		from works_with
		group by works_with.client_id  -- as we cant put the result into var like python. need to follow this way.
	) AS total_client_sales
	WHERE total_spent > 100000
);





