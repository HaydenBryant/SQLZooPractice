/*
#1
 */
 SELECT matchid, player FROM goal
  WHERE teamid = 'GER'

/*
#2
 */
SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012

/*
#3
 */
SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON (teamid='GER' AND id=matchid)

/*
#4
*/
SELECT team1, team2, player
FROM game
JOIN goal ON (id=matchid AND player LIKE 'Mario%')

  /*
  #5
   */
SELECT player, teamid, coach, gtime
FROM goal
JOIN eteam ON (teamid=id AND gtime<=10)

/*
#6
*/
SELECT mdate, teamname
FROM game
JOIN eteam ON (team1=eteam.id AND coach LIKE '%Santos')

/*
#7
*/
SELECT player
FROM goal
JOIN game ON (stadium='National Stadium, Warsaw' AND id=matchid)

/*
#8
*/
SELECT DISTINCT(player)
FROM game JOIN goal ON matchid = id
WHERE (team1='GER' OR team2='GER') AND teamid!='GER'

/*
#9
*/
SELECT teamname, COUNT(player) FROM eteam
JOIN goal ON id=teamid
GROUP BY teamname

/*
#10
*/
SELECT stadium, COUNT(player) AS goals
FROM game JOIN goal ON (id=matchid)
GROUP BY stadium

