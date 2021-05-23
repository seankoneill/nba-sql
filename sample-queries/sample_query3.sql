/*
Purpose: Produce all-time leading scorer for each team (not really all-time because data is only from 2010-11 onward)
        in the player_games table (important because the database does not store stats for specific teams, only players)
*/

select first_name,last_name,player_team,max(pts) pts from 
(select first_name,last_name,player_team,sum(pts) pts from players natural join player_games group by player_id,player_team) group by player_team order by pts desc;

/*
Test Output:
first_name  last_name   player_team  pts       
----------  ----------  -----------  ----------
James       Harden      HOU          18167     
Russell     Westbrook   OKC          16281     
Stephen     Curry       GSW          15020     
Damian      Lillard     POR          14887     
DeMar       DeRozan     TOR          12634     
Kemba       Walker      CHA          12009     
Bradley     Beal        WAS          11425     
Blake       Griffin     LAC          10863     
Giannis     Antetokoun  MIL          10602     
Dirk        Nowitzki    DAL          10449     
Anthony     Davis       NOP          10192     
Carmelo     Anthony     NYK          10186     
DeMarcus    Cousins     SAC          9894      
Marc        Gasol       MEM          9701      
Dwyane      Wade        MIA          9589      
Nikola      Vucevic     ORL          9343      
Andrew      Wiggins     MIN          8710      
Andre       Drummond    DET          8531      
Kyrie       Irving      CLE          8232      
Paul        George      IND          8090      
Gordon      Hayward     UTA          8077      
Kobe        Bryant      LAL          7853      
Tony        Parker      SAS          7830      
Devin       Booker      PHX          7683      
Nikola      Jokic       DEN          6462      
Jeff        Teague      ATL          6256      
Jimmy       Butler      CHI          6208      
Brook       Lopez       BKN          6065      
Avery       Bradley     BOS          5008      
Joel        Embiid      PHI          5005      
Brook       Lopez       NJN          1769      
Greivis     Vasquez     NOH          1672      
*/
