-- Question 1

SELECT COUNT(id) AS total FROM stops

-- Question 2

SELECT id FROM stops
WHERE name = 'Craiglockhart'

-- Question 3

SELECT id, name FROM stops 
JOIN route ON  id = stop 
WHERE num = '4' AND company = 'LRT'

-- Question 4

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num HAVING COUNT(*)=2

-- Question 5

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53
AND b.stop = 149

-- Question 6

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'
AND stopb.name='London Road'

-- Question 7

SELECT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=115 and b.stop=137
group by a.company, a.num

-- Question 8

SELECT a.company, a.num
FROM route a
JOIN route b on (a.company=b.company AND a.num=b.num)
JOIN stops stopa on a.stop=stopa.id
JOIN stops stopb on b.stop=stopb.id
WHERE stopa.name='Craiglockhart' and stopb.name='Tollcross'

-- Question 9

SELECT stopb.name, a.company, a.num
FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num)
JOIN stops stopa ON (a.stop=stopa.id)
JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'

-- Question 10


-- Quizes
-- 1 c
-- 2 e
-- 3 d
