/*ALTER : add column to an exisiting table
 ---->syntax--:ALTER TABLE table_name ADD COLUMN column_name datatype;
 DROP the column from ------||---------
---->syntax--: ALTER TABLE table_name DROP COLUMN column_name;
 Rename can change the column name
 Change the datatype 
 
 1)ALTER TABLE table_name RENAME COLUMN old_col_name TO new_col_name;
ALTER TABLE festival
 */
 use sports;
CREATE TABLE festival(fest_id int,fest_name varchar(20),fest_date date,fest_day varchar(15),fest_region varchar(20));
INSERT INTO festival values(1,'dasara','2022-10-09','sunday','south');
INSERT INTO festival values(2,'dasara','2022-10-09','monday','south');
INSERT INTO festival(fest_id,fest_name) values(3,'dasara');
INSERT INTO festival values(4,'Deepvali','2022-08-09','sunday','south');
INSERT INTO festival values(5,'dasara','2022-10-09','friday','south');
SELECT * FROM festival;

ALTER TABLE festival ADD COLUMN food varchar(30) default 'palav';
ALTER TABLE festival ADD COLUMN state  varchar(20);
INSERT INTO festival(fest_id,state) values(8,'karanataka');

ALTER TABLE festival RENAME COLUMN fest_id to no;
ALTER TABLE festival RENAME COLUMN fest_date to date;
DESC festival;
ALTER TABLE festival MODIFY COLUMN fest_name  varchar(50); -- changing length
ALTER TABLE festival MODIFY COLUMN no  bigint; -- bitInt
ALTER TABLE festival MODIFY COLUMN no varchar(20); -- can convert int to varchar

CREATE TABLE places( no int,place_name varchar(20),famous varchar(30),state varchar(20));
INSERT INTO places VALUES(1,'DAVANAGERE','BENNE DOSA','KARNATAKA');
INSERT INTO places VALUES(2,'DAVANAGERE','BENNE DOSA','KARNATAKA');
INSERT INTO places VALUES(3,'DAVANAGERE','BENNE DOSA','KARNATAKA');
ALTER TABLE places MODIFY COLUMN state varchar(50);
ALTER TABLE places DROP no;
ALTER TABLE places RENAME COLUMN state TO country;
DESC places;
RENAME table old_table_name to new_table_name;		
-- TRUNCATE :DELETE THE DATA BUT TABLE STRUCTURE REMAIN SAME 
TRUNCATE TABLE table_name;
DROP TABLE places; 
DROP TABLE places; 
SELECT * FROM places;
use jan7batch;
SELECT COUNT(fest_name) from places;