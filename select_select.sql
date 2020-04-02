-- Question 1

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- Question 2

SELECT name FROM world
    WHERE continent = 'Europe'
        AND gdp/population >
            (SELECT gdp/population FROM world
            WHERE name = 'United Kingdom')

-- Question 3

