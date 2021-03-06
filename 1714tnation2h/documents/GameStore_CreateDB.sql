USE [master]
GO
/****** Object:  Database [GAMESTORE1714]    Script Date: 11/13/2018 2:48:39 AM ******/
CREATE DATABASE [GAMESTORE1714]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GameStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GameStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GameStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GameStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GAMESTORE1714] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GAMESTORE1714].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GAMESTORE1714] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET ARITHABORT OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [GAMESTORE1714] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GAMESTORE1714] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GAMESTORE1714] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GAMESTORE1714] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GAMESTORE1714] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GAMESTORE1714] SET  MULTI_USER 
GO
ALTER DATABASE [GAMESTORE1714] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GAMESTORE1714] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GAMESTORE1714] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GAMESTORE1714] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GAMESTORE1714] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GAMESTORE1714', N'ON'
GO
ALTER DATABASE [GAMESTORE1714] SET QUERY_STORE = OFF
GO
USE [GAMESTORE1714]
GO
/****** Object:  Table [dbo].[Accounts1]    Script Date: 11/13/2018 2:48:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Zip] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Accounts1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 11/13/2018 2:48:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItems]    Script Date: 11/13/2018 2:48:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Invoice_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
 CONSTRAINT [PK_LineItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/13/2018 2:48:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Stock] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipts]    Script Date: 11/13/2018 2:48:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Account_Id] [int] NOT NULL,
	[Invoice_Id] [int] NOT NULL,
 CONSTRAINT [PK_Receipts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts1] ON 
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (1, N'Rufus', N'Hayes', N'651-555-501', N'rufus123@aol.com', N'308 Pioneer Rd', N'Red Wing', N'MN        ', N'55066')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (2, N'Isaac', N'Mullins', N'507-555-506', N'imullins23@rocketmail.com', N'1250 Homer Rd', N'Winona', N'MN        ', N'55987')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (3, N'Lois', N'Fowler', N'507-555-505', N'lois.fowler@mail.com', N'300 S Garden St', N'Lake City', N'MN        ', N'55041')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (4, N'Tina', N'Allen', N'651-555-509', N'liltina41@yahoo.com', N'210 Skyline Heights', N'Wabasha', N'MN        ', N'55981')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (5, N'Al', N'Doyle', N'651-555-518', N'aldoyle51@aliens.com', N'5100 9th St', N'Goodview', N'MN        ', N'55987')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (6, N'Rose', N'Vaughn', N'651-555-502', N'rvaughn89@yahoo.com', N'1521  Prospect Valley Road', N'Irvine', N'MN        ', N'55986')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (7, N'Cameron', N'Williams', N'651-555-503', N'stormtrooper11@gmail.com', N'3470  Pearcy Avenue', N'Holloway', N'MN        ', N'55985')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (8, N'Samantha', N'Gordon', N'651-555-504', N'samanthag@outlook.com', N'2850  Plainfield Avenue', N'Fayette', N'MN        ', N'55984')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (9, N'Lionel', N'Walker', N'651-555-510', N'chucknorris321@gmail.com', N'3795  Ryder Avenue', N'Holbrook', N'MN        ', N'55990')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (10, N'Kyle', N'Yates', N'507-555-514', N'itsnotgates@yates.com', N'1545  Hampton Meadows', N'Haverhill', N'MN        ', N'55989')
GO
INSERT [dbo].[Accounts1] ([Id], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip]) VALUES (11, N'Shaun', N'Vargus', N'507-555-507', N'vargus8972@nomail.com', N'206 Bennett Ave', N'Minneiska', N'MN        ', N'55910')
GO
SET IDENTITY_INSERT [dbo].[Accounts1] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (1, N'66.9700', CAST(N'2018-09-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (3, N'374.5600', CAST(N'2018-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (4, N'33.0500', CAST(N'2018-09-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (5, N'64.1700', CAST(N'2018-09-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (6, N'170.9800', CAST(N'2018-09-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (7, N'44.9800', CAST(N'2018-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (8, N'29.9800', CAST(N'2018-09-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (9, N'358.9900', CAST(N'2018-09-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (10, N'301.9900', CAST(N'2018-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (11, N'88.1700', CAST(N'2018-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Invoices] ([Id], [Amount], [Date]) VALUES (12, N'35.0000', CAST(N'2018-09-25T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItems] ON 
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (4, N'Game', N'49.9900', 1, 12)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (5, N'Subscription', N'5.9900', 1, 28)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (9, N'Subscription', N'10.9900', 1, 29)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (11, N'Console', N'299.9900', 3, 2)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (12, N'Controller', N'40.0000', 3, 6)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (13, N'Game', N'35.5600', 3, 19)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (14, N'Game', N'27.0600', 4, 20)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (15, N'Magazine', N'5.9900', 4, 23)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (16, N'Game', N'53.1800', 5, 13)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (17, N'Subscription', N'10.9900', 5, 27)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (18, N'Console', N'115.0000', 6, 3)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (19, N'Game', N'19.9900', 6, 18)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (20, N'Game', N'35.9900', 6, 17)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (21, N'Game', N'38.9900', 7, 16)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (22, N'Subscription', N'5.9900', 7, 28)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (23, N'Subscription', N'14.9900', 8, 31)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (24, N'Subscription', N'14.9900', 8, 31)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (25, N'Console', N'299.9900', 9, 2)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (26, N'Game', N'59.9900', 9, 2)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (27, N'Console', N'299.0000', 10, 5)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (28, N'Magazine', N'2.9900', 10, 25)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (29, N'Headset', N'34.9900', 11, 10)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (30, N'Game', N'53.1800', 11, 13)
GO
INSERT [dbo].[LineItems] ([Id], [Description], [Amount], [Invoice_Id], [Product_Id]) VALUES (31, N'Controller', N'35.0000', 12, 7)
GO
SET IDENTITY_INSERT [dbo].[LineItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (1, N'XBOXOne', N'Console', N'244.9500', N'40')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (2, N'PS4', N'Console', N'299.9900', N'50')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (3, N'Xbox360', N'Console', N'115.0000', N'25')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (4, N'PS3', N'Console', N'120.0000', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (5, N'Nintendo Switch', N'Console', N'299.0000', N'45')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (6, N'PS4 Controller', N'Controller', N'40.0000', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (7, N'XBOXOne Controller', N'Controller', N'35.0000', N'35')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (8, N'VR PS4', N'3D Virtual Reality', N'349.0000', N'20')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (9, N'Charger Cord', N'Micro USB', N'4.9600', N'80')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (10, N'Turtle Beach Recon', N'Headset', N'34.9900', N'20')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (11, N'HyperX Cloud Stinger', N'Headset', N'49.9900', N'20')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (12, N'Monster Hunter World', N'Game', N'49.9900', N'120')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (13, N'Dragon Ball FighterZ', N'Game', N'53.1800', N'80')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (14, N'Shadow Of The Colossus', N'Game', N'29.9900', N'45')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (15, N'Metal Gear Survive', N'Game', N'19.9900', N'60')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (16, N'Sea of Thieves', N'Game', N'38.9900', N'50')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (17, N'LEGO The Incredibles', N'Game', N'35.9900', N'60')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (18, N'Sonic Mania', N'Game', N'19.9900', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (19, N'Call of Duty: WWII', N'Game', N'35.5600', N'60')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (20, N'Persona 5', N'Game', N'27.0600', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (21, N'Fallout 76', N'Game', N'59.9900', N'200')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (22, N'PC Gamer', N'Magazine', N'3.0000', N'40')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (23, N'Game Informer', N'Magazine', N'5.9900', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (24, N'Edge', N'Magazine', N'4.9900', N'30')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (25, N'Club Nintendo', N'Magazine', N'2.9900', N'45')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (26, N'PC Accelerator', N'Magazine', N'4.9900', N'25')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (27, N'Xbox Game Pass', N'Subscription', N'10.9900', N'50')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (28, N'PS Plus', N'Subscription', N'5.9900', N'55')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (29, N'PS Now', N'Subscription', N'10.9900', N'50')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (30, N'EA Access', N'Subscription', N'4.9900', N'45')
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Amount], [Stock]) VALUES (31, N'World of Warcraft', N'Subscription', N'14.9900', N'60')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (1, CAST(N'2018-09-01T00:00:00.000' AS DateTime), N'66.9700', 1, 1)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (2, CAST(N'2018-09-07T00:00:00.000' AS DateTime), N'374.5600', 2, 3)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (3, CAST(N'2018-09-07T00:00:00.000' AS DateTime), N'33.0500', 3, 4)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (4, CAST(N'2018-09-15T00:00:00.000' AS DateTime), N'64.1700', 4, 5)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (5, CAST(N'2018-09-17T00:00:00.000' AS DateTime), N'170.9800', 5, 6)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (6, CAST(N'2018-09-21T00:00:00.000' AS DateTime), N'44.9800', 6, 7)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (7, CAST(N'2018-09-21T00:00:00.000' AS DateTime), N'29.9800', 7, 8)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (8, CAST(N'2018-09-23T00:00:00.000' AS DateTime), N'358.9900', 8, 9)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (9, CAST(N'2018-09-24T00:00:00.000' AS DateTime), N'301.9900', 9, 10)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (10, CAST(N'2018-09-25T00:00:00.000' AS DateTime), N'88.1700', 10, 11)
GO
INSERT [dbo].[Receipts] ([Id], [ReceiptDate], [Amount], [Account_Id], [Invoice_Id]) VALUES (11, CAST(N'2018-09-25T00:00:00.000' AS DateTime), N'35.0000', 11, 12)
GO
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO
/****** Object:  Index [IX_FK_InvoiceLineItem]    Script Date: 11/13/2018 2:48:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_InvoiceLineItem] ON [dbo].[LineItems]
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_ProductLineItem]    Script Date: 11/13/2018 2:48:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ProductLineItem] ON [dbo].[LineItems]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_AccountReceipt]    Script Date: 11/13/2018 2:48:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_AccountReceipt] ON [dbo].[Receipts]
(
	[Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_InvoiceReceipt]    Script Date: 11/13/2018 2:48:39 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_InvoiceReceipt] ON [dbo].[Receipts]
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LineItems]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceLineItem] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_InvoiceLineItem]
GO
ALTER TABLE [dbo].[LineItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductLineItem] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_ProductLineItem]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_AccountReceipt] FOREIGN KEY([Account_Id])
REFERENCES [dbo].[Accounts1] ([Id])
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_AccountReceipt]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceReceipt] FOREIGN KEY([Invoice_Id])
REFERENCES [dbo].[Invoices] ([Id])
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_InvoiceReceipt]
GO
USE [master]
GO
ALTER DATABASE [GAMESTORE1714] SET  READ_WRITE 
GO
