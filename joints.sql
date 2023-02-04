JOINS

CREATE DATABASE JOINS;
use joins;
CREATE TABLE a(id int);
CREATE TABLE B(id int);

INSERT INTO a values(1),(2),(3),(4),(5),(6);
INSERT INTO b values(8),(12),(13),(14),(15),(16);
INSERT INTO B values(1),(2),(3);
commit;
INNER JOIN
SELECT * FROM a  INNER JOIN b ON a.id=b.id;


CREATE TABLE pencil(id int,laptop_name varchar(30));
CREATE TABLE pen(id int,bike_name varchar(30));
insert into pencil values(1,'hp'),(2,'dell'),(3,'lenovo'),(4,'asus'),(5,'mac'),(8,'pulsar'),(9,'splendor'),(10,'ola');

select * from a inner join pencil on a.id=pencil.id;

select * from olympic_games o inner join bus_details b on o.id=b.id;
select o.id,game_type,b.id,b_source from olympic_games o inner join bus_details b on o.id=b.id;

select * from olympic_games o inner join bus_details b on o.id=b.id inner join airport_details a on b.id=a.id;
select * from airport_details a inner join cust_details c on a.flight_no=c.c_flight_no;
select * from airport_details a inner join cust_details c on a.flight_name=c.c_source;
select * from airport_details a inner join cust_details c on a.cust_name=c.c_name ;
select * from airport_details a inner join cust_details c on a.cust_name=c.c_name inner join bus_details bus on bus.b_destination=c.c_destination;

LEFT JOIN
return all left table and all the matching record from right table 
return all left table and all the matching record from right table 
					if values does not match it will return null;
SELECT * FROM a LEFT JOIN pencil b ON a.id=b.id;

SELECT * FROM bus_details  B LEFT JOIN cust_details C ON B.id=C.id left join festivals F ON F.fest_id=B.id ;
SELECT B.id as bus_id,C.id,F.id FROM bus_details  B LEFT JOIN cust_details C ON B.id=C.id left join football_info F ON F.id=B.id ;
SELECT B.id as bus_id,C.id,F.id,G.id FROM bus_details  B LEFT JOIN cust_details C ON B.id=C.id left join football_info F ON F.id=B.id left join ghost G ON G.id=B.id;

3)RIGHT JOIN----->return all RIGHT table and all the matching record from left table 
					if values doesnot match it will return null
					SELECT a.id as a_id,p.id as p_id FROM a RIGHT JOIN pencil p ON a.id=p.id;
SELECT * FROM bus_details  B RIGHT JOIN cust_details C ON B.id=C.id RIGHT join festivals F ON F.fest_id=B.id ;
SELECT B.id as bus_id,C.id,F.id FROM bus_details  B RIGHT JOIN cust_details C ON B.id=C.id RIGHT join football_info F ON F.id=B.id ;
SELECT * FROM bus_details  B RIGHT JOIN cust_details C ON B.id=C.id RIGHT join football_info F ON F.id=B.id RIGHT join ghost G ON G.id=B.id;
CROSS JOIN--------->USED TO JOIN THE EACH ROW OF ONE WITH EACH AND  EVERY ROW OFANOTHER TABLE
			IT WILL RETURN CARTESIAN PRODUCT
SET OPERATORS
CREATE TABLE D (ID int ,name varchar(20));
insert into d values(1,'dell'),(2,'splendor'),(3,'hp'),(4,'bajaj'),(5,'asus');
insert into d values(10,'bike'),(8,'acer');
union
select id from a union select id from d;
union all
select id from a union all select id from d;
intersect
select distinct id from a inner join b using(id);
subqueries
queries inside the queries are called subqueries
inner querie excute first
select flight_name from airport_details where flight_no=(select c_flight_no from cust_details where c_name='kshema');

select c_flight_no from cust_details where c_name='kshema';

select flight_name from airport_details where flight_no = (select c_flight_no from cust_details where c_name='kshema');
select flight_name from airport_details where flight_no = (select c_flight_no from cust_details where c_source='bangalore');

select * from airport_details where flight_no = (select c_flight_no from cust_details where c_name='kshema');
