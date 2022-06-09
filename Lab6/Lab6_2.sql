Create Database Lab6_2

Create Table Product(
ProductID int  primary key,
Product_Name varchar (50) not null,
SupplierID int not null ,
CatagoryID int not null ,
Unit varchar(100)not null ,
Price float not null  check (Price>=10),
)


Insert into Product (ProductID, Product_Name, SupplierID, CatagoryID, Unit, Price )
values	(1, 'Chais', 1, 1,'10boxes x 200 bags',18),
		(2, 'Chag', 1, 1,'24-12 oz bottles',19),
		(3, 'Aniseed Syrup', 1, 2,'12-550 ml bottle',10),
		(4, 'Chef Anton`s Cajun Seasoning', 2, 2,'48-6 oz jars',22),
		(5, 'Chef Antons Gombo Mix', 3, 2,'36 boxes',21.35),
		(6, 'Grandama`s Boysenberry Spread', 1, 1,'12-8 oz jars',25)
		
		



select * from Product


