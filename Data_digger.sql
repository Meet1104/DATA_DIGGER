--TABLE 1:- CUSTOMERS--

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(30) NOT NULL,
    Address VARCHAR(20) NOT NULL
);
INSERT INTO Customers (NAME, EMAIL, ADDRESS)
VALUES
('Meet','meetgolakiya1494@gmail.com','Surat'),
('Jay','jayjaviya@gmail.com','Junagadh'),
('Vatsal','vatsalborda@gmail.com','Amreli'),
('Raj','rajokay@gmail.com','DD'),
('Alice', 'alicepatel@gmail.com', 'UK');
SELECT * FROM Customers;
UPDATE Customers SET Address = 'MUMBAI' WHERE CustomerID = '1';
SELECT * FROM Customers;
DELETE FROM Customers WHERE CustomerID = 4;
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Name = 'Alice';


--TABLE 2:- ORDERS--

CREATE TABLE Orders (
    CustomerID INT NOT NULL,
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate INT NOT NULL,
    TotalAmount INT NOT NULL
);
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
(1,10,800),
(2,40,1000),
(3,5,500),
(1,1,750),
(2,60,4500);
SELECT * FROM Orders WHERE CustomerID = 1;
UPDATE Orders SET TotalAmount = 1800 WHERE OrderID = 1;
SELECT * FROM Orders;
DELETE FROM Orders WHERE OrderID = 3;
SELECT * FROM Orders;
SELECT * FROM Orders WHERE OrderDate > 30;
SELECT 
  MAX(TotalAmount) AS MaxAmount,
  MIN(TotalAmount) AS MinAmount,
  AVG(TotalAmount) AS AvgAmount
FROM Orders;

--TABLE 3:- PRODUCT--

CREATE TABLE Product(
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);
INSERT INTO Product (ProductName, Price, Stock)
VALUES
('Keyboard', 500, 10),
('Mouse', 300, 0),
('Monitor', 7000, 5),
('Laptop', 50000, 2),
('USB Cable', 150, 20);
SELECT * FROM Product;
SELECT * FROM Products ORDER BY Price DESC;
UPDATE Product SET Price = 40000 WHERE ProductID = 4;
SELECT * FROM Product;
DELETE FROM Product WHERE Stock = 0;
SELECT * FROM Product;
SELECT * FROM Product WHERE Price BETWEEN 500 AND 2000;
SELECT 
  MAX(TotalAmount) AS MaxAmount,
  MIN(TotalAmount) AS MinAmount,
FROM Product;



