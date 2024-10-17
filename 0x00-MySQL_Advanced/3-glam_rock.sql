-- Author: Bruno Owino
-- Retrieves all bands identified as Glam rock, sorted by their lifespan.
-- Displays band name and calculated lifespan based on formation and split years.

SELECT band_name, COALESCE(split, 2022) - formed AS lifespan 
FROM metal_bands
WHERE style LIKE '%Glam rock%' 
ORDER BY lifespan DESC;
