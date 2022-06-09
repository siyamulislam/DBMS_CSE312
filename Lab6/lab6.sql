Create Database Lab6

Create Table Course(

CuourseID int identity (101,1) primary key,
Course_Name varchar (50) not null,
Semester varchar(50)not null ,
)


Create Table Student(

s_ID int identity (2001,1) primary key,
s_Name varchar (50) not null,
CGPA float not null,
Age int not null
)

Create Table Takes(
s_ID int,
CourseID int,
CONSTRAINT PK_Takes PRIMARY KEY (s_ID, CourseID),
FOREIGN KEY (s_ID) REFERENCES Student(s_ID),
FOREIGN KEY (CourseID) REFERENCES Course(CuourseID)
)


Insert into  Student(s_Name, CGPA,Age )
values ('Azizul Islam', 3.70, 22), ('Aziz Islam', 3.40, 25),('ApurboSen', 3.80, 20)

Insert into  Course(Course_Name,Semester)
values ('DBMS', 'Spring-19'), ('Networking', 'Spring-19'),('DBMS Lab', 'Spring-18'), ('Art Of Living', 'Spring-19')




---1
ALTER TABLE Student
ADD Email varchar(10) null;

---2
Select COUNT(s_ID) from Student where CGPA>3.50 and Age>18

---3
Select s_Name, CGPA from Student where CGPA > (select CGPA from Student where s_Name = 'Azizul Islam')

---4
Select  Avg(Age)  from Student where s_Name like 'A%'


Select * from Student
Select * from Course
select * from Takes

