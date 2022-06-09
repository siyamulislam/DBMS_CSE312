Create Database Assignment
 
Create Table Student(
SID int IDENTITY(1,1) Primary Key not null,
FName varchar(30) not null,
LName varchar(30) not null,
Age int not null,
Grade float null,
Phone_Number int null,
)


Insert into Student(FName,LName,Age,Grade,Phone_Number)
Values('Ovi', 'Majumdar', 22, 1.25, 0123)

Insert into Student(FName,LName,Age,Grade,Phone_Number)
Values('Akash', 'Pathan', 21, 2.22, 6441), ('Raja', 'Tushar', 24, null ,6548), 
('Ovi', 'Majumdar', 26, 1.21, 01324),
('Rubaiaya', 'HAfiz', 24, 0.88, 9546),
('Sazzad', 'Pinku', 28, 4.00, 3598),
('Sazzad', 'Pinku', 30, 0.25, null)


Insert into Student(FName,LName,Age,Grade,Phone_Number)
Values('Ovi', '', '',1.25, NULL)


select * from Student



select distinct FName from Student							--- 1 no

select SID, FName, Grade from Student where age>25			--- 2 no

select FName, Age from Student order by Age					--- 3 no

select FName, Age from Student order by Age	desc				--- 4 no

delete from Student where FName= 'Ovi'						--- 5 no 

select FName from Student where age >= 23 and  age <=30			--- 6 no 

delete from Student where SID>= 15



