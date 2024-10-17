-- Author: Bruno Owino
-- Creates an index named idx_name_first on the names table, indexing only the first letter of the name.

CREATE INDEX idx_name_first
ON names(name(1));
