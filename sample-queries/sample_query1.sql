/*
Purpose: Produce a table containing the team_code, start_date, end_date for every team that DeMar DeRozan has played for
*/

select team_code,start_date,end_date from (PLAYERS natural join PLAYER_TEAMS) where first_name = 'DeMar' and last_name = 'DeRozan';

/*
Test Output:
team_code   start_date  end_date  
----------  ----------  ----------
SAS         2018-10-17  2020-08-13
TOR         2010-10-27  2018-04-11
*/
