-- Question 1

SELECT name FROM teacher
WHERE dept IS NULL

-- Question 2

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

-- Question 3

SELECT teacher.name, dept.name FROM teacher
LEFT JOIN dept
ON (teacher.dept=dept.id)

-- Question 4

SELECT teacher.name, dept.name FROM teacher
RIGHT JOIN dept
ON (teacher.dept=dept.id)

-- Question 5

SELECT name, 
COALESCE(mobile,'07986 444 2266') AS 'mobile number' 
FROM teacher

-- Question 6

SELECT teacher.name, COALESCE(dept.name,'None') FROM teacher
LEFT JOIN dept
ON (teacher.dept=dept.id)

-- Question 7

SELECT COUNT(name) 
AS 'number of teacher',
COUNT(mobile) AS 'number of mob'
FROM teacher

-- Question 8

SELECT dept.name, COUNT(teacher.id)
FROM teacher
RIGHT JOIN dept ON teacher.dept = dept.id
GROUP BY dept.name

-- Question 9

SELECT name,
CASE
WHEN dept = 1 OR dept = 2 THEN 'Sci'
ELSE 'Art'
END AS Dept
FROM teacher

-- Question 10

SELECT name,
CASE
WHEN dept = 1 OR dept = 2 THEN 'Sci'
WHEN dept =3 THEN 'Art'
ELSE 'None'
END AS Dept
FROM teacher

-- Quizes

-- 1 e
-- 2 c
-- 3 e
-- 4 b
-- 5 a
-- 6 a