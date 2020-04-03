-- Question 1

SELECT SUM(population) AS population
FROM world

-- Question 2

SELECT DISTINCT continent FROM world

-- Question 3

SELECT SUM(gdp) AS GDP FROM world
WHERE continent = 'Africa'

-- Question 4

SELECT COUNT(name) AS countries FROM world
WHERE area > 1000000

-- Question 5

SELECT SUM(population) AS population FROM world
WHERE name IN ('Estonia','Latvia','Lithuania')

-- Question 6

SELECT DISTINCT continent, 
COUNT(name) AS number
FROM world
GROUP BY continent

-- Question 7

SELECT DISTINCT continent,
COUNT(population) AS number 
FROM world WHERE population > 10000000
GROUP BY continent

-- Question 8

SELECT continent FROM world GROUP BY continent HAVING SUM(population) > 100000000

-- 1 c
-- 2 a
-- 3 d
-- 4 e
-- 5 b
-- 6 e
-- 7 d
-- 8 d