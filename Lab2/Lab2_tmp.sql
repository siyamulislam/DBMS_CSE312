Create Database Lab2_temp



Create Table Student (  
 Id int Not Null,
 Name nvarchar (50) Not Null,
 Email nvarchar (50) Not Null,
 GenderID int Null,

)

Create Table Student_Gender (
 Id int Not Null,
 Gender nvarchar (50) Null,
)
Alter Table Student
ADD CONSTRAINT Student_pk			-- Primary key Creation
Primary key (ID);


Alter Table Student_Gender
ADD CONSTRAINT Student_Gender_pk			-- Primary key Creation
Primary key (ID);

Alter Table Student
ADD CONSTRAINT Gender_fk			-- FOREIGN key Creation
FOREIGN key (GenderID)
REFERENCES Student_Gender(ID);


Alter Table Student
Alter Column Name varchar (50) null

select * from Student 
Select * from Student_Gender 

Insert Into Student(Id, Name, Email, GenderID)
Values (8865, 'Siyamul', 'Siyamul15-8865@diu.edu.bd', 1)

Insert Into Student(Id, Name, Email, GenderID)
Values (74, 'Akash', 'Akash@diu.edu.bd', 1)

Insert Into Student(Id, Name, Email, GenderID)
Values (47, 'Batash', 'Batash@diu.edu.bd', 2)

