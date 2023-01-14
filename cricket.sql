CREATE DATABASE cricket;
USE cricket;
CREATE TABLE cricket(player_name varchar(40),player_country varchar(50),age int,exp int,couch_name varchar(50),no_of_players varchar(50),team_name varchar(50) ,stadium_loc varchar(50),game_type varchar(50),host_name varchar(50),no_of_teams varchar(50),price int,jersey_no int,jersey_color varchar(50),device varchar(50));
SELECT count(*) as Number from information_scheme.columns WHERE table_name ='cricket';
ALTER TABLE cricket ADD ID int;
SELECT * FROM cricket;
INSERT INTO cricket VALUES('virat kohli','India',39,14,'rahul',12,'chinna swami','bangalore','ipl','danish',12,120000,13,'red','bat ball',1);
INSERT INTO cricket VALUES('rohit sharma','India',45,14,'rahul',12,'chinna swami','mumbai','ipl','danish',12,120000,13,'blue','bat ball',2);
