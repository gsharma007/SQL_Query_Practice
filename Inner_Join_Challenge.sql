"""
Task 1:
Using the populations table focused only for the year 2015, create a new field aliased as popsize_group to organize population size into

'large' (> 50 million),
'medium' (> 1 million), and
'small' groups.
Select only the country code, population size, and this new popsize_group as fields.
"""

SELECT country_code, size,
    -- 1. First case
    CASE WHEN size > 50000000 THEN 'large'
        -- 2. Second case
        WHEN size > 1000000 THEN 'medium'
        -- 3. Else clause + end
        ELSE 'small' END
        -- 4. Alias name (popsize_group)
        AS popsize_group
-- 5. From table
FROM populations
-- 6. Focus on 2015
WHERE year = 2015;


"""
Task 2:
Use INTO to save the result of the previous query as pop_plus.  
Make sure to include a ; at the end of your WHERE clause!

Then, include another query below your first query to display all the records in pop_plus using SELECT * FROM pop_plus; 
so that you generate results and this will display pop_plus in query result.
"""

SELECT country_code, size,
    CASE WHEN size > 50000000 THEN 'large'
        WHEN size > 1000000 THEN 'medium'
        ELSE 'small' END
        AS popsize_group
-- 1. Into table
INTO pop_plus
FROM populations
WHERE year = 2015;

-- 2. Select all columns of pop_plus
SELECT *
FROM pop_plus;


"""
Task 3:
Keep the first query intact that creates pop_plus using INTO.
Write a query to join countries_plus AS c on the left with pop_plus AS p on the right matching on the country code fields.
Sort the data based on geosize_group, in ascending order so that large appears on top.
Select the name, continent, geosize_group, and popsize_group fields.
"""

SELECT country_code, size,
  CASE WHEN size > 50000000
            THEN 'large'
       WHEN size > 1000000
            THEN 'medium'
       ELSE 'small' END
       AS popsize_group
INTO pop_plus       
FROM populations
WHERE year = 2015;

-- 5. Select fields
SELECT c.name, c.continent, c.geosize_group, p.popsize_group
-- 1. From countries_plus (alias as c)
FROM countries_plus AS c
  -- 2. Join to pop_plus (alias as p)
  INNER JOIN pop_plus AS p
    -- 3. Match on country code
    ON c.code = p.country_code
-- 4. Order the table    
ORDER BY geosize_group;
