"""
Get the names of cities in cities which are not noted as capital cities in countries as a single field result.
Note that there are some countries in the world that are not included in the countries table, 
which will result in some cities not being labeled as capital cities when in fact they are.

Order the resulting field in ascending order.
Can you spot the city/cities that are actually capital cities which this query misses?
"""

-- Select field
SELECT name
  -- From cities
  FROM cities
	-- Set theory clause
	EXCEPT
-- Select field
SELECT capital
  -- From countries
  FROM countries
-- Order by result
ORDER BY name ASC;


"""
complete the previous query in reverse!
Determine the names of capital cities that are not listed in the cities table.
Order by capital in ascending order.
The cities table contains information about 236 of the world's most populous cities. 
The result of your query may surprise you in terms of the number of capital cities that DO NOT appear in this list!
"""

-- Select field
SELECT capital
  -- From countries
  FROM countries
	-- Set theory clause
	EXCEPT
-- Select field
SELECT name
  -- From cities
  FROM cities
-- Order by ascending capital
ORDER BY capital ASC;
