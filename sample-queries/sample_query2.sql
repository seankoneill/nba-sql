/*
Purpose: Produce player names and number of games played for every Canadian player who has played in at least 10 games
*/

select first_name,last_name,games from 
  (select first_name,last_name,count(player_id) games from (players natural join player_games) where country = 'Canada' group by player_id)
  where games >= 10 order by games desc;

/*
Test Output:
first_name  last_name   games     
----------  ----------  ----------
Tristan     Thompson    619       
Cory        Joseph      600       
Kelly       Olynyk      500       
Andrew      Wiggins     454       
Dwight      Powell      371       
Trey        Lyles       351       
Nik         Stauskas    335       
Joel        Anthony     321       
Jamal       Murray      297       
Andrew      Nicholson   285       
Steve       Nash        202       
Robert      Sacre       189       
Tyler       Ennis       186       
Dillon      Brooks      173       
Shai        Gilgeous-A  152       
Anthony     Bennett     151       
Khem        Birch       140       
Brandon     Clarke      58        
RJ          Barrett     56        
Jamaal      Magloire    52        
Nickeil     Alexander-  47        
Luguentz    Dort        36        
Naz         Mitrou-Lon  20        
Oshae       Brissett    19        
Kyle        Wiltjer     14        
Mfiondu     Kabengele   12        
Kris        Joseph      10        
*/
