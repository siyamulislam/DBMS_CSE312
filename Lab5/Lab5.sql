Create Database Lab5

Create Table Customer (

CustomerID int identity (1,1) primary key,
Name varchar (50) not null,
Age int not null check (Age>=18),
Address varchar(50) null Default 'Dhaka',
Salary decimal (8,2) null
)

Insert Into Customer (Name,Age,Address,Salary)
Values	('Rahim',32,'Gulshan',2000.00),
		('Karim',25,'Dhanmondi',1500.00),
		('Hashim',23,'Motijhil',2000.00),
		('Khan',27,'Tajgaon',6500.00),
		('Rahim',27,'Wari',8500.00),
		('Mehedi',22,'Mohammadpur',4500.00),
		('Kashim',24,'Kakrial',10000.00),
		('Kazi',25,'',2000.00)

Select * from Customer
--To find out the customer whose 1st salary number is 200
Select * from Customer where Salary like '200%'

--To find out the customer whose 1st salary number is not 200
Select * from Customer where Salary not like '200%'

---Address starting with D
Select * from Customer where Address like 'D%'

--Srarting with 5 latter right site
Select * from Customer where Name like '_____%'

--Srarting with First Letter is K & Last is m
Select * from Customer where Name like 'K%m'

--Select from Customer where 'eh' remain in Name 
Select * from Customer where Name like '_eh%'

--Select Multiple Item 
Select * from Customer where Age in (25,27)

--Select Multiple Item 
Select * from Customer where Salary in (2000,4500)

--Select Multiple Ite Between 
Select * from Customer where Salary between 2000 and 5000

--Select first 3 Row
Select top 3* from Customer

--Select Total sum & Avg age
Select Sum(Salary) , Avg(Salary)  from Customer

--Select Total sum & Avg age with title
Select Sum(Salary) as 'Total Salary ' , Avg(Salary) as 'Average Salary'  from Customer

Select MIN (Salary) from Customer where age >=25

Select Age, max (Salary) from Customer group by Age


Select Age, Address,  max (Salary) from Customer group by Age,Address


Select Age, max (Salary) from Customer group by Age Having Age >=25


		--------------The End--------------------