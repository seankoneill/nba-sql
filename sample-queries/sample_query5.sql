/*
Purpose: Winningest players
*/

select first_name,last_name, wins from
(select player_id,count(player_id) wins from 
    (select player_id,game_id,sum(pm) pm from player_games group by player_team,game_id) 
    where pm > 0 group by player_id)
  natural join players order by wins desc limit 25;

/*
Test Output:
first_name  last_name   wins      
----------  ----------  ----------
LeBron      James       474       
Kevin       Durant      428       
Kawhi       Leonard     353       
Trevor      Ariza       313       
Paul        George      267       
Harrison    Barnes      257       
Luol        Deng        247       
Nicolas     Batum       221       
Rudy        Gay         211       
Carmelo     Anthony     208       
Chandler    Parsons     200       
DeMarre     Carroll     181       
Gordon      Hayward     173       
Paul        Pierce      172       
Khris       Middleton   168       
Tayshaun    Prince      159       
Danilo      Gallinari   158       
Michael     Kidd-Gilch  155       
Tobias      Harris      152       
Bojan       Bogdanovic  140       
Otto        Porter Jr.  139       
Jae         Crowder     134       
Caron       Butler      128       
Luc         Mbah a Mou  124       
Richard     Jefferson   123       
*/
