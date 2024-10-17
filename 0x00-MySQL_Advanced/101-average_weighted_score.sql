-- Author: Bruno Owino
-- Creates a stored procedure named ComputeAverageWeightedScoreForUsers.
-- This procedure calculates and updates the average weighted score for all students.
-- The average weighted score is computed for each student using the formula:
-- (SUM(score * weight) / SUM(weight)), where:
-- - score is the score obtained by the student on various projects.
-- - weight is the weight assigned to each project.
-- The results are updated in the 'average_score' field of the 'users' table.

DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    UPDATE users AS users,
           (SELECT users.id, SUM(score * weight) / SUM(weight) AS weight_avg
            FROM users AS users 
            JOIN corrections AS correct ON users.id = correct.user_id
            JOIN projects AS proj ON correct.project_id = proj.id
            GROUP BY users.id) AS weight
    SET users.average_score = weight.weight_avg
    WHERE users.id = weight.id;
END $$
DELIMITER ;
