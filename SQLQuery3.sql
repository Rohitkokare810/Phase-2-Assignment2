create database ExerciseDb

use ExerciseDb

create table CompanyInfo(CId int primary key,CName nvarchar(50))

insert into CompanyInfo values(1,'Samsung'),(2,'HP'),(3,'Apple'),
(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

select * from CompanyInfo

create table ProductInfo(PId int primary key,PName nvarchar(40),PPrice float(20),PMDate date,CId int foreign key References CompanyInfo(CId))

select * from ProductInfo

insert into ProductInfo values(101,'Laptop',55000.00,'12/12/2023',1)
insert into ProductInfo values(102,'Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values(103,'Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values(104,'Laptop',135000.90,'12/02/2003',3)
insert into ProductInfo values(105,'Mobile',65000.90,'02/12/2013',3)
insert into ProductInfo values(106,'Laptop',35000.00,'12/12/2023',5)
insert into ProductInfo values(107,'Mobile',35000.90,'12/12/2014',5)
insert into ProductInfo values(108,'Earpod',1000.90,'12/12/2022',3)
insert into ProductInfo values(109,'Laptop',85000.70,'12/12/2012',6)
insert into ProductInfo values(110,'Mobile',55000.90,'12/02/2020',1)

select c.CName, p.PId, p.PName, p.PPrice, p.PMDate, p.CId from CompanyInfo c, ProductInfo p where p.CId=c.CId

select p.PName, c.CName from ProductInfo p, CompanyInfo c where p.CId=c.CId

select * from CompanyInfo cross join ProductInfo 