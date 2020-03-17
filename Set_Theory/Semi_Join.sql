"""
Use the concept of a semi-join to identify languages spoken in the Middle East.
"""

-- Select code
SELECT code
  -- From countries
  FROM countries
-- Where region is Middle East
WHERE region = 'Middle East';


"""
Select only unique languages by name appearing in the languages table.
Order the resulting single field table by name in ascending order.
"""

-- Select field
SELECT DISTINCT name
  -- From languages
  FROM languages
-- Order by name
ORDER BY name ASC;


"""
Now combine the previous two queries into one query:

Add a WHERE IN statement to the SELECT DISTINCT query, and use the commented out query from the first instruction in there. 
That way, you can determine the unique languages spoken in the Middle East.
"""

-- Select distinct fields
SELECT DISTINCT name
  -- From languages
  FROM languages
-- Where in statement
WHERE code IN
  -- Subquery
  (SELECT code
   FROM countries
   WHERE region = 'Middle East')
-- Order by name
ORDER BY name;


"""
Sometimes problems solved with semi-joins can also be solved using an inner join. 
Write the inner join code for semi join used in the last task.
"""

SELECT DISTINCT languages.name AS language
FROM languages
INNER JOIN countries
ON languages.code = countries.code
WHERE region = 'Middle East'
ORDER BY language;
