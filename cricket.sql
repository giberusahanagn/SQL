CREATE DATABASE cricket;
USE jan7batch;

CREATE TABLE cricket(player_name varchar(40),player_country varchar(50),age int,exp int,couch_name varchar(50),no_of_players varchar(50)
,team_name varchar(50) ,stadium_loc varchar(50),game_type varchar(50),host_name varchar(50),no_of_teams varchar(50),price int,jersey_no int,jersey_color varchar(50),device varchar(50));
SELECT count(*) as Number from information_scheme.columns WHERE table_name ='cricket';
ALTER TABLE cricket ADD ID int;
SELECT * FROM cricket;
TRUNCATE TABLE cricket;
INSERT INTO cricket VALUES('virat kohli','India',48,14,'rahul',12,'chinna swami','bangalore','rcb','danish',12,120000,13,'red','bat ball',1);

INSERT INTO cricket VALUES('virat kohli','India',48,14,'rahul',12,'chinna swami','bangalore','rcb','danish',12,120000,13,'red','bat ball',1);
INSERT INTO cricket VALUES('rohit sharma','India',45,15,'dinesh',12,'eden ','mumbai','rcb','danish',12,120000,13,'blue','bat ball',2);
INSERT INTO cricket VALUES('padikal','India',39,13,'karthik',12,'Arun jaitlely','mangalore','rcb','danish',12,120000,13,'black','bat ball',3);
INSERT INTO cricket VALUES('siraj','India',29,24,'rahul',12,'Wankhede','pune','rcb','danish',12,120000,13,'red','bat ball',4);
INSERT INTO cricket VALUES('chahal','India',39,44,'rashmi',12,'JN','punjab','rcb','danish',12,120000,13,'black','bat ball',5);
INSERT INTO cricket VALUES('urman','India',30,33,'anil',12,'green park','J&K','rcb','danish',12,120000,13,'red','bat ball',6);
INSERT INTO cricket VALUES('rahul','India',29,24,'archarya',12,'narendra','nepal','rcb','danish',12,120000,13,'black','bat ball',7);
INSERT INTO cricket VALUES('sundar','India',45,35,'dhoni',12,'barabati','chennai','rcb','danish',12,120000,13,'black','bat ball',8);
INSERT INTO cricket VALUES('sky','India',34,32,'archraya',12,'sawai man signh','assan','rcb','danish',12,120000,13,'red','bat ball',9);
INSERT INTO cricket VALUES('ishan','India',34,24,'rahul',12,'indrejit','manipur','rcb','danish',12,120000,13,'green','bat ball',10);
INSERT INTO cricket VALUES('yadav','India',23,26,'anil',12,'rajiv gandhi','goa','csk','Stephan',12,120000,13,'red','bat ball',11);
INSERT INTO cricket VALUES('ishan','India',45,24,'dhoni',12,'holkar','pune','csk','Stephan',12,120000,13,'red','bat ball',12);
INSERT INTO cricket VALUES('shreyas','India',34,23,'aksya',12,'vidarbad','nagapur','csk','Stephan',12,120000,13,'green','bat ball',13);
INSERT INTO cricket VALUES('hardik','India',37,24,'sahana',12,'JSCA','maharastra','csk','Stephan',12,6347,13,'red','bat ball',14);
INSERT INTO cricket VALUES('arsheep','India',34,25,'rashmi',12,'HPCA','rajasthan','csk','Stephan',12,1202300,13,'green','bat ball',15);
INSERT INTO cricket VALUES('Axar','India',23,43,'spporthi',12,'HEC','udaypur','csk','Stephan',12,434687,13,'red','bat ball',16);
INSERT INTO cricket VALUES('shami','India',46,32,'sahana',12,'HPCA','mangalur','csk','Stephan',12,2312145,13,'green','bat ball',17);
INSERT INTO cricket VALUES('abd','India',34,23,'vinay',12,'brasara','karnataka','mi','Stephan',12,124357,13,'black','bat ball',18);
INSERT INTO cricket VALUES('takur','India',38,14,'sunil',12,'ekana','andra','mi','Stephan',12,684322,13,'green','bat ball',19);
INSERT INTO cricket VALUES('sahin','India',34,17,'spoorthi',12,'Dehradun','tamil nadu','mi','Mehele',12,25346,13,'red','bat ball',20);
INSERT INTO cricket VALUES('dhoni','India',39,18,'sahana',12,'Faten','assam','mi','Mehele',12,34678,13,'blue','bat ball',21);
INSERT INTO cricket VALUES('pujari','India',23,19,'swathi',12,'Burtle','gujarat','mi','Mehele',12,243467,13,'orange','bat ball',22);
INSERT INTO cricket VALUES('rishab','India',45,23,'sinchana',12,'kerala','chattisgarh','mi','Mehele',12,124436,13,'blue','bat ball',23);
INSERT INTO cricket VALUES('aninkjya','India',24,17,'rashmi',12,'club','chanpatna','kkr','Mehele',12,1200353,13,'black','bat ball',24);
INSERT INTO cricket VALUES('umesh','India',43,18,'pavitra',12,'Moinul haque','nagpur','kkr','Mehele',12,56768,13,'red','bat ball',25);
INSERT INTO cricket VALUES('abbott','Australia',34,20,'rahul',12,'Relinace','mumbai','kkr','Mehele',12,89786,13,'blue','bat ball',26);
INSERT INTO cricket VALUES('agar','Australia',39,12,'anjali',12,'central','bihar','kkr','danish',12,977685,13,'orange','bat ball',27);
INSERT INTO cricket VALUES('bolland','Australia',45,20,'bharath',12,'kaloor','kolkata','kkr','Mehele',12,1200000,13,'sky blue','bat ball',29);
INSERT INTO cricket VALUES('carey','Australia',23,22,'manjula',12,'ACVA','dehli','kkr','Mehele',12,234235,13,'red','bat ball',30);
INSERT INTO cricket VALUES('cummis','Australia',34,23,'nagaraj',12,'Grren park','hyderbad','kkr','danish',12,46456456,13,'oramge','bat ball',31);
INSERT INTO cricket VALUES('david','Australia',32,24,'vimala',12,'Braboure','lucknow','sr','danish',12,12342235,13,'black','bat ball',32);
INSERT INTO cricket VALUES('ellis','Australia',23,15,'shivkumar',12,'gymnkhan','chennai','sr','danish',12,1223530,13,'red','bat ball',33);
INSERT INTO cricket VALUES('finch','Australia',45,16,'neelu',12,'Holkar','america','sr','Mehele',12,12460000,13,'peach','bat ball',34);
INSERT INTO cricket VALUES('gardener','Australia',36,14,'rahul',12,'keenan','bombay','sr','Mehele',12,3537,13,'yellow','bat ball',35);
INSERT INTO cricket VALUES('garth','Australia',53,16,'rahul',12,'lalbhadur shastri','cuttack','sr','danish',12,436547,13,'red','bat ball',36);
INSERT INTO cricket VALUES('green','Australia',35,14,'rahul',12,'motibagh','nagpur','sr','Mehele',12,1203000,13,'red','bat ball',37);
INSERT INTO cricket VALUES('harris','Australia',44,42,'rahul',12,'nahar singh','saifai','sr','Mehele',12,5645756,13,'red','bat ball',38);
INSERT INTO cricket VALUES('head','Australia',33,45,'rahul',12,'PCSA','guwahati','sr','danish',12,346457,13,'red','bat ball',39);
INSERT INTO cricket VALUES('healy','Srilanka',33,23,'rahul',12,'sardar','kochi','rcb','Mehele',12,23746,13,'red','bat ball',40);
INSERT INTO cricket VALUES('ingis','Srilanka',35,14,'rahul',12,'university ground','kanpur','csk','danish',12,27364,13,'link blue','bat ball',41);
INSERT INTO cricket VALUES('asalanka','Srilanka',45,35,'rahul',12,'university stadium','UP','csk','danish',12,120000,13,'sky blue','bat ball',42);
INSERT INTO cricket VALUES('bandara','Srilanka',45,45,'rahul',12,'VCAG','west bengal','rcb','danish',12,62354424,13,'green','bat ball',43);
INSERT INTO cricket VALUES('chameera','Srilanka',24,32,'rahul',12,'narendra','odisha','mi','Mehele',12,2143123,13,'orange','bat ball',44);
INSERT INTO cricket VALUES('chandinal','Srilanka',23,34,'rahul',12,'snajiv','bangalore','mi','Mehele',12,234264,13,'red','bat ball',45);
INSERT INTO cricket VALUES('dilhari','Srilanka',24,14,'rahul',12,'channa','maharastra','rcb','Mehele',12,120000,13,'black','bat ball',46);
INSERT INTO cricket VALUES('rashmi','newzealand',24,14,'rahul',12,'channa','maharastra','rcb','Mehele',12,120000,13,'black','bat ball',47);
INSERT INTO cricket VALUES('yasmin','Srilanka',24,14,'rahul',12,'channa','maharastra','rcb','Mehele',12,120000,13,'black','bat ball',48);
INSERT INTO cricket VALUES('swati','Srilanka',24,14,'rahul',12,'channa','maharastra','rcb','Mehele',12,120000,13,'black','bat ball',49);
INSERT INTO cricket VALUES('dilhari','Srilanka',24,14,'rahul',12,'channa','maharastra','rcb','Mehele',12,120000,13,'black','bat ball',50);

UPDATE cricket SET couch_name='NAGARAJ' where couch_name='rahul';
SELECT * FROM cricket where couch_name='NAGARAJ';
SELECT * FROM cricket where exp=14;
SELECT * FROM cricket where team_name='channa';
SELECT * FROM cricket where player_country='India';
SELECT * FROM cricket where game_type=rcb;
SELECT * FROM cricket where no_of_teams=12;
SELECT player_name FROM cricket where price=34879;
SELECT player_country,id FROM cricket where host_name='Mehele';
SELECT * FROM cricket where stadium_loc='maharastra';
SELECT player_name FROM cricket where player_country='India';

SELECT * FROM cricket where team_name='chinna swami' AND stadium_loc='bangalore';
SELECT player_country,jersey_no FROM cricket where player_country='India' AND game_type='rcb';
SELECT * FROM cricket where game_type='rcb' AND no_of_players=20;
SELECT age,player_name FROM cricket where jersey_no=13 AND age=34;
SELECT player_name,player_country FROM cricket where no_of_players=20 AND jersey_color='red';
SELECT * FROM cricket;

SELECT * FROM cricket where couch_name='NAGARAJ' OR stadium_loc='bangalore';
SELECT player_country,jersey_no FROM cricket where no_of_teams=12 OR jersey_no=13;
SELECT * FROM cricket where no_of_players=20 OR exp=12;
SELECT age,player_name FROM cricket where team_name='chinna swami' OR game_type='rcb';
SELECT player_name,player_country FROM cricket where player_country='Srilanka' OR stadium_loc='maharastra';

UPDATE cricket SET game_type='ESCP' ,no_of_teams=19 where game_type='rcb' AND ID=2;
UPDATE cricket SET host_name='Sahana' where game_type='ESCP';
UPDATE cricket SET exp=14 where no_of_players=20;
UPDATE cricket SET price=1232 where jersey_no=13;
UPDATE cricket SET no_of_players=20 where ID=3;
UPDATE cricket SET game_type='rcb' WHERE stadium_loc='nagpur';
UPDATE cricket SET game_type='ESCP' where game_type='rcb';

SELECT * FROM bikes cricket WHERE id =3 OR id=4 OR id=5;
SELECT * FROM cricket WHERE id IN (4,5,7);  -- USE TO AVOID MULTIPLE OR OPERATOR
SELECT * FROM cricket WHERE id NOT IN (100,4,6);  -- used to exclude the data while fetching
SELECT * FROM cricket WHERE id between 4 AND 8;  -- FETCH THE DATA WITHIN THE RANGE 
SELECT * FROM cricket WHERE id NOT between 4 AND 8; 