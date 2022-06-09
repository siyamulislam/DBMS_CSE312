create database test

create table Malaysia (SID int NOT NULL, FName nvarchar(50) NOT NULL, LName nvarchar(50) NOT NULL , Age int NOT NULL, Grade  float  NULL, Phone_Number int NOT NULL)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (1,'Ovi','Majumdar',22,1.25,0123)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (2,'Akash','Pathan',21,2.22,6541)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (3,'Raja','Tushar','',24,6548)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (4,'Nusrat','Jahan',26,1.21,1324)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (5,'Rubaiya','Hafiz',24,0.88,9546)

insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (6,'Sazzad','',28,4.00,3598)

alter Table  Malaysia
alter column LName nvarchar(50)  NULL


insert into Malaysia (SID , FName , LName , Age,Grade, Phone_Number)
values (7,'Nag','Pinku',30,0.25,'')
alter Table  Malaysia
alter column Phone_Number int NULL


select * from Malaysia
Drop table Malaysia