USE [master]
GO
/****** Object:  Database [GameStoreManager]    Script Date: 9/28/2018 12:49:31 AM ******/
CREATE DATABASE [GameStoreManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GameStoreManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GameStoreManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GameStoreManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GameStoreManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GameStoreManager] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameStoreManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameStoreManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameStoreManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameStoreManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameStoreManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameStoreManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameStoreManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameStoreManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameStoreManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameStoreManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameStoreManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameStoreManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameStoreManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameStoreManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameStoreManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameStoreManager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GameStoreManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameStoreManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameStoreManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameStoreManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameStoreManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameStoreManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameStoreManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameStoreManager] SET RECOVERY FULL 
GO
ALTER DATABASE [GameStoreManager] SET  MULTI_USER 
GO
ALTER DATABASE [GameStoreManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameStoreManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameStoreManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameStoreManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GameStoreManager] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GameStoreManager', N'ON'
GO
ALTER DATABASE [GameStoreManager] SET QUERY_STORE = OFF
GO
USE [GameStoreManager]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [GameStoreManager]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 9/28/2018 12:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountId] [int] IDENTITY(10000,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nchar](10) NOT NULL,
	[Zip] [int] NOT NULL,
	[Subscriptions] [nchar](10) NOT NULL,
	[Points] [int] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Console/Hardware]    Script Date: 9/28/2018 12:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Console/Hardware](
	[Console/HardwareId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Amount] [smallmoney] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Console/Hardware] PRIMARY KEY CLUSTERED 
(
	[Console/HardwareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 9/28/2018 12:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[GameId] [int] IDENTITY(200,1) NOT NULL,
	[GameName] [nvarchar](50) NOT NULL,
	[ESRBRating] [nchar](10) NOT NULL,
	[ReleaseDate] [smalldatetime] NOT NULL,
	[Amount] [smallmoney] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 9/28/2018 12:49:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(9000,1) NOT NULL,
	[Amount] [smallmoney] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItem]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem](
	[LineItemId] [int] IDENTITY(10500,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_LineItem1_1] PRIMARY KEY CLUSTERED 
(
	[LineItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptId] [int] IDENTITY(5000,1) NOT NULL,
	[AccountId] [int] NULL,
	[InvoiceId] [int] NOT NULL,
	[RewardId] [int] NULL,
	[ReceiptDate] [smalldatetime] NOT NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RewardPoints]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardPoints](
	[AccountId] [int] NOT NULL,
	[ReceiptId] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Amount] [smallmoney] NOT NULL,
	[PointsEarned] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rewards]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rewards](
	[RewardId] [int] IDENTITY(1,1) NOT NULL,
	[RewardName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[PointCost] [int] NOT NULL,
 CONSTRAINT [PK_Rwards] PRIMARY KEY CLUSTERED 
(
	[RewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriptions]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriptions](
	[AccountId] [int] NOT NULL,
	[SubscriptionId] [int] NOT NULL,
	[Plan] [nvarchar](50) NOT NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[Amount] [smallmoney] NOT NULL,
	[ReceiptId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriptionService]    Script Date: 9/28/2018 12:49:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionService](
	[SubscriptionId] [int] IDENTITY(90,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Price] [smallmoney] NOT NULL,
	[ShipDate] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubscriptionService] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10000, N'Rufus', N'Hayes', N'651-555-501', N'rufus123@aol.com', N'308 Pioneer Rd', N'Red Wing', N'MN        ', 55066, N'Yes       ', 160)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10001, N'Isaac', N'Mullins', N'507-555-506', N'imullins23@rocketmail.com', N'1250 Homer Rd', N'Winona', N'MN        ', 55987, N'No        ', 250)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10002, N'Lois', N'Fowler', N'507-555-505', N'lois.fowler@mail.com', N'300 S Garden St', N'Lake City', N'MN        ', 55041, N'Yes       ', 180)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10003, N'Tina', N'Allen', N'651-555-509', N'liltina41@yahoo.com', N'210 Skyline Heights', N'Wabasha', N'MN        ', 55987, N'Yes       ', 60)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10004, N'Al', N'Doyle', N'651-555-518', N'aldoyle51@aliens.com', N'5100 9th St', N'Goodview', N'MN        ', 55910, N'No        ', 120)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10005, N'Shaun', N'Vargus', N'507-555-507', N'vargus8972@nomail.com', N'206 Bennett Ave', N'Minneiska', N'MN        ', 55910, N'Yes       ', 80)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10006, N'Rose', N'Vaughn', N'651-555-502', N'rvaughn89@yahoo.com', N'1521  Prospect Valley Road', N'Irvine', N'MN        ', 55986, N'Yes       ', 30)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10007, N'Cameron', N'Williams', N'651-555-503', N'stormtrooper11@gmail.com', N'3470  Pearcy Avenue', N'Holloway', N'MN        ', 55985, N'No        ', 310)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10008, N'Samantha', N'Gordon', N'651-555-504', N'samanthag@outlook.com', N'2850  Plainfield Avenue', N'Fayette', N'MN        ', 55984, N'Yes       ', 50)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10009, N'Lionel', N'Walker', N'651-555-510', N'chucknorris321@gmail.com', N'3795  Ryder Avenue', N'Holbrook', N'MN        ', 55990, N'Yes       ', 210)
INSERT [dbo].[Accounts] ([AccountId], [FirstName], [LastName], [Phone], [Email], [Address], [City], [State], [Zip], [Subscriptions], [Points]) VALUES (10010, N'Kyle', N'Yates', N'507-555-514', N'itsnotgates@yates.com', N'1545  Hampton Meadows', N'Haverhill', N'MN        ', 55989, N'Yes       ', 75)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Console/Hardware] ON 

INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (1, N'XBOXOne', N'Console', 244.9500, 40)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (2, N'PS4', N'Console', 299.9900, 50)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (3, N'Xbox360', N'Console', 115.0000, 25)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (4, N'PS3', N'Console', 120.0000, 30)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (5, N'Nintendo Switch', N'Console', 299.0000, 45)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (6, N'PS4 Controller', NULL, 40.0000, 30)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (7, N'XBOXOne Controller', NULL, 35.0000, 35)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (8, N'VR PS4', N'3D Virtual Reality', 349.0000, 20)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (9, N'Charger Cord', N'Micro USB', 4.9600, 80)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (11, N'Turtle Beach Recon', N'Headset', 34.9900, 20)
INSERT [dbo].[Console/Hardware] ([Console/HardwareId], [Name], [Description], [Amount], [Stock]) VALUES (13, N'HyperX Cloud Stinger', N'Headset', 49.9900, 20)
SET IDENTITY_INSERT [dbo].[Console/Hardware] OFF
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (200, N'Monster Hunter World', N'T         ', CAST(N'2018-01-26T00:00:00' AS SmallDateTime), 49.9900, 120)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (201, N'Dragon Ball FighterZ', N'T         ', CAST(N'2018-01-26T00:00:00' AS SmallDateTime), 53.1800, 80)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (203, N'Shadow Of The Colossus', N'T         ', CAST(N'2018-02-06T00:00:00' AS SmallDateTime), 29.9900, 45)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (205, N'Metal Gear Survive', N'M         ', CAST(N'2018-02-20T00:00:00' AS SmallDateTime), 19.9900, 60)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (206, N'Sea of Thieves', N'T         ', CAST(N'2018-03-20T00:00:00' AS SmallDateTime), 38.9900, 50)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (208, N'LEGO The Incredibles', N'E         ', CAST(N'2018-06-15T00:00:00' AS SmallDateTime), 35.9900, 60)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (209, N'Sonic Mania', N'E         ', CAST(N'2017-08-15T00:00:00' AS SmallDateTime), 19.9900, 30)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (210, N'Call of Duty: WWII', N'M         ', CAST(N'2017-11-03T00:00:00' AS SmallDateTime), 35.5600, 60)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (211, N'Persona 5', N'M         ', CAST(N'2016-09-15T00:00:00' AS SmallDateTime), 27.0600, 30)
INSERT [dbo].[Games] ([GameId], [GameName], [ESRBRating], [ReleaseDate], [Amount], [Stock]) VALUES (212, N'Fallout 76', N'M         ', CAST(N'2018-11-14T00:00:00' AS SmallDateTime), 59.9900, 200)
SET IDENTITY_INSERT [dbo].[Games] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9000, 229.9900, CAST(N'2018-09-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9001, 374.5600, CAST(N'2018-09-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9002, 39.0600, CAST(N'2018-09-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9003, 64.1700, CAST(N'2018-09-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9004, 170.9800, CAST(N'2018-09-17T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9005, 53.9900, CAST(N'2018-09-21T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9006, 29.9800, CAST(N'2018-09-21T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9007, 358.9900, CAST(N'2018-09-23T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9008, 301.9900, CAST(N'2018-09-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9009, 88.1700, CAST(N'2018-09-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice] ([InvoiceId], [Amount], [Date]) VALUES (9010, 35.0000, CAST(N'2018-09-25T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Invoice] OFF
SET IDENTITY_INSERT [dbo].[LineItem] ON 

INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10501, 9000, 200, N'Game', 49.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10502, 9000, 96, N'Subscription Year', 60.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10503, 9000, 97, N'Subscription Year', 120.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10504, 9001, 2, N'PS4 Console', 299.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10505, 9001, 6, N'PS4 Controller', 40.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10506, 9001, 210, N'Game', 35.5600)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10507, 9002, 211, N'Game', 27.0600)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10508, 9002, 91, N'Magazine 3Months', 12.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10509, 9003, 201, N'Game', 53.1800)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10510, 9003, 95, N'Subscription1Month', 10.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10511, 9004, 3, N'XBox360 Console', 115.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10512, 9004, 209, N'Game', 19.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10513, 9004, 208, N'Game', 35.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10514, 9005, 206, N'Game', 38.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10515, 9005, 96, N'Subscription3Months', 15.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10516, 9006, 100, N'Subscription1Month', 14.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10519, 9006, 100, N'Subscription1Month', 14.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10520, 9007, 2, N'PS4 Console', 299.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10521, 9007, 212, N'Game', 59.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10522, 9008, 5, N'Nintendo Console', 299.0000)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10523, 9008, 93, N'Subscription1Month', 2.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10524, 9008, 11, N'Headset', 34.9900)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10525, 9008, 201, N'Game', 53.1800)
INSERT [dbo].[LineItem] ([LineItemId], [InvoiceId], [ProductId], [Description], [Amount]) VALUES (10526, 9010, 7, N'Controller', 35.0000)
SET IDENTITY_INSERT [dbo].[LineItem] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5001, 10000, 9000, 1, CAST(N'2018-09-01T00:00:00' AS SmallDateTime), 218.4900)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5002, 10001, 9001, 8, CAST(N'2018-09-07T00:00:00' AS SmallDateTime), 374.5600)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5003, 10002, 9002, NULL, CAST(N'2018-09-07T00:00:00' AS SmallDateTime), 39.0600)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5004, 10003, 9003, NULL, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), 64.1700)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5005, 10004, 9004, 3, CAST(N'2018-09-17T00:00:00' AS SmallDateTime), 153.8800)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5006, 10005, 9005, 5, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 53.9900)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5007, 10006, 9006, NULL, CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 29.9800)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5008, 10007, 9007, 9, CAST(N'2018-09-23T00:00:00' AS SmallDateTime), 358.9900)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5009, 10008, 9008, 1, CAST(N'2018-09-24T00:00:00' AS SmallDateTime), 298.9700)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5010, 10009, 9009, NULL, CAST(N'2018-09-25T00:00:00' AS SmallDateTime), 88.1700)
INSERT [dbo].[Receipt] ([ReceiptId], [AccountId], [InvoiceId], [RewardId], [ReceiptDate], [Amount]) VALUES (5011, 10010, 9010, NULL, CAST(N'2018-09-25T00:00:00' AS SmallDateTime), 35.0000)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10000, 5001, N'', 218.4900, 109)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10001, 5002, N'', 374.5600, 187)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10002, 5003, N'', 39.0600, 19)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10003, 5004, N'', 64.1700, 32)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10004, 5005, N'', 153.8800, 76)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10005, 5006, N'', 53.9900, 26)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10006, 5007, N'', 29.9800, 14)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10007, 5008, N'', 358.9900, 179)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10008, 5009, N'', 298.9700, 149)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10009, 5010, N'', 88.1700, 44)
INSERT [dbo].[RewardPoints] ([AccountId], [ReceiptId], [Description], [Amount], [PointsEarned]) VALUES (10010, 5011, N'', 35.0000, 17)
SET IDENTITY_INSERT [dbo].[Rewards] ON 

INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (1, N'Discount 5%', NULL, 50)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (2, N'Discount 10%', NULL, 100)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (3, N'Discount 20%', NULL, 200)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (4, N'Discount 50%', NULL, 500)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (5, N'$5 Gift Card', NULL, 60)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (6, N'$10 Gift Card', NULL, 120)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (7, N'$20 Gift Card', NULL, 240)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (8, N'Poster', N'Any poster', 60)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (9, N'Small Figure', NULL, 80)
INSERT [dbo].[Rewards] ([RewardId], [RewardName], [Description], [PointCost]) VALUES (10, N'Large Figure', NULL, 160)
SET IDENTITY_INSERT [dbo].[Rewards] OFF
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10000, 96, N'1Year', CAST(N'2018-09-01T00:00:00' AS SmallDateTime), 60.0000, 5001)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10000, 97, N'1Year', CAST(N'2018-09-01T00:00:00' AS SmallDateTime), 120.0000, 5001)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10002, 91, N'3Months', CAST(N'2018-09-07T00:00:00' AS SmallDateTime), 12.0000, 5003)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10003, 95, N'1Month', CAST(N'2018-09-15T00:00:00' AS SmallDateTime), 10.9900, 5004)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10005, 96, N'3Month', CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 15.0000, 5006)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10006, 100, N'1Month', CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 14.9900, 5007)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10006, 100, N'1Month', CAST(N'2018-09-21T00:00:00' AS SmallDateTime), 14.9900, 5007)
INSERT [dbo].[Subscriptions] ([AccountId], [SubscriptionId], [Plan], [StartDate], [Amount], [ReceiptId]) VALUES (10008, 93, N'1Month', CAST(N'2018-09-24T00:00:00' AS SmallDateTime), 2.9900, 5009)
SET IDENTITY_INSERT [dbo].[SubscriptionService] ON 

INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (90, N'PC Gamer', N'Magazine', 3.0000, N'1st Monday of the month')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (91, N'Game Informer', N'Magazine', 5.9900, N'3rd Tuesday of the month')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (92, N'Edge', N'Magazine', 4.9900, N'4th Monday of the month')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (93, N'Club Nintendo', N'Magazine', 2.9900, N'1st Tuesday of the month')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (94, N'PC Accelerator', N'Magazine', 4.9900, N'2nd Thursday of the month')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (95, N'Xbox Game Pass', N'Subscription', 10.9900, N'Renewal Date')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (96, N'PS Plus', N'Subscription', 5.9900, N'Renewal Date')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (97, N'PS Now', N'Subscription', 10.9900, N'Renewal Date')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (98, N'EA Access', N'Subscription', 4.9900, N'Renewal Date')
INSERT [dbo].[SubscriptionService] ([SubscriptionId], [Name], [Description], [Price], [ShipDate]) VALUES (100, N'World of Warcraft', N'Subscription', 14.9900, N'Renewal Date')
SET IDENTITY_INSERT [dbo].[SubscriptionService] OFF
USE [master]
GO
ALTER DATABASE [GameStoreManager] SET  READ_WRITE 
GO
