primary key
CREATE TABLE soap(id int primary key,s_name varchar(40) unique,s_price int not null,check(s_price >40));
select * from soap;
INSERT INTO soap values(1,'mysoresandal',60);
INSERT INTO soap values(2,'lux',60);
CREATE TABLE shampoo(id int ,name varchar(40) ,price int not null,primary key(id,name));
truncate table shampoo;
INSERT INTO shampoo values(1,'chik',1);
INSERT INTO shampoo values(2,'clinic',2);
INSERT INTO shampoo values(3,'clinic',3);
foreign key
is a column in one table that refers to primary key of other table
primary key is present in parent table
foreign key is present in child tablcric_typee
foreign key values can be duplicate
primary key and foreign key value should be same;

CREATE TABLE airport_details(id int not null,cust_name varchar(30) unique,flight_name varchar(30) not null,flight_no int primary key,pilot_no varchar(30));
CREATE TABLE cust_details(id int not null,c_name varchar(30),c_flight_no int,c_source varchar(30),c_destination varchar(40),
foreign key(c_flight_no) references airport_details(flight_no));
insert into airport_details values(1,'vinay','kingfisher',2001,'nandhu');
insert into airport_details values(2,'kiran','indigo',2002,'sahana');
insert into airport_details values(3,'rashmi','indigo ',2003,'swati');
insert into airport_details values(4,'yasmeen','indigo',2004,'sahana');

SELECT * FROM airport_details;
insert into cust_details values(1,'kshema',2001,'bangalore','mysore');
insert into cust_details values(2,'lakshmi',2002,'mysore','bangalore');
insert into cust_details values(3,'bhavana',2004,'btm','rajajinagar');
insert into cust_details values(4,'yasmeen',2004,'bangalore','mysore');

SELECT * FROM cust_details;

select flight_name from airport_details where flight_no=(select c_flight_no from cust_details where c_name='kshema');

select c_flight_no from cust_details where c_name='kshema';

select flight_name from airport_details where flight_no = (select c_flight_no from cust_details where c_name='kshema');
select flight_name from airport_details where flight_no = (select c_flight_no from cust_details where c_source='bangalore');

create table music_inst(id int primary key auto_increment,name varchar(49),price int );

INSERT INTO music_inst(name,price) values('flute',400);
INSERT INTO music_inst(name,price) values('guiter',4890);
INSERT INTO music_inst(name,price) values('guiter',null);
INSERT INTO music_inst(name,price) values('guiter',4890);

select * from music_inst;

ALTER TABLE music_inst ADD constraint price_unique unique(price);
ALTER TABLE music_inst ADD constraint name_unique unique(name);
ALTER TABLE music_inst modify name varchar(30) not null;
desc music_inst;

select current_date();
select datediff('2023-01-22','2023-01-24');
select adddate('2023-01-22',interval 5 month);
select adddate('2023-01-22',interval 5 second);
select adddate('2023-01-22',interval 5 minute);
select adddate('2023-01-22',interval -5 month);
select adddate('2023-01-22',interval 12 week);
select adddate('2023-10-22',interval 1 quarter);
select adddate('2023-01-22',interval -2 quarter);
select adddate('2023-01-22',interval 7 year);
select adddate('2023-01-22',interval 1 hour);

select dayofmonth('2023-01-23');
select dayofweek('2023-01-26');
select dayofyear('2016-10-31');
select last_day('2016-02-26');
select maketime(02,12,34);
select monthname('2023-05-26');
select quarter('2023-05-26');
select weekofyear('2023-12-31');