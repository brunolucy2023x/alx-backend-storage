-- Author: Bruno Owino
-- Creates an index named idx_name_first_score on the 'names' table.
-- This index is based on the first letter of the 'name' field and the 'score' field.
-- The index will improve the performance of queries that filter or sort by 
-- the first letter of the name and the score.

CREATE INDEX idx_name_first_score
ON names(name(1), score);  -- Indexing only the first letter of 'name' and 'score'
