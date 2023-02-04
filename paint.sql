create table paint(p_id int not null unique,p_color varchar(30) primary key,P_qpaintr_number bigint not null unique,p_company varchar(40) not null,p_type varchar(30) not null,p_quantity int not null,
p_price bigint ,p_quality boolean,p_Ownername varchar(30),p_location varchar(30),check(p_price>100 and p_id>=1));
create table lipstick(l_id int not null unique ,l_color varchar(30),L_qr_number bigint not null unique,l_company varchar(40) not null,
l_type varchar(30) not null,l_quantity int not null ,l_price bigint,l_quality boolean,lCust_name varchar(30),l_location varchar(30),
foreign key(l_color) references paint(p_color) );
drop table paint;
drop table lipstick;
desc paint;
select * from paint;
select * from lipstick;
truncate table lipstick;
select distinct(l_color)from lipstick;
insert into paint values(1,'gold',9,'indigo','waterpaint',100,1000,true,'sahana','bangalore');
insert into paint values(2,'blue',10,'asian','liquid',100,3000,true,'swati','bangalore');
insert into paint values(3,'red',11,'jsw','liquid',101,12445,true,'neelu','bangalore');
insert into paint values(4,'green',12,'nippon','waterpaint',102,34235,false,'sheela','bangalore');
insert into paint values(5,'orange',13,'kansai','liquid',103,2455,true,'rajeshawari','mysore');
insert into paint values(6,'white',14,'indigo','powder',104,3525,false,'nayana','bagalkote');
insert into paint values(7,'black',15,'dulux','waterpaint',105,23525,true,'sheethal','bangalore');
insert into paint values(8,'saffron',16,'asian','waterpaint',106,23525,false,'bindhu','chikkamangalur');
insert into paint values(9,'pink',17,'jsw','liquid',107,5757,true,'kavya','raichur');
insert into paint values(10,'navyBlue',18,'nippon','powder',108,35235,false,'jhanavi','yadgiri');
insert into paint values(11,'grey',19,'kansai','liquid',109,100350,true,'anjali','bijapur');
insert into paint values(12,'maroon',20,'indigo','waterpaint',110,3535,false,'anusha','tumkur');
insert into paint values(13,'skyBlue',21,'jsw','waterpaint',111,2346,false,'vanitha','bangalore');
insert into paint values(14,'distumper',22,'asian','powder',112,7697,true,'vaishanvi','mysore');
insert into paint values(15,'parrotGreen',23,'nippon','liquid',113,6788,false,'jothi','chitradurga');
insert into paint values(16,'cement',24,'jsw','powder',114,6784,true,'sinchana','raichur');
insert into paint values(17,'chocolate',25,'dulux','waterpaint',115,2346,true,'kanchana','bagalkote');
insert into paint values(18,'skinColor',26,'jsw','powder',116,89676,false,'preethu','hassan');
insert into paint values(19,'silver',27,'nippon','liquid',117,35235,true,'harshitha','chikkamangalur');
insert into paint values(20,'peach',28,'asian','waterpaint',118,34636,false,'seema','bangalore');
insert into paint values(21,'purple',29,'dulux','powder',119,2363,true,'sahana','davanagere');
commit;
use joins;

insert into lipstick values(1,'gold',9,'himalaya','matte',100,50,true,'neelu','donnehalli');
insert into lipstick values(2,'blue',10,'nykaa','gloss',100,100,false,'harshitha','davanagere');
insert into lipstick values(3,'red',11,'dove','gel',101,132,true,'shwetha','btm');
insert into lipstick values(4,'red',12,'henna','liquid',102,564,false,'nandhini','rajajinagar');
insert into lipstick values(5,'red',13,'mac','solid',103,346,true,'rashmi','mysore circle');
insert into lipstick values(6,'white',14,'myglamm','shiner',104,234,false,'nayana','silk board');
insert into lipstick values(7,'black',15,'maybellien','liquid',105,346,true,'veena','bangalore');
insert into lipstick values(8,'red',16,'nivea','matte',106,251,false,'shwetha','chikkamangalur');
insert into lipstick values(9,'pink',17,'baby lips','liquid',107,157,true,'vijaya','raichur');
insert into lipstick values(10,'navyBlue',18,'mat','matte',108,346,false,'bhoomi','yadgiri');
insert into lipstick values(11,'grey',19,'lifeboy','gloss',109,146,true,'amulya','bijapur');
insert into lipstick values(12,'maroon',20,'santoor','gel',110,124,false,'ramya','tumkur');
insert into lipstick values(13,'black',21,'patangali','shiner',111,234,false,'rakshitha','bangalore');
insert into lipstick values(14,'red',22,'sugar','powder',112,23,true,'anusha','mysore');
insert into lipstick values(15,'red',23,'mamaEarth','shiner',113,6788,false,'spandhana','chitradurga');
insert into lipstick values(16,'gold',24,'jsw','vaselian',114,156,true,'sinchana','raichur');
insert into lipstick values(17,'red',25,'zudio','waterpaint',115,236,true,'kanchana','bagalkote');
insert into lipstick values(18,'red',26,'max','matte',116,376,false,'preethu','hassan');
insert into lipstick values(19,'red',27,'lakme','liquid',117,235,true,'harshitha','mysore');
insert into lipstick values(20,'pink',28,'goPurple','waterpaint',118,136,false,'seema','bangalore');
commit;
Select  count(l_price) as paint_price,l_location from lipstick group by l_location;
Select  count(p_id) as paint_id,p_type from paint group by p_type;
select  max(p_price)as paint_price from paint group by p_company;
select  min(p_price)as paint_price,p_type,p_company from paint group by p_price;
select  sum(p_price)as paint_price,p_company from paint group by p_company;
select  count(l_price),p_type,p_company from paint group by p_company;
select  count(l_id) ,p_type,p_company from paint group by p_company;
select  min(l_quantity),l_type,l_company from lipstick group by l_company;
select  count(l_id) ,l_company from lipstick group by l_company;
select  count(p_id)as paint_id,p_company from paint group by l_company;
select  count(l_qr_number) from lipstick group by l_color;


select  p_id,min(p_price)as paint_price,p_type,p_company from paint group by p_company having paint_price > 2342 order by p_id;
select count(p_quality) as paint_quality,p_id,p_ownername from paint group by p_location having paint_quality=true;

select  p_id,min(p_price)as paint_price,p_type,p_company from paint group by p_id having p_id > 10 order by p_id;
select  p_id,max(p_price)as paint_price from paint group by p_id having p_id < 10 order by p_id;
select  * from paint group by p_id having p_id = 10 order by p_id;
select  * from paint group by p_id having p_id > 10 order by p_quality;
select  max(p_price)p_type,p_quality from paint group by p_id having p_id > 10 order by p_qpaintr_number;
select  p_company,(p_price) p_company from paint group by p_id having p_id > 10 order by p_id;
select  *  from paint group by p_id having p_id > 10 order by p_price;
select  p_id,min(p_price),p_company from paint group by p_id having p_id > 10 order by p_id;


use joins;
select *from paint P left join lipstick L ON P.p_ownerName=L.lCust_Name;
select *from paint P left join lipstick L ON P.p_quantity=L.l_quantity;
select *from paint P left join lipstick L ON P.p=L.lCust_Name;
select *from paint P left join lipstick L ON P.p_location=L.l_location;
select *from paint P left join lipstick L ON P.p_type=L.l_type;

select *from paint P right join lipstick L ON P.p_ownerName=L.lCust_Name;
select *from paint P right join lipstick L ON P.p_quantity=L.l_quantity;
select *from paint P right join lipstick L ON P.p=L.lCust_Name;
select *from paint P right join lipstick L ON P.p_location=L.l_location;
select *from paint P right join lipstick L ON P.p_type=L.l_type;
select P_ownerName,LCust_Name from paint P left join lipstick L ON P.p_ownerName=L.lCust_Name;
select * from paint P left join lipstick L ON P.p_location=L.l_location;
select p_location,p_Ownername,P_COLOR from paint where p_color=(select l_color from lipstick where l_location='btm');
select p_location,p_Ownername,P_COLOR from paint where p_color=(select l_color from lipstick where lCust_name='spandhana');
select* from paint where p_color=(select l_color from lipstick where l_company='goPurple');
select p_location,p_Ownername,P_COLOR from paint where p_color=(select l_color from lipstick where l_quantity=106);
select* from paint where p_color=(select l_color from lipstick where l_price=2346);
select* from paint where p_color=(select l_color from lipstick where l_id=2);
select p_id,p_color,P_qpaintr_number from paint where p_color=(select l_color from lipstick where l_id=3);
select P_COLOR from paint where p_color=(select l_color from lipstick where l_quantity=118);
select* from paint where p_color=(select l_color from lipstick where l_price=136);
select p_location from paint where p_color=(select l_color from lipstick where lCust_name='spandhana');
SELECT RPAD('XWORKZ',13,'ZRT');
select lpad(p_type,13,'sahana') from paint ;
select lpad(p_color,10,'color') from paint ;
select lpad(p_Ownername,13,'OwnerName') from paint ;
select lpad(p_location,14,'from') from paint ;
select lpad(p_type,13,'sahana') from paint ;
select lpad(l_color,9,'Color:') from lipstick ;
select lpad(l_company,13,'Company:') from lipstick ;
select lpad(l_type,9,'Type:') from lipstick ;
select lpad(lCust_name,13,'CustName:') from lipstick ;
select lpad(l_color,9,'Color:') from lipstick ;
select lpad(l_location,13,'location:') from lipstick ;



select rpad(p_type,13,'Type:') from paint ;
select rpad(p_color,10,'color:') from paint ;
select rpad(p_Ownername,13,'OwnerName') from paint ;
select rpad(p_location,14,'from') from paint ;
select rpad(p_type,13,'sahana') from paint ;
select rpad(l_color,9,'Color:') from lipstick ;
select rpad(l_company,13,'Company:') from lipstick ;
select rpad(l_type,9,'Type:') from lipstick ;
select rpad(lCust_name,13,'CustName:') from lipstick ;
select rpad(l_color,9,'Color:') from lipstick ;
select rpad(l_location,13,'location:') from lipstick ;