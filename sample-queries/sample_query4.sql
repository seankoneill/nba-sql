/*
Purpose: Youngest player averaging at least 15 pts, 5 ast, 5 reb in the 2012-13 season
*/

select first_name,last_name,round(pts_avg, 1) pts,round(ast_avg, 1) ast,round(reb_avg, 1) reb,min(age) age from 
(select player_id,avg(pts) pts_avg, avg(ast) ast_avg, avg(oreb + dreb) reb_avg from 
  player_games natural join games where season = '2012-13' group by player_id) natural join
(select player_id,first_name,last_name,(date('2013-01-01') - date(birthdate)) age from players) 
where pts_avg >= 15 and ast_avg >= 5 and reb_avg >= 5;

/*
Test Output:
first_name  last_name   pts         ast         reb         age       
----------  ----------  ----------  ----------  ----------  ----------
Russell     Westbrook   23.2        7.4         5.2         25        
*/
