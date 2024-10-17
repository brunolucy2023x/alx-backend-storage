-- Author: Bruno Owino
-- Creates a function named SafeDiv that safely divides two integers.
-- The function takes two arguments:
-- - a: The numerator (INT)
-- - b: The denominator (INT)
-- The function returns:
-- - a / b if b is not equal to 0
-- - 0 if b is equal to 0 to avoid division by zero errors.

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    RETURN (IF (b = 0, 0, a / b));  -- Return 0 if b is 0, otherwise return a / b
END //

DELIMITER ;
