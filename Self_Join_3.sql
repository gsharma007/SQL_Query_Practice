"""
With two numeric fields A and B, the percentage growth from A to B can be calculated as (B−A)/A∗100.0.
Add a new field to SELECT, aliased as growth_perc, that calculates the percentage population growth 
from 2010 to 2015 for each country, using p2.size and p1.size.
"""

SELECT p1.country_code,
       p1.size AS size2010, 
       p2.size AS size2015,
       -- 1. calculate growth_perc
       ((p2.size - p1.size)/p1.size * 100.0) AS growth_perc
-- 2. From populations (alias as p1)
FROM populations AS p1
  -- 3. Join to itself (alias as p2)
  INNER JOIN populations AS p2
    -- 4. Match on country code
    ON p1.country_code = p2.country_code
        -- 5. and year (with calculation)
        AND p1.year = p2.year - 5;
