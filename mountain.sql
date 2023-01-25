CREATE TABLE mountain(id int unique check(id>0),name varchar(30) unique,country varchar(30) ,
place varchar(40) not null,height bigint not null check(height>290),famous boolean ,km bigint unique check(km>10));
ALTER TABLE mountain ADD COLUMN entry_fee boolean not null ,ADD fees enum('0','300','400'),ADD person_from enum('karnataka','ap','chennai');
DROP TABLE mountain;
DESC mountain;
SELECT * FROM mountain;
INSERT INTO mountain VALUES(1,' Mount Everest','India ','Mahalangur',8848,true,500,false,1,3);
INSERT INTO mountain VALUES(2,'  Kangchenjunga','bharath ','Karakoram ',23236,true,300,true,3,1);
INSERT INTO mountain VALUES(3,'  Nanda Devi','hindusthan   ','vicinity  ',56757,true,200,true,3,2);
INSERT INTO mountain VALUES(4,' Denali','India  ','Alaska  ',6190,false,600,false,1,3);
INSERT INTO mountain VALUES(5,'  Saltoro Kangri','India ','Siachen  ',345346,true,400,true,3,1);
INSERT INTO mountain VALUES(6,'  Manaslu ','hindusthan   ','Mansiri Himal  ',5477,true,567,false,1,2);
INSERT INTO mountain VALUES(7,' 	Makalu','Nepal ','	Mahalangur Himalaya',8586,true,800,false,1,3);
INSERT INTO mountain VALUES(8,'  Dhaulagiri ','Nepal ','	Dhaulagiri ',23236,true,230,true,2,2);
INSERT INTO mountain VALUES(9,'  Broad Peak','China   ','Gasherbrum   ',4387,false,345,false,1,2);
INSERT INTO mountain VALUES(10,' 	Shishapangma','USA  ','Gosainthan  ',6190,false,646,false,1,3);

INSERT INTO mountain VALUES(11,' 	Gyachung Kang','Nepal,China ','Cho Oyu',1963,true,123,false,1,3);
INSERT INTO mountain VALUES(12,'  Himalchuli','India ','	Gasherbrum I ',2457,true,345,true,3,3);
INSERT INTO mountain VALUES(13,' Chomo Lonzo','hindusthan   ','Makalu  ',12563,true,346,false,1,2);
INSERT INTO mountain VALUES(14,' 	Rakaposhi','Pakistan  ','Haramosh  ',2354,false,327,false,1,3);
INSERT INTO mountain VALUES(15,'  	Namcha Barwa','India ','Assam  ',7878,true,333,true,3,1);
INSERT INTO mountain VALUES(16,'  	Kanjut Sar ','hindusthan   ','Hispar  ',7367,true,678,false,1,2);
INSERT INTO mountain VALUES(17,' Kamet','pakisthan ','	Garhwal Himalaya',2442,true,324,false,1,3);
INSERT INTO mountain VALUES(18,'  	Saltoro KangriK10 ','India ','Saltoro Karakoram ',7347,true,244,false,3,2);
INSERT INTO mountain VALUES(19,'  Tirich Mir','India   ','Hindu Kush   ',6347,false,556,true,3,2);
INSERT INTO mountain VALUES(20,' Molamenqing','USA  ','Gosainthan  ',8776,false,235,false,1,3);