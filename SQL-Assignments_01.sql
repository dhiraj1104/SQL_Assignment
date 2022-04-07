-- 1.Desgin the above database with following table by applying Primary key and Foreign key


-- Customer Table
CREATE TABLE Customer (id int PRIMARY KEY, FirstName nvarchar(40),LastName nvarchar(40),City nvarchar(40), Country nvarchar(40),Phone nvarchar(20));

-- Product Table
create table Product(id int PRIMARY KEY, ProductName nvarchar(50), UnitPrice decimal(12,2), Package nvarchar(30), isDiscontinued bit);

-- Orders Table
CREATE TABLE Order (id int PRIMARY KEY, OrderDate DATETIME, OrderNumber nvarchar(10), CustomerId int, TotalAmount decimal(12,2))

-- OrderItem Table
create table OrderItem(id int PRIMARY KEY, OrderId int, ProductId int, UnitPrice decimal(12,2), Quantity int);

----------------------------------------------

--Adding Primary & Foreign Key
ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orderitem
ADD FOREIGN KEY(ProductId) REFERENCES Product(id);

ALTER TABLE Orders
ADD FOREIGN KEY(CustomerId) REFERENCES Customer(id);

------------------------------------------------

-- 2.Insert Records in all tables 

INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (1,'Rogit', 'Sharma', 'Pune', 'India', '030-0074321')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (2, 'Shyam', 'Sundar', 'Mumbai', 'India', '9822109450')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (3,'Rutuja', 'Kale', 'America', 'USA', '741258930')
INSERT INTO Customer (id, FirstName, LastName, City, Country, Phone) VALUES (4,'Rahul', 'Darekar', 'London', 'UK', '012547896')
-------------------------------------------------------------

INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(10, 'Pen', 3400.00, 'yes', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(11, 'Pencil', 2500.00, 'no', 1);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(12, 'SeaFood', 5000.00, 'yes', 0);
INSERT INTO PRODUCT(id, ProductName, UnitPrice, Package, isDiscontinued) VALUES(13, 'Chai', 50.00, 'no', 1);

------------------------------------------
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(101, 12-03-2022, 'OD71', 1, 200.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(102, 12-03-2022, 'OD72', 2, 500.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(103, 12-03-2022, 'OD73', 3, 785.00);
INSERT into Orders(id, OrderDate, OrderNumber, CustomerId, TotalAmount) VALUES(104, 12-03-2022, 'OD74', 4, 452.00);

----------------------------------------------------

Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (41, 101, 51, 
200.00, 2);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (42, 102, 52, 
800.00, 4);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (43, 103, 53, 
300.00, 8);
Insert into OrderItem(id, OrderId, ProductId, UnitPrice, Quantity) VALUES (44, 104, 54, 
450.00, 10);


-------------------------------------------

-- 4.In Order table OrderDate should not accept null value
ALTER TABLE Customer 
ALTER Column FirstName nvarchar(40) NOT NULL;

--------------------------------------------

-- 5.Display all customer details
ALTER TABLE Orders
ALTER COLUMN OrderDate datetime NOT NULL;

---------------------------------------------

-- 6.write a query to display Country whose name starts with A or I

Select * from Customer WHERE Country LIKE 'i%' or Country LIKE 'a%'

----------------------------------------------
-- 7 .write a query to display whose name of customer whose third character is i

Select * from Customer WHERE FirstName LIKE '__i%'
