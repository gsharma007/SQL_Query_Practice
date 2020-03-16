"""
Perform an inner join. Alias the name of the country field as country and the name of the language field as language.
Sort based on descending country name.
"""

SELECT c.name AS country, local_name, l.name AS language, percent
-- 1. From left table (alias as c)
FROM countries AS c
  -- 2. Join to right table (alias as l)
  INNER JOIN languages AS l
    -- 3. Match on fields
    ON c.code = l.code
-- 4. Order by descending country
ORDER BY country DESC;

"""
Perform a left join instead of an inner join. 
Observe the result, and also note the change in the number of records in the result.
Carefully review which records appear in the left join result, but not in the inner join result.
"""

SELECT c.name AS country, local_name, l.name AS language, percent
-- 1. From left table (alias as c)
FROM countries AS c
  -- 2. Join to right table (alias as l)
  LEFT JOIN languages AS l
    -- 3. Match on fields
    ON c.code = l.code
-- 4. Order by descending country
ORDER BY country DESC;

"""
INNER JOIN version resulted in 909 records. The LEFT JOIN version returned 916 rows.
"""
