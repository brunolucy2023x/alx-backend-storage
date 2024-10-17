-- Author: Bruno Owino
-- Creates a trigger to reset the valid_email attribute when the email is updated.

DELIMITER $$

CREATE TRIGGER new_email 
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END$$

DELIMITER ;
