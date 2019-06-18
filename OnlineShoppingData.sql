/*
Group 8


Database: OnlineShoppingMall
*/


INSERT User_Account
VALUES 
(1, 'James', 'JS12345', '2017-11-17', 5),
(2, 'Steve', 'SUL101', '2017-11-25', 1),
(3, 'Amy', 'MM900', '2017-12-10', 1),
(4, 'Mark', 'VST246', '2017-12-18', 1),
(5, 'Nicola', 'YY765', '2018-01-07', 2),
(6, 'Elizabeth', 'zoo892', '2018-2-13', 3),
(7, 'Susan', 'WEG753', '2018-3-5', 2),
(8, 'Kelly', 'cici818', '2018-4-6', 4),
(9, 'David', 'UI799', '2018-5-19', 2),
(10, 'Lucas', 'am6754','2018-05-25', 2)

select * from User_Account; 

INSERT User_Session
VALUES 
(1, '24.18.105.231', '10', '2017-11-17', 1),
(2, '24.34.1.102', '8', '2017-11-25', 2),
(3, '24.49.216.172', '5', '2017-12-10', 3),
(4, '24.73.39.89', '22', '2017-12-18', 4),
(5, '24.18.105.231', '15', '2017-12-24', 1),
(6, '24.18.105.231', '20', '2017-12-31', 1),
(7, '24.79.169.21', '17', '2018-01-07', 5),
(8, '24.89.107.79', '15', '2018-02-13', 6),
(9, '24.18.105.231', '27', '2018-03-01', 1),
(10, '24.62.71.57', '35', '2018-03-05', 7),
(11, '24.89.107.79', '14', '2018-03-30', 6),
(12, '24.36.18.300', '18', '2018-04-06', 8),
(13, '24.79.169.21', '20', '2018-04-10', 5),
(14, '24.36.18.300', '26', '2018-04-13', 8),
(15, '24.89.107.79', '24', '2018-04-17', 6),
(16, '24.36.18.300', '17', '2018-04-27', 8),
(17, '24.36.18.300', '20', '2018-05-02', 8),
(18, '24.62.71.57', '26', '2018-05-06', 7),
(19, '24.18.105.231', '16', '2018-05-10', 1),
(20, '24.78.156.64', '23', '2018-05-19', 9),
(21, '24.25.257.31', '130', '2018-05-25', 10),
(22, '24.78.156.64', '27', '2018-06-20', 9),
(23, '24.25.257.31', '28', '2018-07-08', 10);

select * from User_Session;


INSERT InventoryCatalog
VALUES (1, 'Women Clothing'),
	   (2, 'Men Clothing'),
	   (3, 'Kids Clothing'),
	   (4, 'Women Shoes'),
	   (5, 'Men Shoes'),
	   (6, 'Kids Shoes'),
	   (7, 'Accessories'),
	   (8, 'Furniture'),
	   (9, 'Decoration'),
	   (10, 'Electronic Products'),
	   (11, 'Kitchen Products');

select * from InventoryCatalog;

INSERT Vendor
VALUES (1, 'Express', '2080 Park Centre Dr'),
	   (2, 'Wearhouse', '8950 W Charless Blvd'),
	   (3, 'DressBarn', '8740 W Charless Blvd'),
	   (4, 'Madewell', '1985 Festival Plaza Dr'),
	   (5, 'Vans', '410 Meadows St'),
	   (6, 'Journeys', '775 S 8th Ave'),
	   (7, 'Pottery Home D¨¦cor', '6710 N Russell Rd'),
	   (8, 'Ashley Store', '3800 Town Center Dr'),
	   (9, 'Furniture Place', '205 Rainbow Blvd'),
	   (10, 'Fly Electronics', '683 Terry Ave'),
	   (11, 'Cap Cookhouse', '4300 Westlake Dr');

SELECT * FROM Vendor; 



INSERT Inventory_Item
VALUES
(50, 'Soutach,e Lace Dress', 100, 1, 4),
(28, 'North Pole Jackets',	200, 2,	6),
(90, 'Peek Agnes Sweater',	150, 3,	3),
(65, 'Velvet Leggings',	300, 1,	2),
(120,'Tate Sweater',350,2,2),
(70,'Reindeer Sweater Dress',200,3,	1),
(15,'Cat Beanie',300,7,	6),
(36,'Osito Gloves',	400,7,1),
(59,'Furry Infinity Scarf',	200,7,3),
(40, 'J&M Boots',350,5,	5),
(70,'Star Heels',100,4,	4),
(30,'Vans Sport shoes',100,	6,	5),
(35,'Chairs',100,8,9),
(80,'Computer Desk',150,8,9),
(38,'Mosaic Mat',30,9,8),
(50	,'Snowflake lamp',80,9,	7),
(29,'Headphone'	,50	,10	,10),
(18,'Fast USB Drive',50	,10	,10),
(30,'Lilia Dish',100,11,11),
(80,'Stainless Steel Cookware Set',	80,	11,	11)

SELECT * FROM Inventory_Item

INSERT Shopping_Cart
VALUES
(1,	1,	115, 1),
(2,	1,	268, 2),
(3,	1,	142, 3),
(4,	1,	110, 4),
(5,	1,	140, 5),
(6,	1,	80,	6),
(7,	1,	50,	7),
(8,	1,	70,	8),
(9,	1,	40,	9),
(10, 1,	76,	10)

select * from Shopping_Cart;

INSERT Cart_Detail
VALUES
(1,	1,	1,	'2017-11-17',	1),
(2,	4,	1,	'2017-11-17',	1),
(3,	2,	1,	'2017-11-25',	2),
(4,	5,	2,	'2017-11-25',	2),
(5,	8,	2,	'2017-12-10',	3),
(6,	11,	1,	'2017-12-10',	3),
(7,	19,	1,	'2017-12-24',	4),
(8,	20,	1,	'2017-12-24',	4),
(9,	13,	4,	'2018-01-07',	5),
(10,14,	1,	'2018-02-13',	6),
(11,16,	1,	'2018-03-05',	7),
(12,6,	1,	'2018-04-06',	8),
(13,10,	1,	'2018-05-19',	9),
(14,15,	2,	'2018-05-25',	10)

select * from Cart_Detail;



/* INSERT INTO ORDERHEADER*/ 
INSERT INTO OrderHeader
VALUES
('2018-11-01',207.5,'p',1,0,20.75);

INSERT INTO OrderHeader
VALUES
('2018-11-02',500,'u',1,0,50);

INSERT INTO OrderHeader
VALUES
('2018-11-02',500,'u',2,55,50);

INSERT INTO OrderHeader
VALUES
('2018-11-07',10,'u',2,0,1);

INSERT INTO OrderHeader
VALUES
('2018-11-07',39,'p',4,0.39,3.9);

INSERT INTO OrderHeader
VALUES
('2018-11-07',10,'u',4,0,1);

DELETE FROM OrderHeader
WHERE OrderID IN (8,9,10,11)

INSERT INTO OrderHeader
VALUES
('2018-11-08',1000,'u',4,55,100);

INSERT INTO OrderHeader
VALUES
('2018-11-08',4999,'p',5,99,499.9);

INSERT INTO OrderHeader
VALUES
('2018-11-10',60,'p',3,0,6);

INSERT INTO OrderHeader
VALUES
('2018-11-16',999,'u',6,9,99.9);

/*INSERT INTO CreditCard*/

DROP TABLE OrderHeader
DROP TABLE OrderItem
DROP TABLE OrderItemHistory
DROP TABLE Payment
DROP TABLE CreditCard


INSERT INTO CreditCard
VALUES
(1000000000000000,'James','2020-1-31',1)

INSERT INTO CreditCard
VALUES
(1000000000000006,'James','2025-8-31',1)

INSERT INTO CreditCard
VALUES
(1000000645000009,'Steve','2020-8-31',2)

INSERT INTO CreditCard
VALUES
(1004900645000009,'Amy','2021-3-31',3)

INSERT INTO CreditCard
VALUES
(1000000645004446,'Amy','2019-8-31',3)

INSERT INTO CreditCard
VALUES
(3890000645004446,'Elizabeth','2021-7-31',6)

INSERT INTO CreditCard
VALUES
(3890000645007777,'Elizabeth','2023-4-30',6)

INSERT INTO CreditCard
VALUES
(3890000645055555,'Susan','2024-9-30',7)

INSERT INTO CreditCard
VALUES
(3890000645007367,'Susan','2023-11-30',7)

INSERT INTO CreditCard
VALUES
(3890000645447367,'David','2020-11-30',9)

INSERT INTO CreditCard
VALUES
(1234000645447367,'Mark','2020-11-30',4)
/*INSERT INTO Payment
 * PaymentID INT IDENTITY,
	TotalAmount decimal(10,2) NOT NULL,
	Status VARCHAR(255) NOT NULL,
	PayTime TIMESTAMP,
	CardID BIGINT,
	OrderID INT,*/
INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(20,'Succeed',1000000000000000,1)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(30,'Succeed',1000000000000000,1)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(50,'Succeed',1000000000000000,1)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(100,'Succeed',1000000000000000,1)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(28.25,'Succeed',1000000000000000,1)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(42.51,'Succeed',1234000645447367,5)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)

INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(10,'Succeed',1004900645000009,9)


INSERT INTO Payment
(TotalAmount,Status,CardID,OrderID)
VALUES
(6,'Succeed',1004900645000009,9)

/*Insert into OrderItem
 * 	OrderItemID INT IDENTITY,
	ItemID INT NOT NULL,
	qty INT NOT NULL,
	OrderID INT NOT NULL,
	PRIMARY KEY (OrderItemID),
	FOREIGN KEY (OrderID) REFERENCES OrderHeader(OrderID),
	FOREIGN KEY (ItemID) REFERENCES Inventory_Item(item_id)
*/
INSERT INTO OrderItem
VALUES
(2,5,1)

INSERT INTO OrderItem
VALUES
(4,1,1)

INSERT INTO OrderItem
VALUES
(2,2,1)

INSERT INTO OrderItem
VALUES
(5,5,1)

INSERT INTO OrderItem
VALUES
(1,5,1)

INSERT INTO OrderItem
VALUES
(7,5,1)


INSERT INTO OrderItem
VALUES
(7,5,2)


INSERT INTO OrderItem
VALUES
(1,6,3)

INSERT INTO OrderItem
VALUES
(4,1,3)

INSERT INTO OrderItem
VALUES
(2,4,3)


INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (1, 1, 1, 10,8,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (2, 1, 3, 8,8,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (3, 5, 1, 10,8,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (4, 1, 1, 7,6,'ok');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (5, 2, 4, 9,4,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (6, 1, 5, 1,8,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (7, 2, 1, 8,7,'bad');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (8, 1, 8, 2,8,'nice');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (9, 5, 1, 7,6,'bad');
INSERT INTO Customer_Service (Cus_Ser_ID, User_ID, Item_ID, Staff_ID,Session_ID,Notes)
VALUES (10, 6, 7, 1,5,'nice');


INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (1, 4, 2, 'F',5.43,'u','2018-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (2, 2, 3, 'F',8.43,'u','2018-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (3, 1, 1, 'C',3.83,'u','2018-11-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (4, 6, 3, 'F',28.43,'u','2018-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (5, 4, 8, 'C',6.53,'u','2017-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (6, 3, 5, 'F',18.23,'u','2018-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (7, 4, 6, 'C',7.4,'u','2017-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (8, 5, 1, 'C',5.43,'u','2018-10-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (9, 9, 7, 'F',7.43,'u','2018-02-12');
INSERT INTO Shipping (Shipping_ID, OrderID, Address_ID,Shipping_Method,Shipping_Charge,Status,Shipping_Date )
VALUES (10, 3, 2, 'F',15.93,'u','2018-10-12');


INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (1, 6, 4, 5,'2018-10-12');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (2, 2, 3, 9,'2017-10-22')
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (3, 6, 4, 7,'2016-03-12');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (4, 9, 6, 5,'2017-10-28');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (5, 4, 8, 8,'2018-04-12');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (6, 3, 9, 5,'2017-10-19');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (7, 8, 10, 1,'2018-09-12');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (8, 6, 10, 4,'2018-10-02');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (9, 2, 4, 3,'2017-08-12');
INSERT INTO Invoice (Invoice_ID, OrderID, User_ID, Address_ID,Creation_Date)
VALUES (10, 7, 3, 2,'2018-10-20');


INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (1, 2, 1, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (2, 9, 2, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (3, 8, 1, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (4, 3, 6, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (5, 6, 5, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (6, 2, 7, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (7, 8, 4, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (8, 1, 8, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (9, 5, 3, '');
INSERT INTO Invoice_History (Invoice_History_ID, Invoice_ID, User_ID, Notes)
VALUES (10, 3, 9, '');



INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (1,'Tim', '122','33rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (2,'Arya', '128','83rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (3,'Tom', '2342','98rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (4,'TD', '122','89rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (5,'Tony', '22','36rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (6,'Sam', '62','27rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (7,'Mimo', '62','63rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (8,'Bob', '982','63rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (9,'Jack', '782','87rd', 'Seattle', 'WA',12049);
INSERT INTO Address (Address_ID,Name, Add1,Add2, City, State,Zip)
VALUES (10,'Micky', '135','3rd', 'Seattle', 'WA',12049);




INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (1,'Tim', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (2,'Arya', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (3,'Tom', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (4,'TD', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (5,'Tony', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (6,'Sam', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (7,'Mimo', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (8,'Bob', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (9,'Jack', 'Sale','E');
INSERT INTO Staff (Staff_ID,Staff_name, Department, Staff_Position)
VALUES (10,'Micky','Sale','E');


INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (1, 'I like it.', 1, 1, 'Good',8, 7);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (2, 'The product is exceptional!', 1, 3, 'Execellent',8, 6);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (3, 'Average experience', 5, 1, 'Neutral', 8, 3);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (4, 'Not good, need improvement.', 1, 1, 'Bad', 6, 4);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (5, 'It is above my expectation.', 2, 4, 'Good', 4, 2);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (6, 'Love it! Highly recommend!', 1, 5, 'Excellent', 8, 2);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (7, 'Not getting what I want.', 2, 1, 'Bad', 7, 10);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (8, 'Not much to comment', 1, 8, 'Neutral', 8, 9);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (9, 'Overall good experience', 5, 1, 'Good', 6, 8);
INSERT INTO Customer_Feedback (Cus_Fb_ID, Comment, User_ID, Item_ID, Response, Session_ID, Staff_ID)
VALUES (10, 'Brilliant! It is the best thing I have ever got.', 6, 7, 'Excellent', 5, 1);


INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (1, 'Adult Dresses 20 percent off', 1, 'Discount', 2);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (2, 'End of the Summer Sale', 1, 'Seasonal Promotion', 3)
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (3, 'Clothing Black Friday Sale', 4, 'Holiday Promotion', 3);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (4, 'Christmas Jacket Sale', 2, 'Holiday Promotion', 8);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (5, 'Children Boots 30 percent off', 10, 'Discount', 7);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (6, 'Clothing Black Friday Sale', 6, 'Holiday Promotion', 5);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (7, 'Women Gloves 40 percent off', 8, 'Discount', 8);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (8, 'New Year Sweater Sale', 5, 'Holiday Promotion', 9);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (9, 'End of the Winter Sale', 5, 'Seasonal Promotion', 10);
INSERT INTO Advertising (Ad_ID, Title, Item_ID, Type, Staff_ID)
VALUES (10, 'Furniture 15 percent off', 13, 'Discount', 7);





