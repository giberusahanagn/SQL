CREATE TABLE cust_info(id int primary key,c_name varchar(30) unique,bank_name varchar(30) unicode,no_of_customers int );
select * from cust_info;
USE SPORTS;

padding--->adding some value to existing data
LPAD(ORIGINALSTRING,LENGTHOFORIGINALSTRING,VALUETOBEADDED);
use sports;	
SELECT LPAD('XWORKZ',10,7);
SELECT RPAD('XWORKZ',13,'ZRT');
groupBy--->group by are used in aggregarte	functions.
		always used with select statements
		always comes before having and order by
		always used   after where clause
    truncate table bus_details;    
CREATE TABLE bus_details(id int primary key,b_source varchar(30),b_destination varchar(30),b_type varchar(40),price int);
select * from bus_details;
INSERT INTO bus_details values(1,'mysore circle','bashyam circle','bmtc',15);
INSERT INTO bus_details values(2,'mysore','bangalore','ksrtc',150);
INSERT INTO bus_details values(3,'davanagere','chitadurga','kstrc',340);
INSERT INTO bus_details values(4,'mysore','chitadurga','kstrc',154);
INSERT INTO bus_details values(5,'davanagere','banaglore','sleeping',154);
INSERT INTO bus_details values(6,'chitadurga','banaglore','srs',154);
INSERT INTO bus_details values(7,'hassan','banaglore','srs',184);
INSERT INTO bus_details values(8,'bijapur','banaglore','srs',354);
INSERT INTO bus_details values(9,'ilkal','banaglore','kstrc',554);
INSERT INTO bus_details values(10,'gadag','banaglore','srs',168);
INSERT INTO bus_details values(11,'majestic','yelahanka','bmtc',54);
INSERT INTO bus_details values(12,'belagavi','majestic','srs',78);
INSERT INTO bus_details values(13,'bidar','belagavi','srs',78);
INSERT INTO bus_details values(14,'bijapur','hampi','kstrc',78);
INSERT INTO bus_details values(15,'hubali','majestic','srs',78);
INSERT INTO bus_details values(16,'yelahanka','dakshina kannada','srs',78);
INSERT INTO bus_details values(17,'madikere','hassan','srs',78);
INSERT INTO bus_details values(18,'chikmangalore','ajjampura','kstrc',78);
select * from bus_details;
SELECT count(b_type)as numbers,b_type as busName from bus_details group by b_type;
use sports;
SELECT SUM(price),b_type as toatl from bus_details group by b_type;

SELECT MIN(price)as  min_price,b_type  from bus_details group by b_type;
SELECT MAX(price)as  min_price,b_type  from bus_details group by b_type;

HAVING ------->ALWAYS USED WITH GROUP BY
			USED TO FILTER THE DATA NOT WHERE
            USED BY GROUP BY RETURNS
            
SELECT MAX(price)as  max_price,b_type  from bus_details group by b_type order by max_price;
SELECT MAX(price)as  max_price,b_type  from bus_details group by b_type  having max_price >150 ;
SELECT MAX(price)as  max_price,b_type  from bus_details group by b_type  having max_price >150 order by min_price;
SELECT MAX(price)as  max_price,b_type  from bus_details group by b_type  having max_price >150 order by min_price desc;

SELECT MIN(price)as min_price, b_type from bus_details group by b_type having min_price >80 and min_price <190;
SELECT MIN(price) as min_price,b_type from bus_details group by b_type having min_price <100 order by min_price;
SELECT MIN(price) as min_price,b_type from bus_details group by b_type having min_price <100 order by min_price desc;

lock-->use to lock tha data
cannot to update

Lock table bus_details read;
unlock tables;
views-->
CREATE VIEW view_name as select * from bus_details;
select * from view_name;
UPDATE bus_details set b_source ='tumkur' where id=1;
CREATE TABLE bus_view2 as select id,b_source from bus_details;
select * from bus_view2;

JOINS  -->combineing a table 
based on join condition or column condition
SELECT * FROM olympic_games;

