"""
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
