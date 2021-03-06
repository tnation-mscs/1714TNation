--USE [PropertyManager]
--GO
SET IDENTITY_INSERT [dbo].[Building] ON 
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066     ')
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (2, N'Southwest Apartments', N'1250 Homer Rd', N'Winona', N'MN', N'55987     ')
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'Northeast Apartments', N'300 S Garden St', N'Lake City', N'MN', N'55041     ')
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (4, N'Northwest Apartments', N'210 Skyline Heights', N'Wabasha', N'MN', N'55987     ')
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'West Apartments', N'5100 9th St', N'Goodview', N'MN', N'55987     ')
GO
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (6, N'East Apartment', N'206 Bennett Ave', N'Minneiska', N'MN', N'55910     ')
GO
SET IDENTITY_INSERT [dbo].[Building] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (1, N'Rufus', N'Hayes', N'651-555-501', N'rufus123@aol.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (2, N'Rose', N'Vaughn', N'651-555-502', N'rvaughn89@yahoo.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (3, N'Cameron', N'Williams', N'651-555-503', N'stormtrooper11@gmail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (4, N'Samantha', N'Gordon', N'651-555-504', N'samanthag@outlook.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (5, N'Lois', N'Fowler', N'507-555-505', N'lois.fowler@mail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (6, N'Isaac', N'Mullins', N'507-555-506', N'imullins23@rocketmail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (7, N'Shaun', N'Vargus', N'507-555-507', N'vargus8972@nomail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (8, N'Kristine', N'Bailey', N'507-555-508', N'')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (9, N'Tina', N'Allen', N'651-555-509', N'liltina41@yahoo.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (10, N'Lionel', N'Walker', N'651-555-510', N'chucknorris321@gmail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (11, N'Samuel', N'Wolfe', N'651-555-511', N'iamthewolfe01@outlook.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (12, N'Tracy', N'Benson', N'651-555-512', N'tracy.benson@mail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (13, N'Irene', N'Lewis', N'651-555-513', N'ilewis4893@rocketmail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (14, N'Kyle', N'Yates', N'507-555-514', N'itsnotgates@yates.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (15, N'Nicole', N'Carlson', N'507-555-515', N'')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (16, N'Fred', N'Willis', N'507-555-516', N'fredw987@gmail.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (17, N'Tommy', N'Powers', N'507-555-517', N'tommypowers@outlook.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (18, N'Al', N'Doyle', N'651-555-518', N'aldoyle51@aliens.com')
GO
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (19, N'Tyler', N'Nation', N'507-555-519', NULL)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Apartment] ON 
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (2, 1, N'102', 550, 1, 700.0000, 2, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (3, 1, N'103', 500, 1, 650.0000, 3, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (4, 1, N'104', 450, 1, 400.0000, 4, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (5, 2, N'101', 600, 1, 750.0000, NULL, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (6, 2, N'102', 400, 1, 500.0000, 7, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (7, 2, N'103', 550, 1, 650.0000, 6, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (8, 2, N'104', 500, 1, 600.0000, 5, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (9, 3, N'101', 750, 1, 850.0000, 10, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (10, 3, N'102', 750, 1, 850.0000, 12, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (11, 3, N'201', 700, 1, 800.0000, NULL, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (12, 3, N'202', 700, 1, 800.0000, 11, 4)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (13, 4, N'101', 850, 2, 1000.0000, 9, 18)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (14, 4, N'201', 400, 1, 550.0000, 9, 18)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (15, 4, N'202', 400, 1, 550.0000, 13, 18)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (16, 5, N'101', 500, 1, 650.0000, 14, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (17, 5, N'102', 500, 1, 650.0000, NULL, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (18, 5, N'103', 500, 1, 650.0000, NULL, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (19, 5, N'104', 500, 1, 650.0000, NULL, 17)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (20, 6, N'101', 800, 2, 600.0000, 16, 16)
GO
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (21, 6, N'201', 800, 2, 950.0000, 15, 16)
GO
SET IDENTITY_INSERT [dbo].[Apartment] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10001, 1, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10003, 2, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10004, 3, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10005, 4, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10006, 6, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10007, 7, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10008, 8, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10009, 9, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10010, 10, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10011, 12, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10012, 13, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10013, 14, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10014, 15, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10015, 16, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10016, 20, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10017, 21, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10018, 1, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10019, 2, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10020, 3, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10021, 4, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10022, 6, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10023, 7, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10024, 8, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10025, 9, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10026, 10, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10027, 12, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10028, 13, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10029, 14, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10030, 15, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10031, 16, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10032, 20, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[Invoice] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10033, 21, CAST(N'2018-10-21T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10001, 10001, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 770.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10002, 10003, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 870.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10003, 10004, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 890.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10004, 10005, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 615.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10005, 10006, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 675.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10006, 10007, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 810.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10007, 10008, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 765.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10008, 10009, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1105.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10009, 10010, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1005.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10010, 10011, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1065.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10011, 10012, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1300.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10012, 10013, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 680.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10013, 10014, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 690.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10014, 10015, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 830.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10015, 10016, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 740.0000)
GO
INSERT [dbo].[Receipt] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (10016, 10017, CAST(N'2018-10-01T00:00:00' AS SmallDateTime), 1180.0000)
GO
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItem] ON 
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10001, 10001, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10002, 10001, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10003, 10001, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10004, 10001, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10005, 10001, N'Cable Tv/Internet', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10006, 10003, N'Rent, October 2018', 700.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10007, 10003, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10008, 10003, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10009, 10003, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10010, 10004, N'Rent, October 2018', 650.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10011, 10004, N'Electricity', 55.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10012, 10004, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10013, 10004, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10014, 10004, N'Cable tv/Internet', 80.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10015, 10005, N'Rent, October 2018', 400.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10016, 10005, N'Electricity', 45.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10017, 10005, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10018, 10005, N'Garage', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10019, 10005, N'Cable Tv/Internet', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10020, 10006, N'Rent, October 2018', 500.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10022, 10006, N'Electricity', 55.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10023, 10006, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10024, 10006, N'Cable Tv/ Internet', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10025, 10007, N'Rent, October 2018', 650.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10026, 10007, N'Electicity', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10027, 10007, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10028, 10007, N'Cable Tv/Internet', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10029, 10008, N'Rent, October 2018', 600.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10030, 10008, N'Electicity', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10031, 10008, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10032, 10008, N'Cable Tv/Internet', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10033, 10009, N'Rent, October 2018', 850.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10034, 10009, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10035, 10009, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10036, 10009, N'Garage', 65.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10037, 10009, N'Cable Tv/Internet', 80.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10038, 10010, N'Rent, October 2018', 850.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10039, 10010, N'Electricity', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10040, 10010, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10041, 10010, N'Garage', 65.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10042, 10011, N'Rent, October 2018', 800.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10043, 10011, N'Electricity', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10044, 10011, N'Gas', 60.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10046, 10011, N'Garage', 65.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10047, 10011, N'Cable Tv/Internet', 80.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10048, 10012, N'Rent, October 2018', 1000.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10049, 10012, N'Electricity', 120.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10051, 10012, N'Gas', 80.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10052, 10012, N'Cable Tv/Internet', 100.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10053, 10013, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10054, 10013, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10055, 10013, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10056, 10013, N'Garage', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10057, 10014, N'Rent, October 2018', 550.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10058, 10014, N'Electricity', 55.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10059, 10014, N'Gas', 45.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10060, 10014, N'Garage', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10061, 10015, N'Rent, October 2018', 650.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10062, 10015, N'Electricity', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10063, 10015, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10064, 10015, N'Cable Tv/Internet', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10065, 10016, N'Rent, October 2018', 600.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10066, 10016, N'Electricity', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10067, 10016, N'Gas', 40.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10068, 10016, N'Garage', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10069, 10017, N'Rent, October 2018', 950.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10070, 10017, N'Electricity', 70.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10071, 10017, N'Gas', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10072, 10017, N'Garage', 50.0000)
GO
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10073, 10017, N'Cable Tv/Internet', 60.0000)
GO
SET IDENTITY_INSERT [dbo].[LineItem] OFF
GO
SET IDENTITY_INSERT [dbo].[ApartmentEx1B] ON 
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'101', 400, 1, 550.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (4, N'Southeast Apartments', N'308 Pioneer Rd', N'102', 550, 1, 700.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (5, N'Southeast Apartments', N'308 Pioneer Rd', N'103', 500, 1, 650.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (7, N'Southeast Apartments', N'308 Pioneer Rd', N'104', 450, 1, 600.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (9, N'Southeast Apartments', N'308 Pioneer Rd', N'105', 400, 1, 550.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (10, N'Southwest Apartments', N'1250 Homer Rd', N'201', 600, 1, 700.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (11, N'Southwest Apartments', N'1250 Homer Rd', N'202', 1000, 2, 1200.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (12, N'Southwest Apartments', N'1250 Homer Rd', N'203', 850, 2, 950.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (13, N'Southwest Apartments', N'1250 Homer Rd', N'204', 750, 1, 850.0000, NULL, N'Swanson')
GO
INSERT [dbo].[ApartmentEx1B] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (14, N'Southwest Apartments', N'1250 Homer Rd', N'205', 600, 1, 700.0000, NULL, N'Swanson')
GO
SET IDENTITY_INSERT [dbo].[ApartmentEx1B] OFF
GO
