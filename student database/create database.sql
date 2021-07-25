CREATE TABLE student (
	std_id INT PRIMARY KEY auto_increment,
    std_name VARCHAR(20) not null,
    major VARCHAR(20) default 'no one',
    cgpa decimal(3,2) unique, -- how many digit i want to store, how many digit will be after point
    city VARCHAR(20)
);

describe student; 
alter table student add gpa decimal(3, 2); -- add new column
alter table student drop gpa; -- drop a column

