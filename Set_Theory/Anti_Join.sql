"""
anti-join is particularly useful in identifying 
which records are causing an incorrect number of records to appear in join queries.
"""

"""
Begin by determining the number of countries in countries that are listed in Oceania using SELECT, FROM, and WHERE.
"""

-- Select statement
SELECT COUNT(name)
  -- From countries
  FROM countries
-- Where continent is Oceania
WHERE continent = 'Oceania';


"""
- Complete an inner join with countries AS c1 on the left and currencies AS c2 on the right 
to get the different currencies used in the countries of Oceania.
- Match ON the code field in the two tables.
- Include the country code, country name, and basic_unit AS currency
"""

SELECT code, name, basic_unit AS currency
  -- 1. From countries (alias as c1)
  FROM countries as c1
  	-- 2. Join with currencies (alias as c2)
  	INNER JOIN currencies AS c2
    -- 3. Match on code
    USING(code)
-- 4. Where continent is Oceania
WHERE continent = 'Oceania';


"""
Note that not all countries in Oceania were listed in the resulting inner join with currencies. 
Use an anti-join to determine which countries were not included!
"""

SELECT code, name
  -- 4. From Countries
  FROM countries
  -- 5. Where continent is Oceania
  WHERE continent = 'Oceania'
  	-- 1. And code not in
  	AND code NOT IN 
  	-- 2. Subquery
  	(SELECT code 
  	FROM currencies);
