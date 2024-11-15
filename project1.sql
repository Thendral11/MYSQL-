create database students;
------
------
------
create table stu_detail
 (stu_Rg int primary key,stu_name varchar(30),
 Gender char(10),Dob date ,bloodgroup nchar(5));
 
 
ALTER
 table stu_detail 
modify column dob date;
-----
-----
-----
create table address
(stu_Rg int, address varchar(150),ph_no int,district char(20),pincode int);


alter table address modify column ph_no varchar(11);
-----
-----
-----
create table personal_details
(stu_Rg int, stu_name varchar(30),
mother_name char(30),father_name char(30),
siblings_name char(20),mother_language char(10));
-----
-----
-----
create table cls
(stu_roll int,stu_name varchar(30),
standard int,section char(3),
department varchar(20));

use students;
-----
create table mark
(stu_roll int not null,Tamil int,Eng int,Mat int,Sci int,SS int,Total int);


------

insert into stu_detail 
values('12341','Tamil','Female','2005-08-31','B+');
insert into stu_detail values
('12342','Sai','male','2004-10-06','O+'),
('12343','Arun','male','2005-01-31','A+'),
('12344','Sai1','male','2004-10-07','O+'),
('12345','Aruna','female','2005-02-10','A+');
insert into stu_detail values
('12346','kiruba','male','2004-05-30','AB+'),
('12347','kavi','female','2004-06-30','AB+'),
('12348','kiruthi','female','2004-05-30','B+'),
('12349','kalai','female','2004-11-30','A+'),
('123410','malli','female','2004-12-30','O+');
------
------
------
insert into address values
('12342','484_rajeev nagar','9566433585','tirupur','641603');
use students;
insert into address values
('12343','5/8_selvavinayagar street','9123654253','tirupur','641603'),
('12344','55 b ram nagar','9857468725','tirupur','641604'),
('12345','15 c vv nagar','9654785235','tirupur','641603'),
('12346','kovil str','7854123698','tirupur','641600'),
('12347','nullv','9856214735','tirupur','641601'),
('12348','samundipuram','9856854735','tirupur','641602'),
('12349','kumarnagar 2ndnstr','9856216635','tirupur','641603'),
('123410','40/2 b rajeev nagar','9856214785','tirpur','641604');
------
------
------
insert into personal_details  values

('12341','Tamil','Rani','Elumalai','Thendral','Tamil'),
('12342','Sai','Vani','velu','','Tamil'),
('12343','Arun','kavitha','Durai','Dharani','tamil'),
('12344','Sai1','VALLI','vengat','mani','tmail'),
('12345','Aruna','kavi','mano','sankar','tamil'),
('12346','kiruba','nivitha','raja','nalan','tamil'),
('12347','kavi','sara','saran','sanjay','tamil'),
('12348','kiruthi','devi','sathish','nivin','tamil'),
('12349','kalai','santhiya','tharun','varun','tamil'),
('123410','malli','jayasri','aathi','siva','tamil');
-----
-----
-----
select*from stu_detail;
select*from personal_details;
select*from address;
-----
-----
-----
insert into cls 
values
('01','Tamil','12','A','Bio maths'),
('02','Sai','12','B','Pure sci'),
('03','Arun','12','B','Bio maths'),
('04','Sai1','12','A','Bio maths'),
('05','Aruna','12','A','Bio maths'),
('06','kiruba','12','B','Bio maths'),
('07','kavi','12','B','Bio maths'),
('08','kiruthi','12','B','Bio maths'),
('09','kalai','12','B','Bio maths'),
('10','malli','12','B','Pure sci');
------
select*from cls;
------
-----
------
insert into mark 
values('12341','98','78','85','90','94','442'),
('12342','38','85','65','99','98','385'),
('12343','98','78','85','90','94','445'),
('12344','55','85','85','75','65','365'),
('12345','48','85','65','99','98','395'),
('12346','98','78','33','90','94','393'),
('12347','55','85','85','75','65','365'),
('12348','88','55','65','99','98','405'),
('12349','28','78','35','90','94','325'),
('123410','55','85','85','25','65','238');
-----
select avg(Total)  from mark;

select max(Total) AS FIRST_MARK from mark;

select min(Total) from mark;

select
 total,tamil,eng,mat,sci,ss from mark
 order by total desc;
 
select stu_roll, Tamil,Eng,Mat,Sci,SS from mark
where Tamil<35;

select stu_roll, Tamil,Eng,Mat,Sci,SS from mark
where Eng<35;

select stu_roll, Tamil,Eng,Mat,Sci,SS from mark
where Mat<35;

select stu_roll, Tamil,Eng,Mat,Sci,SS from mark
where Sci<35;

-----
-----
SELECT
 CONCAT(district,"/",pincode) as DIS_PIN FROM address;

SELECT 
substring (stu_name ,1,2) as Shortname FROM stu_detail;

SELECT
 REPLACE (department,"gr",department) From  cls;

SELECT
 LENGTH (stu_name) from stu_detail;
 
 SELECT department,section
from cls 
 order by(department) desc;
 
SELECT
 count(*),department
 from cls 
 group by department 
 order by department;
 
SELECT
count(*) from cls 
group by department 
order by department;
use students;

SELECT
 Tamil,Eng,Mat,Sci,SS,Total from mark
 order by Total desc;