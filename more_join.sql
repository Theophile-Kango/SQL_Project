-- Question 1

SELECT id, title
FROM movie
WHERE yr=1962

-- Question 2

SELECT yr FROM movie
WHERE title = 'Citizen Kane'

-- Question 3

SELECT id, title, yr FROM movie
WHERE title LIKE 'Star Trek%' 
ORDER BY yr

-- Question 4

SELECT id FROM actor
WHERE name = 'Glenn Close'

-- Question 5

SELECT id FROM movie
WHERE title = 'Casablanca'

-- Question 6

SELECT actor.name FROM actor 
JOIN casting ON actor.id=casting.actorid
WHERE movieid = (
SELECT id FROM movie WHERE title = 'Casablanca'
)

-- Question 7

SELECT actor.name FROM actor 
JOIN casting ON actor.id=casting.actorid
WHERE movieid = (
SELECT id FROM movie WHERE title = 'Alien'
)

-- Question 8

SELECT title FROM casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id 
  WHERE name = 'Harrison Ford'

-- Question 9

SELECT movie.title
FROM movie
JOIN casting ON movie.id = casting.movieid
JOIN actor ON actor.id = casting.actorid
WHERE casting.ord != 1 AND actor.name = 'Harrison Ford'

-- Question 10

SELECT title, name FROM casting 
JOIN actor ON actorid = actor.id 
JOIN movie ON movieid = movie.id 
WHERE yr = 1962 AND ord = 1;

-- Question 11

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

-- Question 12

SELECT title, name FROM movie JOIN casting ON (movieid = movie.id AND ord =1) JOIN actor ON (actorid = actor.id) 
  WHERE movie.id IN (SELECT movieid FROM casting
    WHERE actorid IN (SELECT id FROM actor
      WHERE name='Julie Andrews'))

-- Question 13

SELECT actor.name FROM actor JOIN casting ON casting.actorid = actor.id
  WHERE ord = 1 GROUP BY name HAVING COUNT(*) >= 15;

-- Question 14

SELECT movie.title, COUNT(actorid)
FROM movie
JOIN casting ON casting.movieid = movie.id
JOIN actor ON casting.actorid = actor.id
WHERE movie.yr = 1978
GROUP BY movie.title
ORDER BY COUNT(actorid) DESC, movie.title

-- Quesion 15

SELECT DISTINCT name FROM movie JOIN casting ON (movieid = movie.id) JOIN actor ON (actorid = actor.id) 
  WHERE movie.id IN (SELECT movieid FROM casting
    WHERE actorid IN (SELECT id FROM actor
      WHERE name='Art Garfunkel')) AND name != 'Art Garfunkel'

-- Quiz
-- 1 c
-- 2 e
-- 3 c
-- 4 b
-- 5 d
-- 6 c
-- 7 b