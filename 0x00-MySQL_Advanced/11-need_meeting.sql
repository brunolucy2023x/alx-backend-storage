-- Author: Bruno Owino
-- Creates a view named need_meeting that lists all students with a score below 80.
-- The criteria for inclusion in this view are:
-- - The student's score must be strictly less than 80.
-- - The student must either have no recorded last meeting (NULL) 
--   or the last meeting must have been over one month ago.

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT name 
FROM students 
WHERE score < 80
  AND (students.last_meeting IS NULL OR students.last_meeting < DATE_ADD(NOW(), INTERVAL -1 MONTH));
