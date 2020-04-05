-- Question 1

SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

-- Question 2

SELECT id,stadium,team1,team2
  FROM game INNER JOIN goal
  ON game.id = goal.matchid
  WHERE goal.matchid=1012 AND goal.player LIKE '%Bender%'

-- Question 3

SELECT player,teamid,stadium,mdate
  FROM game JOIN goal ON (id=matchid)
  WHERE goal.teamid = 'GER'

-- Question 4

SELECT team1, team2, player FROM game
JOIN goal ON game.id = goal.matchid
WHERE goal.player LIKE 'Mario%'

-- Question 5

SELECT player, teamid, coach, gtime FROM goal
JOIN eteam
ON teamid=id
WHERE gtime<=10

-- Question 6

SELECT mdate, teamname FROM game
JOIN eteam
ON team1 = eteam.id
WHERE coach LIKE 'Fernando%'

-- Question 7

SELECT player FROM game
JOIN goal ON game.id=goal.matchid
WHERE game.stadium='National Stadium, Warsaw'

-- Question 8

SELECT DISTINCT player FROM game 
JOIN goal ON matchid = id 
WHERE (team1='GER' OR team2='GER') 
AND teamid != 'GER'

-- Question 8

SELECT teamname, COUNT(player) AS 'total goal'
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

-- Question 9

SELECT teamname, COUNT(player) AS 'total goal'
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

-- Question 10

SELECT stadium, COUNT(player) 
AS 'Number of goals' 
FROM game
JOIN goal
ON game.id = goal.matchid
GROUP BY stadium

-- Question 11

SELECT matchid,mdate,COUNT(player) AS 'number of goals'
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid

-- Question 12

SELECT matchid,mdate,COUNT(teamid) AS 'number of goals'
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'GER' OR team2 = 'GER')
AND teamid = 'GER'
GROUP BY matchid

-- Question 13

SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal
  ON matchid = id
GROUP BY mdate, matchid, team1, team2

-- Quizes

-- 1 d
-- 2 c
-- 3 a
-- 4 a
-- 5 b
-- 6 c
-- 7 b