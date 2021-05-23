/*This might take a moment...*/

DROP TABLE IF EXISTS PLAYERS;
DROP TABLE IF EXISTS TEAMS;
DROP TABLE IF EXISTS GAMES;
DROP TABLE IF EXISTS PLAYER_GAMES;
DROP TABLE IF EXISTS PLAYER_TEAMS;

CREATE TABLE PLAYERS (
  player_id text primary key not NULL,
  first_name text not NULL,
  last_name text not NULL,
  birthdate text not NULL,
  country text not NULL);

CREATE TABLE TEAMS (
  team_code text primary key not NULL,
  city text not NULL,
  team_name text not NULL);

CREATE TABLE GAMES (
  game_id text primary key not NULL,
  home_team text not NULL,
  away_team text not NULL,
  season text not NULL,
  game_date text not NULL);

CREATE TABLE PLAYER_GAMES (
  player_id text not NULL,
  game_id text not NULL,
  player_team text not NULL,
  MP num not NULL,
  FGM num not NULL,
  FGA num not NULL,
  FG3M num not NULL,
  FG3A num not NULL,
  FTM num not NULL,
  FTA num not NULL,
  OREB num not NULL,
  DREB num not NULL,
  AST num not NULL,
  STL num not NULL,
  BLK num not NULL,
  TOV num not NULL,
  PF num not NULL,
  PTS num not NULL,
  PM num not NULL,
  primary key (player_id, game_id));

CREATE TABLE PLAYER_TEAMS (
  player_id text not NULL,
  team_code text not NULL,
  start_date text not NULL,
  end_date text not NULL,
  primary key (player_id, team_code, start_date, end_date));

.read ./insert_games.sql
.read ./insert_players.sql
.read ./insert_player_games.sql
.read ./insert_teams.sql
.read ./insert_player_teams.sql
