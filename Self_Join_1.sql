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
