USE master
GO
IF EXISTS (SELECT name FROM sys.databases WHERE  name =N'sql_shopping')
DROP DATABASE [sql_shopping]
GO
CREATE DATABASE [sql_shopping]
GO

USE [sql_shopping]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Roles]
(
  roleID INT NOT NULL,
  title VARCHAR(20) NOT NULL,
  PRIMARY KEY (roleID)
);

CREATE TABLE [Users]
(
  UID INT NOT NULL IDENTITY(1,1),
  firstname VARCHAR(20) NOT NULL,
  lastname VARCHAR(20) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone CHAR(10) NOT NULL,
  birthdate DATE NOT NULL,
  roleID INT NOT NULL DEFAULT 2,
  PRIMARY KEY (UID),
  FOREIGN KEY (roleID) REFERENCES Roles(roleID)
);


CREATE TABLE [PaymentMethod]
(
  paymentID INT NOT NULL IDENTITY(1,1),
  paymentname VARCHAR(20) NOT NULL,
  PRIMARY KEY (paymentID)
);



CREATE TABLE [Category]
(
  categoryID INT NOT NULL IDENTITY(1,1),
  title VARCHAR(50) NOT NULL,
  PRIMARY KEY (categoryID)
);


CREATE TABLE [Product]
(
  productID INT NOT NULL IDENTITY(1,1),
  productname VARCHAR(50) NOT NULL,
  quantity INT NOT NULL,
  price INT NOT NULL,
  publishDate DATE NOT NULL,
  type INT NOT NULL,
  PRIMARY KEY (productID),
  FOREIGN KEY (type) REFERENCES Category(categoryID)
);


CREATE TABLE [Invoice]
(
  orderID INT NOT NULL IDENTITY(1,1),
  invoice_total INT NULL,
  shippingDate DATE NOT NULL,
  UID INT NOT NULL,
  paymentID INT NULL,
  PRIMARY KEY (orderID),
  FOREIGN KEY (UID) REFERENCES Users(UID),
  FOREIGN KEY (paymentID) REFERENCES PaymentMethod(paymentID)
);

CREATE TABLE [Payment]
(
  payment_id INT NOT NULL,
  amount INT NOT NULL,
  date INT NOT NULL,
  productID INT NOT NULL,
  orderID INT NOT NULL,
  PRIMARY KEY (payment_id),
  FOREIGN KEY (productID) REFERENCES Product(productID),
  FOREIGN KEY (orderID) REFERENCES Invoice(orderID)
);
GO

CREATE TRIGGER invoice_trigger_total
ON Payment
AFTER INSERT 
AS BEGIN
	UPDATE Invoice
	SET invoice_total =(
	select total
	FROM(
		select Invoice.orderID,SUM(amount*price) AS total
		from Payment,Product,Invoice 
		where Payment.productID=Product.productID AND Invoice.orderID=Payment.orderID AND Invoice.orderID =(SELECT TOP 1 orderID FROM Invoice ORDER BY orderID DESC)
		GROUP BY Invoice.orderID
		) t	
	)
	WHERE Invoice.orderID =(SELECT TOP 1 orderID FROM Invoice ORDER BY orderID DESC)
END
GO
CREATE TRIGGER product_trigger
ON Payment
AFTER INSERT
AS BEGIN
	UPDATE Product
	SET quantity = quantity -(
		SELECT amount
		FROM Payment p
		WHERE payment_id = (SELECT TOP 1 payment_id FROM Payment ORDER BY payment_id DESC)
	)
	WHERE productID=(SELECT TOP 1 Payment.productID FROM Payment ORDER BY payment_id DESC)
END

INSERT INTO Payment (amount,date,productID,orderID) VALUES(5,'10/12/2018',1,14)
INSERT INTO Roles VALUES(1,'admin');
INSERT INTO Roles VALUES(2,'client');

INSERT INTO [Users] VALUES('Sheryl','Mitchell','admin1','admin123','admin@abc.com','0123456789','11/05/2001',1)
INSERT INTO [Users] VALUES('Sueanne','Hall','admin2','admin123','admin@abc.com','8341152331','11/05/1987',1)
INSERT INTO [Users] VALUES('Luanne','Marshall','admin3','admin123','admin@abc.com','6558847873','06/26/1993',1)
INSERT INTO [Users] VALUES('Keira','Wilson','admin4','admin123','admin@abc.com','4776543415','12/12/1995',1)
INSERT INTO [Users] VALUES('Audrea','Davis','admin5','admin123','admin@abc.com','2994238957','02/11/1990',1)

INSERT INTO [PaymentMethod] VALUES('Credit Card')
INSERT INTO [PaymentMethod] VALUES('Cash')
INSERT INTO [PaymentMethod] VALUES('PayPal')
INSERT INTO [PaymentMethod] VALUES('Wire Transfer')

INSERT INTO [Category] VALUES('Smart Phones')
INSERT INTO [Category] VALUES('Books')
INSERT INTO [Category] VALUES('Headphones')
INSERT INTO [Category] VALUES('Laptops')
INSERT INTO [Category] VALUES('Fashion')

INSERT INTO [Product] VALUES('Samsung Galaxy A50s',38,200,'11/09/2019',1)
INSERT INTO [Product] VALUES('Samsung Galaxy S20',50,600,'10/20/2020',1)
INSERT INTO [Product] VALUES('Samsung Galaxy A21s',65,200,'1/1/2021',1)
INSERT INTO [Product] VALUES('Java, How To Program 9th Edition',100,40,'10/5/2019',2)
INSERT INTO [Product] VALUES('Numerical Methods for Engineers',100,45,'03/15/2012',2)
INSERT INTO [Product] VALUES('Digital Logic Design-Principles&Practices',50,50,'02/25/2012',2)
INSERT INTO [Product] VALUES('Samsung Galaxy Buds',100,46,'05/05/2021',3)
INSERT INTO [Product] VALUES('JBL Quantum 50',80,30,'05/01/2021',3)
INSERT INTO [Product] VALUES('Huawei Freebuds 4i',80,75,'04/25/2021',3)
INSERT INTO [Product] VALUES('Acer Aspire 3', 15,500,'12/12/2020',4)
INSERT INTO [Product] VALUES('Acer Aspire 5',20,800,'04/11/2021',4)
INSERT INTO [Product] VALUES('Acer Nitro 5',10,1000,'03/24/2021',4)
INSERT INTO [Product] VALUES('Crew T-Shirt',500,16,'05/1/2021',5)
INSERT INTO [Product] VALUES('Ankle Socks',300,15,'05/1/2021',5)
INSERT INTO [Product] VALUES('Flee Hoodie',150,35,'03/03/2021',5)




