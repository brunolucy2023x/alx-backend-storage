-- Author: Bruno Owino
-- Generates a ranking of band origins based on total fans, with columns for origin and fan count.
-- This script is designed to run on any database.

SELECT origin, SUM(fans) AS nb_fans 
FROM metal_bands
GROUP BY origin 
ORDER BY nb_fans DESC;
