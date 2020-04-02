-- SELECT BASICS
-- Question 1

SELECT population FROM world
  WHERE name = 'Germany'

-- Question 2

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Question 3

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-- Quiz

-- 1. c
-- 2. e
-- 3. e
-- 4. c
-- 5. c
-- 6. c
-- 7. c

