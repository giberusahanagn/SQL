CREATE TABLE mtrProducts(id int,prod_name varchar(30),price int);
SELECT * FROM mtrProducts;
use sports;
INSERT INTO mtrProducts VALUES(1,' karadapudi',100),(2,'sambar',150),(3,'puliyogare  ',200),(4,'rasam',100);
truncate TABLE mtrProducts;
 LTRIM---> LEFT REMOVE
SELECT LTRIM('  XWORKZ') as space_remove;
SELECT LENGTH('XWORKZ   ') AS LENGTH;
 RTRIM--->REMOVE THE TRAILING SPACES FROM DATA
SELECT id,prod_name,length(prod_name) from mtrproducts;
SELECT RTRIM('LAPTOP   ') AS trail_space;
SELECT RTRIM(prod_name) as trail from mtrproducts;
SELECT LTRIM(rtrim('   SAHANA    '))AS SPACES;
ORDER BY;

SELECT * from olympic_games order by no_of_medals;
SELECT * from olympic_games order by id DESC;

SELECT country from olympic_games order by country DESC;
constraints:USE TO RESTRICT THE DATA,NULL VALUES
USE SOME RULES FROM DATA,USE LIMIT THE TYPE OF DATA;

CREATE TABLE marriage(id int not null ,bride_name varchar(40),groom varchar(30) ,pujari varchar(30) not null);
INSERT INTO marriage VALUES(1,'atheya','klrahul','hgscs');
INSERT INTO marriage VALUES(2,'manjula','nagaraj','hgscs');
INSERT INTO marriage VALUES(1,'atheya','klrahul','hgscs');

CREATE TABLE ghost (id int not null unique,ghost_name varchar(30) unique,ghost_song varchar(30));
INSERT INTO ghost VALUES(1,'atheya','rara');
INSERT INTO ghost VALUES(2,'mohini','thangali');
INSERT INTO ghost VALUES(3,'chandramuki','kanachana');
INSERT INTO ghost VALUES(4,'annebella','thangali');
ALTER TABLE ghost ADD COLUMN dress_code varchar(40) default'white';
SELECT * FROM ghost;
commit;

CREATE TABLE serials(id int unique not null ,name varchar(30) unique,director varchar(40) not null unique,episode int, check(episode>=500));
INSERT INTO serials VALUES(1,'Gattimela','sahana',500);
INSERT INTO serials VALUES(2,'kannadathi','swathi',589);

INSERT INTO serials VALUES(3,'kavyanaglai','neelu',589);

CREATE TABLE makeup(id int unique,brand varchar(30) not null unique,type enum('powder','cream','perfume'),price int,expirt_date date,quantity int,check(price >=10 and quantity <=1000));
insert into makeup values(1,'ponds',1,11,'2023-01-23',3);
insert into makeup values(2,'nykaa',2,17,'2023-01-23',3);
insert into makeup values(null,'himalaya',1,11,'2023-01-23',3);