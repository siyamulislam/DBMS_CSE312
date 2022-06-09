Create database LAB_4

Create Table SALESMAN (
SalesmanId int identity(1001,1) Primary key,
FirstName Varchar(50) Not Null,
LastName Varchar(50) Not Null,
Area Varchar(15) Not Null,
YearOfService int Not Null,
Salary Numeric(5,2)

)

Create Table CUSTOMER (
CustomerId int identity(2001,1) Primary key,
CustomerName Varchar(50) Not Null,
Location Varchar(15) Not Null,
PinCode  Numeric(8),
Class Char(1) Default 'A'
)

Create Table OEDER (
OrderId int identity(3001,1) Primary key,
CustomerId int  Not Null  ,
SalesmanId int  Not Null,
Quantity  Numeric(5),
OrderDate Date Not Null,
OrderAmount Numeric(8,2)
)

Alter Table OEDER
ADD CONSTRAINT CustomerId_fk			-- FOREIGN key Creation
FOREIGN key (CustomerId)
REFERENCES CUSTOMER (CustomerId);

Alter Table OEDER
ADD CONSTRAINT SalesmanId_fk			-- FOREIGN key Creation
FOREIGN key (SalesmanId)
REFERENCES SALESMAN (SalesmanId);



Insert into SALESMAN (FirstName,LastName,Area,YearOfService,Salary )

Values('Rahim', 'Khan', 'Uttara', 3, 500.0), ('Azad', 'Ahmed', 'Tejgone',4, 800.0),('Abdul', 'Karim', 'Uttara', 5, 900.0)


Insert into CUSTOMER(CustomerName,Location,PinCode,Class )

Values ('Abdullash', 'Gulshan', 34111899, 'C' ), ('Samiul_Haque', 'Gulshan', 12345678, 'B'), ('Abdus_Salam', 'Wari', 6290087, 'A' )



insert into  OEDER(CustomerId, SalesmanId , Quantity , OrderDate, OrderAmount )
values (2001, 1002, 50000, '2019-02-13', 800000.00)



Select * from SALESMAN
Select * from CUSTOMER 
Select * from OEDER

---1
Select SalesmanId as 'SalesMan Identy', FirstName +''+LastName as 'Salsman,s Name', Area as 'City', Salary as 'Salary Earned' from SALESMAN

----2
Select * from SALESMAN where Area != 'Dhanmondi'

---3
Select *  from CUSTOMER where Class = 'A'

---4
select distinct Area From SALESMAN 

---5
Update CUSTOMER  set CustomerName='Karim_Rahman' where CustomerName = 'Abdus_Salam'

---6
Select *  from CUSTOMER where Location = 'Gulshan'

----7
Select * from SALESMAN where  Salary> 2000

----8
Delete from OEDER where  OrderId= 3004

---9
Select FirstName +''+LastName as 'Salsman,s Name', Area from SALESMAN   order by Salary

---10
Select * from OEDER where CustomerId=2007

---11
Update SALESMAN  set Salary=15000 where YearOfService > 2




















Alter Table Student
ADD CONSTRAINT Gender_fk			-- FOREIGN key Creation
FOREIGN key (GenderID)
REFERENCES Student_Gender(ID);