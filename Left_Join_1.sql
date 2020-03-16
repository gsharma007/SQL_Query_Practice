"""
cities table- 236 rows- left table
countries table- 205 rows- right table

Note: Left join should give the 236 rows as the output, with filled columns for the matches from countries table
"""

"""
Write code based on the instructions in the code comments to complete the inner join. 
Note how many records are in the result of the join in the query result tab.

Note: First performing an inner join to understand the difference between Inner Join and Left Join
"""

-- Select the city name (with alias), the country code,
-- the country name (with alias), the region,
-- and the city proper population
SELECT c1.name AS city, code, c2.name AS country,
       region, city_proper_pop
-- From left table (with alias)
FROM cities AS c1
  -- Join to right table (with alias)
  INNER JOIN countries AS c2
    -- Match on country code
    ON c1.country_code = c2.code
-- Order by descending country code
ORDER BY code DESC;

"""
In INNER JOIN output, the query gives 230 results, for those where both the tables had matching code value

Now performing LEFT join
"""

SELECT c1.name AS city, code, c2.name AS country,
       region, city_proper_pop
FROM cities AS c1
  -- 1. Join right table (with alias)
  LEFT JOIN countries AS c2
    -- 2. Match on country code
    ON c1.country_code = c2.code
-- 3. Order by descending country code
ORDER BY code DESC;

"""
Query provides an output with 236 rows equal to the rows in left table i.e. cities table
"""
