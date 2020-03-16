"""
Exploring languages potentially and most frequently spoken in the cities of Hyderabad, India and Hyderabad, Pakistan.
Cross join with cities AS c on the left and languages AS l on the right. 
Then you will modify the query using an inner join.
"""

SELECT c.name AS city, l.name AS language
-- 1. From cities (alias as c)
FROM cities AS c        
  -- 2. Join to languages (alias as l)
  CROSS JOIN languages AS l
-- 3. Where c.name like Hyderabad
WHERE c.name LIKE 'Hyder%';


"""
Use an inner join instead of a cross join. 
Think about what the difference will be in the results for this inner join result and the one for the cross join.
"""

SELECT c.name AS city, l.name AS language
-- 1. From cities (alias as c)
FROM cities AS c       
  -- 2. Join to languages (alias as l)
  INNER JOIN languages AS l
    -- 3. Match on country code
    ON c.country_code = l.code
-- 4. Where c.name like Hyderabad
WHERE c.name LIKE 'Hyder%';
