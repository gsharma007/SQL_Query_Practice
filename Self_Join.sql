"""
Task 1:
Join populations with itself ON country_code.
Select the country_code from p1 and the size field from both p1 and p2. 
SQL won't allow same-named fields, so alias p1.size as size2010 and p2.size as size2015.
"""

-- 4. Select fields with aliases
SELECT p1.country_code, 
p1.size AS size2010, 
p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations AS p1
  -- 2. Join to itself (alias as p2)
  INNER JOIN populations AS p2
    -- 3. Match on country code
    ON p1.country_code = p2.country_code;
    
    

"""
Task 2:
Notice from the result that for each country_code you have four entries laying out all combinations of 2010 and 2015.

Extend the ON in your query to include only those records where the p1.year (2010) matches with p2.year - 5 (2015 - 5 = 2010). 
This will omit the three entries per country_code that you aren't interested in.
"""

-- 5. Select fields with aliases
SELECT p1.country_code,
       p1.size AS size2010,
       p2.size AS size2015
-- 1. From populations (alias as p1)
FROM populations as p1
  -- 2. Join to itself (alias as p2)
  INNER JOIN populations as p2
    -- 3. Match on country code
    ON p1.country_code = p2.country_code AND
        -- 4. and year (with calculation)
        p1.year = p2.year -5;
        
 
"""
Task 3:
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
