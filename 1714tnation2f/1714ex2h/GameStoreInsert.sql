--USE [GameStoreManager]
--GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10000, N'Rufus', N'Hayes', N'651-555-501', N'rufus123@aol.com', N'308 Pioneer Rd', N'Red Wing', N'MN        ', 55066)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10001, N'Isaac', N'Mullins', N'507-555-506', N'imullins23@rocketmail.com', N'1250 Homer Rd', N'Winona', N'MN        ', 55987)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10002, N'Lois', N'Fowler', N'507-555-505', N'lois.fowler@mail.com', N'300 S Garden St', N'Lake City', N'MN        ', 55041)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10003, N'Tina', N'Allen', N'651-555-509', N'liltina41@yahoo.com', N'210 Skyline Heights', N'Wabasha', N'MN        ', 55987)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10004, N'Al', N'Doyle', N'651-555-518', N'aldoyle51@aliens.com', N'5100 9th St', N'Goodview', N'MN        ', 55910)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10005, N'Shaun', N'Vargus', N'507-555-507', N'vargus8972@nomail.com', N'206 Bennett Ave', N'Minneiska', N'MN        ', 55910)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10006, N'Rose', N'Vaughn', N'651-555-502', N'rvaughn89@yahoo.com', N'1521  Prospect Valley Road', N'Irvine', N'MN        ', 55986)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10007, N'Cameron', N'Williams', N'651-555-503', N'stormtrooper11@gmail.com', N'3470  Pearcy Avenue', N'Holloway', N'MN        ', 55985)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10008, N'Samantha', N'Gordon', N'651-555-504', N'samanthag@outlook.com', N'2850  Plainfield Avenue', N'Fayette', N'MN        ', 55984)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10009, N'Lionel', N'Walker', N'651-555-510', N'chucknorris321@gmail.com', N'3795  Ryder Avenue', N'Holbrook', N'MN        ', 55990)
GO
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10010, N'Kyle', N'Yates', N'507-555-514', N'itsnotgates@yates.com', N'1545  Hampton Meadows', N'Haverhill', N'MN        ', 55989)
GO
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9000, 66.9700, CAST(N'2018-09-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9001, 374.5600, CAST(N'2018-09-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9002, 33.0500, CAST(N'2018-09-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9003, 64.1700, CAST(N'2018-09-15T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9004, 170.9800, CAST(N'2018-09-17T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9005, 44.9800, CAST(N'2018-09-21T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9006, 29.9800, CAST(N'2018-09-21T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9007, 358.9900, CAST(N'2018-09-23T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9008, 301.9900, CAST(N'2018-09-24T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9009, 88.1700, CAST(N'2018-09-25T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9010, 35.0000, CAST(N'2018-09-25T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItem] ON 
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10501, 9000, 14, N'Game', 49.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10502, 9000, 31, N'Subscription', 5.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10503, 9000, 32, N'Subscription', 10.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10504, 9001, 2, N'PS4 Console', 299.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10505, 9001, 6, N'PS4 Controller', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10506, 9001, 21, N'Game', 35.5600)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10507, 9002, 22, N'Game', 27.0600)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10508, 9002, 26, N'Magazine', 5.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10509, 9003, 15, N'Game', 53.1800)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10510, 9003, 30, N'Subscription', 10.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10511, 9004, 3, N'XBox360 Console', 115.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10512, 9004, 20, N'Game', 19.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10513, 9004, 19, N'Game', 35.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10514, 9005, 18, N'Game', 38.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10515, 9005, 31, N'Subscription', 5.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10516, 9006, 34, N'Subscription', 14.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10519, 9006, 34, N'Subscription', 14.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10520, 9007, 2, N'PS4 Console', 299.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10521, 9007, 23, N'Game', 59.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10522, 9008, 5, N'Nintendo Console', 299.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10523, 9008, 28, N'Subscription', 2.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10524, 9009, 11, N'Headset', 34.9900)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10525, 9009, 15, N'Game', 53.1800)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10526, 9010, 7, N'Controller', 35.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (1, N'XBOXOne', N'Console', 244.9500, 40)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (2, N'PS4', N'Console', 299.9900, 50)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (3, N'Xbox360', N'Console', 115.0000, 25)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (4, N'PS3', N'Console', 120.0000, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (5, N'Nintendo Switch', N'Console', 299.0000, 45)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (6, N'PS4 Controller', N'Controller', 40.0000, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (7, N'XBOXOne Controller', N'Controller', 35.0000, 35)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (8, N'VR PS4', N'3D Virtual Reality', 349.0000, 20)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (9, N'Charger Cord', N'Micro USB', 4.9600, 80)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (11, N'Turtle Beach Recon', N'Headset', 34.9900, 20)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (13, N'HyperX Cloud Stinger', N'Headset', 49.9900, 20)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (14, N'Monster Hunter World', N'Game', 49.9900, 120)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (15, N'Dragon Ball FighterZ', N'Game', 53.1800, 80)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (16, N'Shadow Of The Colossus', N'Game', 29.9900, 45)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (17, N'Metal Gear Survive', N'Game', 19.9900, 60)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (18, N'Sea of Thieves', N'Game', 38.9900, 50)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (19, N'LEGO The Incredibles', N'Game', 35.9900, 60)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (20, N'Sonic Mania', N'Game', 19.9900, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (21, N'Call of Duty: WWII', N'Game', 35.5600, 60)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (22, N'Persona 5', N'Game', 27.0600, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (23, N'Fallout 76', N'Game', 59.9900, 200)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (24, N'PC Gamer', N'Magazine', 3.0000, 40)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (26, N'Game Informer', N'Magazine', 5.9900, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (27, N'Edge', N'Magazine', 4.9900, 30)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (28, N'Club Nintendo', N'Magazine', 2.9900, 45)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (29, N'PC Accelerator', N'Magazine', 4.9900, 25)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (30, N'Xbox Game Pass', N'Subscription', 10.9900, 50)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (31, N'PS Plus', N'Subscription', 5.9900, 55)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (32, N'PS Now', N'Subscription', 10.9900, 50)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (33, N'EA Access', N'Subscription', 4.9900, 45)
GO
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Amount], [Stock]) VALUES (34, N'World of Warcraft', N'Subscription', 14.9900, 60)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5001, 10000, 9000, CAST(N'2018-09-01T00:00:00' AS SmallDateTime), 66.9700)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5002, 10001, 9001, CAST(N'2018-09-07T00:00:00' AS SmallDateTime), 374.5600)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5003, 10002, 9002, CAST(N'2018-09-07T00:00:00' AS SmallDateTime), 33.0500)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5004, 10003, 9003, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), 64.1700)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5005, 10004, 9004, CAST(N'2018-09-17T00:00:00' AS SmallDateTime), 170.9800)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5006, 10005, 9005, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 44.9800)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5007, 10006, 9006, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 29.9800)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5008, 10007, 9007, CAST(N'2018-09-23T00:00:00' AS SmallDateTime), 358.9900)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5009, 10008, 9008, CAST(N'2018-09-24T00:00:00' AS SmallDateTime), 301.9900)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5010, 10009, 9009, CAST(N'2018-09-25T00:00:00' AS SmallDateTime), 88.1700)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (5011, 10010, 9010, CAST(N'2018-09-25T00:00:00' AS SmallDateTime), 35.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
