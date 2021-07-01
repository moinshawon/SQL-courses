select * from student;

insert into student values(5, 'Ragib', 'BBS', '3.33', 'dhk'); -- normal way to insert
insert into student values(7, 'Arnob', 'EEE', '3.29', 'dhk'); -- normal way to insert
insert into student values(10, 'Navid', 'BBS', '2.01', 'dhk'); -- normal way to insert
insert into student values(9, 'Joy', 'CSE', '3.91', 'ctg'); -- normal way to insert
insert into student(std_id, std_name, major, city) values(1, 'Moin', 'CSE', 'ctg'); -- when we need to fill specific column
insert into student(major) values('CSE');-- ERROR! std_name set as not null, std_id is primary key but no need to give cz it has auto_increment
insert into student(std_name) values('Rifat'); -- major has default 'no one' so it's ok not to provide 
insert into student values(2, 'Raihan', 'CSE', '3.33', 'dhk'); -- ERROR! cgpa set as unique. cant be duplicate