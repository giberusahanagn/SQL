use jan7batch;
CREATE TABLE bank_transaction(id int,bankNmae varchar(40),amount_withdraw decimal(7,2),transaction_time timestamp,is_active boolean);
INSERT INTO bank_transaction values(1,'sbi',3577.43,now(),true);
SELECT * FROM bank_transaction;
INSERT INTO bank_transaction values(2,'hdfc',35737.43,now(),false);
-- TRUNCATE table bank_transaction;
INSERT INTO bank_transaction values(3,'icici',65787.43,now(),false),(4,'axis',65787.43,now(),true),(5,'canara',65787.43,now(),true),(6,'syndicate',65787.43,now(),true);
use jan7batch;
commit;
SELECT * FROM bank_transaction where bankNmae ='sbi';
SELECT id FROM bank_transaction where id =3;
SELECT id,bankNmae FROM bank_transaction where bankNmae='sbi';

-- ALTER TABLE bank_transaction MODIFY id after bankNmae varchar(20);
SELECT * FROM bank_transaction where id=4 AND bankNmae='axis'AND  is_active =true;
SELECT * FROM bank_transaction where id=4 OR bankNmae='icici';
SELECT * FROM bank_transaction where (id=4 OR bankNmae='icici') and is_active=true;
-- UPDATE table_name SET column_name ='data' where condition;

UPDATE bank_transaction SET bankNmae='sahana' where id=1;
DELETE FROM bank_transaction WHERE is_active=false;
DELETE FROM bank_transaction WHERE is_active=true AND bankNmae='axis';
DELETE FROM bank_transaction WHERE is_active=false OR bankNmae='hdfc';
rollback;
TRUNCATE table bikes;
CREATE TABLE bikes(id int,name varchar(30),model varchar(30)); 
INSERT into bikes values(1,'hero honda','34');
INSERT into bikes values(2,'hero honda','34');
SAVEPOINT firstOne;
rollback to firstOne;
select * from bikes;
Drop table bikes;

