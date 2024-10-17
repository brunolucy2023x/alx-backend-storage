-- Author: Bruno Owino
-- Creates a stored procedure named ComputeAverageWeightedScoreForUser.
-- This procedure calculates and updates the average weighted score for a specified student.
-- The procedure takes one input parameter:
-- - user_id: The ID of the user (student) for whom the average score will be computed.
-- The average weighted score is calculated using the formula:
-- (SUM(corrections.score * projects.weight) / SUM(projects.weight))
-- It updates the 'average_score' field in the 'users' table for the specified user.

DELIMITER $$
DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUser;
CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
    UPDATE users 
    SET average_score = (
        SELECT SUM(corrections.score * projects.weight) / SUM(projects.weight)
        FROM corrections
        INNER JOIN projects ON projects.id = corrections.project_id
        WHERE corrections.user_id = user_id
    )
    WHERE users.id = user_id;
END $$
DELIMITER ;
