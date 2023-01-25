CREATE TABLE bank_transaction(id int,bankNmae varchar(40),amount_withdraw decimal(7,3),transaction_time timestamp,is_active boolean);
INSERT INTO bank_transaction values(1,'sbi',3577.43,now(),true);
SELECT * FROM bank_transaction;
INSERT INTO bank_transaction values(2,'hdfc',35737.43,now(),false);
-- TRUNCATE table bank_transaction;
INSERT INTO bank_transaction values(3,'icici',65787.43,now(),true),(4,'axis',65787.43,now(),true),(5,'canara',65787.43,now(),true),(6,'syndicate',65787.43,now(),true);
use jan7batch;
SELECT * FROM bank_transaction where bankNmae ='sbi';
SELECT id FROM bank_transaction where id =3;
SELECT id,bankNmae FROM bank_transaction where bankNmae='sbi';

-- ALTER TABLE bank_transaction MODIFY id after bankNmae varchar(20);
SELECT * FROM bank_transaction where id=4 AND bankNmae='axis'AND  is_active =true;
SELECT * FROM bank_transaction where id=5 OR bankNmae='icici';
SELECT * FROM bank_transaction where bikes (id=4 OR bankNmae='icici') and is_active=true;
-- UPDATE table_name SET column_name ='data' where condition;

UPDATE bank_transaction SET  bankNmae='sahana' where id=1;
