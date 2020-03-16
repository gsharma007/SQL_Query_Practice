SELECT c.name AS country, c.continent, l.name AS language, l.official
  -- 1. From countries (alias as c)
  FROM countries AS c
  -- 2. Join to languages (as l)
   INNER JOIN languages AS l
    -- 3. Match using code
    USING(code);
