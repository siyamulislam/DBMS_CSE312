Create Database Lab2	

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





Insert Into Student(Id, Name, Email, GenderID)
Values (8865, 'Siyamul', 'Siyamul15-8865@diu.edu.bd', 1)
Insert Into Student(Id, Name, Email, GenderID)
Values (1234, 'MR Bin', 'bin@gmail.com', 1)

Insert Into Student_Gender(Id, Gender)
Values (8865, 1)
Insert Into Student_Gender(Id, Gender)
Values (8800, 2)




Select * from Student
Select * from Student_Gender


Drop Table Student
Drop Table Student_Gender

Truncate Table Student_Gender