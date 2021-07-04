
-- CREATE
--     TRIGGER `event_name` BEFORE/AFTER INSERT/UPDATE/DELETE
--     ON `database`.`table`
--     FOR EACH ROW BEGIN
-- 		-- trigger body
-- 		-- this code is applied to every
-- 		-- inserted/updated/deleted row
--     END;


CREATE TABLE trigger_test (
     message VARCHAR(100)
);


DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('added new employee'); -- when new emp added then this message will be inserted
    END$$
DELIMITER ;


INSERT INTO employee
VALUES(109, 'Oscar', 'Minguesa', '1968-02-19', 'M', 69000, 106, 3);

select * from trigger_test;

DELIMITER $$
CREATE
    TRIGGER my_trigger4 BEFORE delete
    ON branch_supplier
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(OLD.branch_id,'CASECADE mode'); 
    END$$
DELIMITER ;

DELETE from branch
where branch_id = 3; -- it wont be added in to the trigger test.

select * from branch_supplier;


DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name); -- new is refer to the row it inserted
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(110, 'Post', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

select * from trigger_test;

DELIMITER $$
CREATE
    TRIGGER my_trigger3 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test VALUES('added female');
         ELSE
               INSERT INTO trigger_test VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);



DROP TRIGGER my_trigger;
