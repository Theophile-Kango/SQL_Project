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

SELECT name, continent FROM world
WHERE continent =
(SELECT continent FROM world
WHERE name = 'Australia')
OR continent =
(SELECT continent FROM world
WHERE name = 'Argentina')
ORDER BY name 

-- Question 4

SELECT name, population FROM world
WHERE population > (
SELECT population FROM world
WHERE name = 'Canada'
) AND population < (
SELECT population FROM world
WHERE name = 'Poland'
)

-- Question 5

SELECT name, CONCAT(ROUND(population*100/(SELECT population FROM world
WHERE name = 'Germany'),0),'%') AS percentage
FROM world
WHERE continent = 'Europe'

-- Question 6

SELECT name FROM world
WHERE gdp >
(SELECT MAX(gdp) FROM world
WHERE continent = 'Europe')

-- Question 7

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

-- Question 8

SELECT x.continent, x.name FROM world x
WHERE (x.name <= ALL
(SELECT y.name FROM world y
WHERE (y.continent = x.continent)))
ORDER BY x.continent

-- Question 9

SELECT
  x.name,
  x.continent,
  x.population
FROM world x
WHERE
  (x.continent NOT IN (SELECT
                         y.continent
                       FROM world y
                       WHERE
                         (y.population > 25000000)
                       GROUP BY y.continent))
ORDER BY x.name;

-- Question 10

SELECT
  x.name,
  x.continent
FROM world x
WHERE
  (x.population > ALL
                  (SELECT
                     (y.population * 3)
                   FROM world y
                   WHERE
                     (y.population > 0)
                   AND
                     (y.continent = x.continent)
                   AND
                     (y.name != x.name)))

-- Quizes

-- 1 c
-- 2 b
-- 3 a
-- 4 d
-- 5 b
-- 6 b
-- 7 b