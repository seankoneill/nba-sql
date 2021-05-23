/*
Purpose: Difference between home and away performance as percent difference between average point differential at home - away.
         Teams that preform best at home will have highest difference while teams that do better on the road will have lowest.
*/

select city,team_name, round(100 * (home_pm - away_pm), 4) percent_diff from
(select team_code,avg(pm/5) home_pm from 
  player_games natural join games natural join teams where 
  player_team = home_team and player_team = team_code group by team_code)
    natural join
(select team_code,avg(pm/5) away_pm from 
  player_games natural join games natural join teams where 
  player_team = away_team and player_team = team_code group by team_code)
natural join teams order by percent_diff desc;

/*
Test Output:
city        team_name   percent_diff
----------  ----------  ------------
Cleveland   Cavaliers   17.9512     
Detroit     Pistons     12.4366     
Dallas      Mavericks   9.1409      
Portland    Trail Blaz  8.2515      
Boston      Celtics     7.0459      
Orlando     Magic       6.6448      
New York    Knicks      4.9657      
Utah        Jazz        4.3456      
Denver      Nuggets     3.7407      
Charlotte   Hornets     2.224       
Miami       Heat        1.8857      
San Antoni  Spurs       1.6944      
Philadelph  76ers       1.5721      
Washington  Wizards     0.5292      
Oklahoma C  Thunder     0.179       
Memphis     Grizzlies   -1.8399     
New Orlean  Pelicans    -2.5368     
Milwaukee   Bucks       -3.4525     
Phoenix     Suns        -4.3066     
Los Angele  Clippers    -5.5615     
Sacramento  Kings       -5.8237     
Houston     Rockets     -5.9172     
Atlanta     Hawks       -6.1308     
Chicago     Bulls       -6.159      
Golden Sta  Warriors    -8.7122     
Brooklyn    Nets        -9.239      
Los Angele  Lakers      -10.7705    
Toronto     Raptors     -11.3703    
Indiana     Pacers      -11.8871    
Minnesota   Timberwolv  -12.9643    
*/
