/*
Group 8


Database: OnlineShoppingMall
*/


create database OnlineShoppingMall
USE OnlineShoppingMall;
GO


CREATE TABLE User_Account(
User_id INT NOT NULL PRIMARY KEY,
user_name VARCHAR(45) NOT NULL,
password VARCHAR(45) NOT NULL,
time_stamp DATETIME,
trans_number INT);


CREATE TABLE User_Session(
Session_id INT NOT NULL PRIMARY KEY,
IP_address VARCHAR(225) NOT NULL,
clicks INT,
time_stamp DATETIME,
User_id INT NOT NULL 
	REFERENCES dbo.User_Account(User_id)
);


CREATE TABLE Inventory_Item(
item_id INT IDENTITY NOT NULL PRIMARY KEY,
price MONEY NOT NULL,
item_name VARCHAR(45) NOT NULL,
qty INT,
catalog_id INT,
vendor_id INT 
);


CREATE TABLE Shopping_Cart(
cart_id INT NOT NULL PRIMARY KEY,
active BIT,
total_price MONEY,
User_id INT NOT NULL 
	REFERENCES User_Account(User_id)
);


CREATE TABLE Cart_Detail(
cart_detial_id INT NOT NULL PRIMARY KEY,
item_id INT NOT NULL
	REFERENCES Inventory_Item(item_id),
qty INT,
time_stamp DATETIME,
card_id INT NOT NULL
	REFERENCES Shopping_Cart(cart_id));

CREATE TABLE Vendor(
vendor_id INT NOT NULL PRIMARY KEY,
VendorName VARCHAR(45) NOT NULL,
VendorAddress VARCHAR(45) NOT NULL);


CREATE TABLE InventoryCatalog(
catalog_id INT NOT NULL PRIMARY KEY,
CatalogName VARCHAR(45) NOT NULL);

ALTER TABLE Inventory_Item
ADD CONSTRAINT PK1_Catalog FOREIGN KEY (catalog_id)
REFERENCES InventoryCatalog(catalog_id);

ALTER TABLE Inventory_Item
ADD CONSTRAINT PK2_Vendor FOREIGN KEY (vendor_id)
REFERENCES Vendor(vendor_id);



DROP TABLE OrderHeader
CREATE TABLE OrderHeader
(
	OrderID INT IDENTITY,
	OrderDate DATETIME,
	TotalAmount decimal(10,2) NOT NULL,
	Status VARCHAR(255) NOT NULL,
	UserID INT NOT NULL,
	Discount decimal(10,2),
	Tax decimal(10,2),
	PRIMARY KEY (OrderID),
	FOREIGN KEY (UserID) REFERENCES User_Account(User_id)
)

ALTER TABLE OrderHeader ALTER COLUMN Discount decimal NOT NULL
ALTER TABLE OrderHeader ALTER COLUMN Tax decimal NOT NULL


CREATE FUNCTION FU_TotalDue(@OrderID INT)
RETURNS DECIMAL
AS
BEGIN
	DECLARE @TotalDue DECIMAL;
	SELECT @TotalDue = (TotalAmount + Tax - Discount)
	FROM OrderHeader
	WHERE OrderID = @OrderID
	RETURN @TotalDue
END

ALTER TABLE OrderHeader
DROP COLUMN TotalDue

ALTER TABLE OrderHeader
ADD TotalDue AS (dbo.FU_TotalDue(OrderID));


DROP TABLE CreditCard
CREATE TABLE CreditCard
(
	CardID BIGINT,
	HolderName VARCHAR(255) NOT NULL,
	ExpireDate DATE,
	UserID INT NOT NULL,
	PRIMARY KEY (CardID),
	FOREIGN KEY (UserID) REFERENCES User_Account(User_id)
)

DROP TABLE Payment
CREATE TABLE Payment
(
	PaymentID INT IDENTITY,
	TotalAmount decimal(10,2) NOT NULL,
	Status VARCHAR(255) NOT NULL,
	PayTime TIMESTAMP,
	CardID BIGINT,
	OrderID INT,
	PRIMARY KEY (PaymentID),
	FOREIGN KEY (OrderID) REFERENCES OrderHeader(OrderID),
	FOREIGN KEY (CardID) REFERENCES CreditCard(CardID)
)

ALTER TABLE Payment ALTER COLUMN OrderID INT NOT NULL

DROP FUNCTION FU_CheckTotalAmount
CREATE FUNCTION FU_CheckTotalAmount (@OrderID INT)
RETURNS BIT
AS
BEGIN
	DECLARE @flag BIT = 1;
	IF (
	SELECT ISNULL(SUM(TotalAmount),0) FROM Payment WHERE @OrderID = OrderID
	) <= (SELECT TotalDue FROM OrderHeader WHERE @OrderID = OrderID)
	BEGIN
		SELECT @flag = 0		
	END
	RETURN @flag
END

ALTER TABLE Payment DROP CONSTRAINT MaxTotalAmount
ALTER TABLE Payment ADD CONSTRAINT MaxTotalAmount CHECK (dbo.FU_CheckTotalAmount(OrderID) = 0);

CREATE TABLE OrderItem
(
	OrderItemID INT IDENTITY,
	ItemID INT NOT NULL,
	qty INT NOT NULL,
	OrderID INT NOT NULL,
	PRIMARY KEY (OrderItemID),
	FOREIGN KEY (OrderID) REFERENCES OrderHeader(OrderID),
	FOREIGN KEY (ItemID) REFERENCES Inventory_Item(item_id)
)

CREATE TABLE OrderItemHistory
(
	OrderHistoryID INT IDENTITY,
	OrderItemID INT NOT NULL,
	qty INT NOT NULL,
	Status VARCHAR(255) NOT NULL,
	Note VARCHAR(255),
	StatusTime TIMESTAMP,
	PRIMARY KEY (OrderHistoryID),
	FOREIGN KEY (OrderItemID) REFERENCES OrderItem(OrderItemID)
)

CREATE TRIGGER TR_OrderHis
ON OrderItem
AFTER INSERT
AS
BEGIN 
	DECLARE @OrderItemID INT
	DECLARE @qty INT
	SELECT @OrderItemID = OrderItemID FROM Inserted
	SELECT @qty =  qty FROM Inserted
	INSERT INTO OrderItemHistory
	(OrderItemID,qty,Status,Note)
	VALUES
	(@OrderItemID,@qty,'purchased','')
END


CREATE TABLE Customer_Service
(
Cus_Ser_ID int  PRIMARY KEY,
User_ID int FOREIGN KEY REFERENCES User_Account(User_ID) NOT NULL,
Item_ID int FOREIGN KEY REFERENCES Inventory_Item(Item_ID) NOT NULL,
Staff_ID int FOREIGN KEY REFERENCES Staff(Staff_ID) NOT NULL,
Session_ID int FOREIGN KEY REFERENCES User_Session(Session_ID) NOT NULL,
Notes varchar(225)
)


CREATE TABLE Shipping
(
Shipping_ID int  PRIMARY KEY,
OrderID int FOREIGN KEY REFERENCES OrderHeader(OrderID) NOT NULL,
Address_ID int FOREIGN KEY REFERENCES Address(Address_ID) NOT NULL,
Shipping_Method varchar NOT NULL,
Shipping_Charge decimal(5,2) NOT NULL,
Status varchar NOT NULL,
Shipping_Date date 
)


CREATE TABLE Invoice 
(
Invoice_ID int  PRIMARY KEY,
OrderID int FOREIGN KEY REFERENCES OrderHeader(OrderID) NOT NULL,
User_ID int FOREIGN KEY REFERENCES User_Account(User_ID) NOT NULL,
Address_ID int FOREIGN KEY REFERENCES Address(Address_ID) NOT NULL,
Creation_Date date
)


CREATE TABLE Invoice_History 
(
Invoice_History_ID int PRIMARY KEY,
Invoice_ID int FOREIGN KEY REFERENCES Invoice(Invoice_ID) NOT NULL,
User_ID int FOREIGN KEY REFERENCES User_Account(User_ID) NOT NULL,
Notes varchar(225),
Invoice_History_Time timestamp NOT NULL
)


CREATE TABLE Address 
(
Address_ID int PRIMARY KEY,
Name varchar(45) NOT NULL,
Add1 varchar(45) NOT NULL,
Add2 varchar(45),
City varchar(45) NOT NULL,
State varchar(45) NOT NULL,
Zip int NOT NULL
);


CREATE TABLE Staff
(
Staff_ID int  PRIMARY KEY,
Staff_name varchar(45) not NULL,
Department varchar(45) not NULL,
Staff_Position varchar(45) not NULL
);


CREATE TABLE Customer_Feedback
(
Cus_Fb_ID int PRIMARY KEY,
Comment VARCHAR(255),
User_ID int FOREIGN KEY REFERENCES User_Account(User_ID) NOT NULL,
Item_ID int FOREIGN KEY REFERENCES Inventory_Item(Item_ID) NOT NULL,
Response VARCHAR(45),
Session_ID int FOREIGN KEY REFERENCES User_Session(Session_ID) NOT NULL,
Staff_ID int FOREIGN KEY REFERENCES Staff(Staff_ID) NOT NULL
);


CREATE TABLE Advertising 
(
Ad_ID int PRIMARY KEY,
Title VARCHAR(45) NOT NULL,
Item_ID int FOREIGN KEY REFERENCES Inventory_Item(Item_ID) NOT NULL,
Type VARCHAR(45),
Staff_ID int FOREIGN KEY REFERENCES Staff(Staff_ID) NOT NULL
);


-- Create views
DROP VIEW CustomerPurchase_vw
CREATE VIEW CustomerPurchase_vw
AS
SELECT ua.User_id UserID, user_name,ISNULL(YEAR(OrderDate),0) PurchaseYear,ISNULL(SUM(TotalDue),0) TotalDue
FROM OrderHeader o
FULL JOIN User_Account ua
ON ua.User_id = o.UserID
GROUP BY CUBE(ua.User_id),user_name,YEAR(OrderDate)

DROP VIEW ItemPurchase_vw
CREATE VIEW ItemPurchase_vw
AS
SELECT ii.item_id ItemID, item_name,price,ISNULL(YEAR(OrderDate),0) PurchaseYear,ISNULL(SUM(TotalDue),0) TotalDue
FROM OrderItem oi
FULL JOIN Inventory_Item ii
ON ii.item_id = oi.ItemID
FULL JOIN OrderHeader oh
ON oi.OrderID = oh.OrderID
GROUP BY CUBE(ii.item_id),item_name,price,YEAR(OrderDate)


--Encryption column
CREATE TABLE TempUserAccount
(
UseID int PRIMARY KEY,
UserName nvarchar(50),
UserPassword nvarchar(50),
EncUserName varbinary(200),
EncPassword varbinary(200)
);

-- Create DMK
CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'Test_Password';

-- Create certificate to protect symmetric key
CREATE CERTIFICATE Certificate01
WITH SUBJECT = 'OnlineShopping Test Certificate',
EXPIRY_DATE = '2026-10-31';

-- Create symmetric key to encrypt data
CREATE SYMMETRIC KEY SymmetricKey01
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE Certificate01;

-- Open symmetric key
OPEN SYMMETRIC KEY SymmetricKey01
DECRYPTION BY CERTIFICATE Certificate01;

/* Populate temp table with 100 encrypted names from the Person.Person table */

INSERT
INTO TempUserAccount
(
UseID,
UserName,
UserPassword,
EncUserName,
EncPassword
)
SELECT User_id, user_name, password, 
EncryptByKey(Key_GUID(N'SymmetricKey01'), user_name),
EncryptByKey(Key_GUID(N'SymmetricKey01'), password)
FROM OnlineShoppingMall.dbo.User_Account
ORDER BY User_id;

-- Update the temp table with decrypted names
UPDATE TempUserAccount
SET UserName = DecryptByKey(EncUserName),
UserPassword = DecryptByKey(EncPassword);

-- Show the results
SELECT UseID,
UserName,
UserPassword,
EncUserName,
EncPassword
FROM TempUserAccount;

--Drop table 
DROP TABLE TempUserAccount;

-- Close the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey01;

-- Drop the symmetric key
DROP SYMMETRIC KEY SymmetricKey01;

-- Drop the certificate
DROP CERTIFICATE Certificate01;

--Drop the DMK
DROP MASTER KEY;





--Trigger on Cart_Detail for updating inventory amount 
CREATE TRIGGER UpdateInventoryAmount
ON Cart_Detail
FOR INSERT, UPDATE, DELETE
AS
BEGIN
	UPDATE Inventory_Item
	SET qty -= (ISNULL(i.qty,0))
	FROM Inventory_Item v, inserted i
	WHERE v.item_id = i.item_id;
	UPDATE Inventory_Item
	SET qty += (ISNULL(d.qty,0))
	FROM Inventory_Item v, deleted d
	WHERE v.item_id = d.item_id;
END;

DROP TRIGGER UpdateInventoryAmount

select * from  Shopping_Cart;
select * from Inventory_Item;
select * from Cart_Detail;


