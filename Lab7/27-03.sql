-- SUB QUERY
-- for multiple unknown value  


-- JOIN


Create Database Lab7_up


Create Table CUSTOMER (

CustomerId int identity (1,1) primary key,
Name varchar (50) not null,
Age int not null check (Age>=18),
Address varchar(200) null Default 'Dhaka',
Salary decimal (18,2) null
)

Create Table OEDER (
OrderId int identity(1,1) Primary key,
CustomerId int  Not Null
FOREIGN KEY REFERENCES CUSTOMER (CustomerId),
Amount money NULL,
)

Insert Into CUSTOMER (Name,Age,Address,Salary)
Values	('Rahim',32,'Gulshan',2000.00),
		('Karim',25,'Dhanmondi',1500.00),
		('Hashim',23,'Motijheel',2000.00),
		('Khan',27,'Tajgaon',6500.00),
		('Rahim',27,'Wari',8500.00),
		('Mehedi',22,'Mohammadpur',4500.00),
		('Kashim',24,'Kakrial',10000.00),
		('Kazi',25,'Kakrial',1000.00)


Insert into OEDER (CustomerId, Amount)
values (2,1230),
(4,240),
(3,1150),
(2,14300),
(5,30),
(7,260),
(5,1580),
(3,458),
(2,700)

Select * from Customer
Select * from OEDER


--1
Select Salary from CUSTOMER where Address='Kakrial'

Select Salary from CUSTOMER where 
Name in(Select Name from CUSTOMER where Address='Kakrial')
 
 
 --2
Select Salary from CUSTOMER where 
Salary >  (Select Salary from CUSTOMER where Address='Wari')
 
--3
Select Name, Salary   from CUSTOMER where 
Salary <  (Select AVG(Salary) from CUSTOMER)

--3
Select Name from CUSTOMER where CustomerId=
(Select CustomerId from  OEDER where Amount= 1230)
 
 ---JOINT 
 Select * from CUSTOMER, OEDER
 
 
 Select * from CUSTOMER, OEDER
 Where Customer.CustomerId =OEDER.CustomerId
 
 
  Select * from CUSTOMER inner join  OEDER
on Customer.CustomerId =OEDER.CustomerId
 
 
   Select * from CUSTOMER full join  OEDER
on Customer.CustomerId =OEDER.CustomerId

 Select * from CUSTOMER right join  OEDER
on Customer.CustomerId =OEDER.CustomerId

 Select * from CUSTOMER left join  OEDER
on Customer.CustomerId =OEDER.CustomerId