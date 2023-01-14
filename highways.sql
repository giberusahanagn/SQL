CREATE TABLE highway(name varchar(40),village_name varchar(50),city_name varchar(50),taluk varchar(50),district varchar(50),state varchar(50),capital varchar(50),county varchar(50),country_capital varchar(50),highway_no int,highway_cost bigint,highway_length bigint,highway_type varchar(50),highway_profit bigint,highway_gerProfit boolean,highway_loss boolean,highway_tax int,comapany_name varchar(50),company_location varchar(50),company_type varchar(50),emp_name varchar(50),
emp_location varchar(50),emp_graduate varchar(50),emp_district varchar(50),emp_state  varchar(50),emp_country  varchar(50),
emp_capital  varchar(50),emp_married boolean,emp_wifename varchar(50),emp_noChildrens int,
emp_sirName varchar(50),emp_pincode bigint,emp_salary bigint);

ALTER TABLE highway MODIFY COLUMN highway_profit varchar(60);
ALTER TABLE highway MODIFY COLUMN name varchar(60);
ALTER TABLE highway MODIFY COLUMN city_name varchar(60);
ALTER TABLE highway MODIFY COLUMN taluk varchar(60);
ALTER TABLE highway MODIFY COLUMN district varchar(60);
DESC highway;
SELECT * FROM highway;
ALTER TABLE highway RENAME COLUMN emp_salary TO salary;
ALTER TABLE highway RENAME COLUMN name TO highway_name;
ALTER TABLE highway RENAME COLUMN taluk TO taluk_name;
ALTER TABLE highway RENAME COLUMN district TO district_name;
ALTER TABLE highway RENAME COLUMN state TO state_name;
ALTER TABLE highway DROP emp_name;
INSERT INTO highway VALUES('national highway','donnehalli','jagalur','jagalur','davanagere','karnatak','bangalore','India','dehli',14,243444,564678,'national highway','yes',true,false,100,'ACC','bangalore','civil','bharath','chikmangalur','engg','chikmangalur','karnataka','India','dehli',false,'not married',0,'geberu',567876,21634);
INSERT INTO highway VALUES('state highway','chikkanavangala','ajjampura','tarikere','chikkamangalur','karnatak','bangalore','India','dehli',11,456787,2357676,'state highway','no',false,false,10,'TXCS','chenani','software','nagaveni','tripura','engg','tamilnadu','tamilnadu','India','dehli',true,' married',0,'sajjan',543876,21779634);
INSERT INTO highway VALUES('national highway','bennahalii','jagalur','bijapur','bijapur','karnatak','bangalore','India','dehli',4,3241,54164678,'state highway','yes',true,true,1040,'ACC','whitefield','software','komala','madhura','b.com','bukkambudi','andra','India','dehli',true,' married',1,'ganiga',584786,34450);
INSERT INTO highway VALUES('state highway','kaledevapura','nayakanahatti','challajere','chitradurga','karnatak','bangalore','India','dehli',11,456787,2357676,'state highway','no',false,false,10,'DXC','software','software','manjula','bangalore','engg','tumkur','karnataka','India','dehli',true,' married',2,'sajjan',543876,21779634);
INSERT INTO highway VALUES('district highway','nagasandra','bangalore','bangalore','bangalore','karnatak','bangalore','India','dehli',14,243444,564678,'national highway','yes',true,false,100,'pwc','bangalore','civil','sahana','bangalore','engg','bangalore','karnataka','India','dehli',false,'not married',0,'geberu',560018,21634);
INSERT INTO highway VALUES('state highway','nanada','maharastea','maharastra','maharastra','maharastra','mumbai','India','dehli',11,456787,2357676,'state highway','no',false,false,10,'Infosys','andra','software','vasundara','andra','engg','tamilnadu','andra','India','dehli',true,' married',3,'sajjan',543876,21779634);
INSERT INTO highway VALUES('simple road','Jagalur','jagalur','bijapur','bijapur','karnatak','bangalore','India','dehli',4,3241,54164678,'state highway','yes',true,true,1040,'ACC','whitefield','software','komala','madhura','b.com','bukkambudi','andra','India','dehli',true,' married',1,'ganiga',584786,34450);
INSERT INTO highway VALUES('simple highway','Kkaggi','channagiri','tarikere','davanagere','karnatak','bangalore','India','dehli',9,7545,555445,' highway','yes',false,false,10,'hcl','chennai','software','kavya','kaggi','engg','tumkur','karnataka','India','dehli',true,' not married',0,'manoj',646364,5536345);
-- SELECT count(*) as Number from information_scheme.columns WHERE table_name ='highway';

SELECT count(*) from highway;


INSERT INTO highway VALUES('highway','Delhi','Delhi','Delhi','Delhi','Delhi','Delhi','India','dehli',9,9845,345498,' highway','yes',true,false,02,'wipro','hardware','software','swati','ilkal','diploma','bijapur','karnataka','India','dehli',true,' not married',0,'ilkal',654874,87348);
INSERT INTO highway VALUES('national highway','Indapatta','maharastra','maharastra','Indraprastha','maharatra','mumbai','India','dehli',14,243444,564678,'national highway','yes',true,false,100,'moback','bangalore','civil','jothi','Imangala','civil engg','chitradurga','karnataka','India','dehli',false,'not married',0,'geberu',2357,21634);
INSERT INTO highway VALUES('national highway','Rewari',' Rewari ',' Rewari ','Punjab','Punjab','Chandigarh','India','dehli',14,346458,348573,'highway','yes',false,true,10,'common wealth','bangalore','hardware','kavya','bangalore','engg','chikmangalur','Chandigarh','India','dehli',false,' married',1,'malotra',65867,45371);
INSERT INTO highway VALUES('state highway','bilchodu','channagere','harihara','davanagere','karnataka','bangalore','India','dehli',14,235345,56353,' highway','yes',true,false,100,'tcs','bangalore','civil','neelu','chikmangalur','engg','Moscow','Moscow','russia','dehli',false,'not married',0,'iyonger',873542,47363);
INSERT INTO highway VALUES('national highway','nayakanahatti','challakere','durga','chitradurga','karnataka','bangalore','India','dehli',14,456732,564678,'national highway','yes',false,false,100,'ibm','bangalore','engg','nayana','chikmangalur','ca','wt','wt','America','dehli',true,' married',1,'nayaka',921746,385762);
INSERT INTO highway VALUES('simple highway','anahji','hiriyur','Imangla','chitradurga','karnataka','bangalore','India','dehli',14,67238,45676,'national highway','yes',true,true,100,'starrag','bangalore','civil','sharana','chikmangalur','bca','Kathmandu','Kathmandu','Nepal','dehli',true,' married',2,'reddy',37436,4906734);
INSERT INTO highway VALUES('leh-manali','not at village','goa','jagannadapuram','Kumbhajachri','landasangavi','telangana','India','dehli',9,345387,32895,' highway','yes',true,false,02,'wipro','hardware','software','swati','ilkal','diploma','bijapur','karnataka','India','dehli',true,' not married',0,'ilkal',45687,098765);
INSERT INTO highway VALUES('lysevegan','Indapatta','maharastra','maharastra','Indraprastha','maharatra','mumbai','India','dehli',14,09865,56877,'national highway','yes',true,false,100,'moback','bangalore','civil','jothi','Imangala','civil engg','chitradurga','karnataka','India','dehli',false,'not married',0,'geberu',346347,34658);
INSERT INTO highway VALUES('pacific coast','andra',' mentada ',' manapuram ','vijaz','andra','hyderbad','India','dehli',14,57645,2395634,'highway','yes',false,true,10,'common wealth','bangalore','hardware','kavya','bangalore','engg','chikmangalur','Chandigarh','france','paris',false,' married',1,'sidhanth',5667287,56787);
INSERT INTO highway VALUES(' amalfi','srinagar','nagpur','j&k','kasmir','j&K','srinagar','India','dehli',14,46869,94563,' highway','yes',true,false,100,'tcs','bangalore','civil','neelu','chikmangalur','engg','Moscow','Moscow','russia','dehli',false,'not married',0,'kandhakur',748745,8778);
INSERT INTO highway VALUES('the mother road','chicago','santa manico','california','nawabs','america','chicago','USA','california',4,356345,564678,'national highway','yes',true,false,100,'ibm','bangalore','engg','nayana','chikmangalur','bba','kyoto','bay','japan','tokyo',true,' married',1,'bharmins',4453,8778896);
INSERT INTO highway VALUES('nh1 highway','ruta','argentina','Imangla','chitradurga','karnataka','bangalore','India','dehli',14,835439,36536543,'national highway','yes',true,true,100,'starrag','bangalore','civil','sharana','chikmangalur','bca','Kathmandu','Kathmandu','china','beijing',true,' married',2,'reddy',36763,6367458);
ALTER TABLE highway MODIFY COLUMN emp_salary varchar(40); 
ALTER TABLE highway MODIFY COLUMN emp_pincode varchar(10); 
ALTER TABLE highway MODIFY COLUMN highway_tax varchar(45); 
ALTER TABLE highway MODIFY COLUMN highway_no varchar(30); 
ALTER TABLE highway MODIFY COLUMN emp_noChildrens varchar(30); 

ALTER TABLE highway RENAME COLUMN highway_no to no;
ALTER TABLE highway RENAME COLUMN highway_cost to cost;
ALTER TABLE highway RENAME COLUMN highway_length to length;
ALTER TABLE highway RENAME COLUMN highway_type to type;
ALTER TABLE highway RENAME COLUMN highway_profit to profit;
