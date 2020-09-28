USE [master]
GO
/****** Object:  Database [Lds21]    Script Date: 29.09.2020 00:49:31 ******/
CREATE DATABASE [Lds21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lds21', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Lds21.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Lds21_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Lds21_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Lds21] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Lds21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Lds21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Lds21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Lds21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Lds21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Lds21] SET ARITHABORT OFF 
GO
ALTER DATABASE [Lds21] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Lds21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Lds21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Lds21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Lds21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Lds21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Lds21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Lds21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Lds21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Lds21] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Lds21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Lds21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Lds21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Lds21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Lds21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Lds21] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Lds21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Lds21] SET RECOVERY FULL 
GO
ALTER DATABASE [Lds21] SET  MULTI_USER 
GO
ALTER DATABASE [Lds21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Lds21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Lds21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Lds21] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Lds21]
GO
/****** Object:  User [hisvarlar]    Script Date: 29.09.2020 00:49:34 ******/
CREATE USER [hisvarlar] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 29.09.2020 00:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardTypeId] [int] NOT NULL,
	[CardName] [nvarchar](2) NOT NULL,
	[OrderNumber] [int] NOT NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardPoint]    Script Date: 29.09.2020 00:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameToCardId] [int] NOT NULL,
	[CardValue] [int] NOT NULL,
 CONSTRAINT [PK_CardPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 29.09.2020 00:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardType] [varchar](20) NOT NULL,
	[Symbol] [nvarchar](1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
 CONSTRAINT [PK_CardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 29.09.2020 00:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameToCard]    Script Date: 29.09.2020 00:49:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameToCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[CardId] [int] NOT NULL,
 CONSTRAINT [PK_GameToCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON 
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (1, 1, N'1', 1)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (2, 1, N'2', 2)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (3, 1, N'3', 3)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (4, 1, N'4', 4)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (5, 1, N'5', 5)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (6, 1, N'6', 6)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (7, 1, N'7', 7)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (8, 1, N'8', 8)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (9, 1, N'9', 9)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (10, 1, N'J', 10)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (11, 1, N'Q', 11)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (12, 1, N'K', 12)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (13, 1, N'A', 13)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (14, 1, N'*', 14)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (15, 2, N'1', 1)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (16, 2, N'2', 2)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (17, 2, N'3', 3)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (18, 2, N'4', 4)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (19, 2, N'5', 5)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (20, 2, N'6', 6)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (21, 2, N'7', 7)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (22, 2, N'8', 8)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (23, 2, N'9', 9)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (24, 2, N'J', 10)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (25, 2, N'Q', 11)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (26, 2, N'K', 12)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (27, 2, N'A', 13)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (28, 2, N'*', 14)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (29, 3, N'1', 1)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (30, 3, N'2', 2)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (31, 3, N'3', 3)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (32, 3, N'4', 4)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (33, 3, N'5', 5)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (34, 3, N'6', 6)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (35, 3, N'7', 7)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (36, 3, N'8', 8)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (37, 3, N'9', 9)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (38, 3, N'J', 10)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (39, 3, N'Q', 11)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (40, 3, N'K', 12)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (41, 3, N'A', 13)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (42, 3, N'*', 14)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (43, 4, N'1', 1)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (44, 4, N'2', 2)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (45, 4, N'3', 3)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (46, 4, N'4', 4)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (47, 4, N'5', 5)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (48, 4, N'6', 6)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (49, 4, N'7', 7)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (50, 4, N'8', 8)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (51, 4, N'9', 9)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (52, 4, N'J', 10)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (53, 4, N'Q', 11)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (54, 4, N'K', 12)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (55, 4, N'A', 13)
GO
INSERT [dbo].[Card] ([Id], [CardTypeId], [CardName], [OrderNumber]) VALUES (56, 4, N'*', 14)
GO
SET IDENTITY_INSERT [dbo].[Card] OFF
GO
SET IDENTITY_INSERT [dbo].[CardPoint] ON 
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (1, 1, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (2, 2, 2)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (3, 3, 3)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (4, 4, 4)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (5, 5, 5)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (6, 6, 6)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (7, 7, 7)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (8, 8, 8)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (9, 9, 9)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (10, 10, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (11, 11, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (12, 12, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (13, 13, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (14, 13, 11)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (15, 14, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (16, 15, 2)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (17, 16, 3)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (18, 17, 4)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (19, 18, 5)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (20, 19, 6)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (21, 20, 7)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (22, 21, 8)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (23, 22, 9)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (24, 23, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (25, 24, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (26, 25, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (27, 26, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (28, 26, 11)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (29, 27, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (30, 28, 2)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (31, 29, 3)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (32, 30, 4)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (33, 31, 5)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (34, 32, 6)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (35, 33, 7)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (36, 34, 8)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (37, 35, 9)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (38, 36, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (39, 37, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (40, 38, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (41, 39, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (42, 39, 11)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (43, 40, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (44, 41, 2)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (45, 42, 3)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (46, 43, 4)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (47, 44, 5)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (48, 45, 6)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (49, 46, 7)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (50, 47, 8)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (51, 48, 9)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (52, 49, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (53, 50, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (54, 51, 10)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (55, 52, 1)
GO
INSERT [dbo].[CardPoint] ([Id], [GameToCardId], [CardValue]) VALUES (56, 52, 11)
GO
SET IDENTITY_INSERT [dbo].[CardPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[CardType] ON 
GO
INSERT [dbo].[CardType] ([Id], [CardType], [Symbol], [OrderNumber]) VALUES (1, N'Kupa', N'♡', 1)
GO
INSERT [dbo].[CardType] ([Id], [CardType], [Symbol], [OrderNumber]) VALUES (2, N'Karo', N'♢', 2)
GO
INSERT [dbo].[CardType] ([Id], [CardType], [Symbol], [OrderNumber]) VALUES (3, N'Sinek', N'♣', 3)
GO
INSERT [dbo].[CardType] ([Id], [CardType], [Symbol], [OrderNumber]) VALUES (4, N'Maça', N'♠', 4)
GO
SET IDENTITY_INSERT [dbo].[CardType] OFF
GO
SET IDENTITY_INSERT [dbo].[Game] ON 
GO
INSERT [dbo].[Game] ([Id], [Name]) VALUES (1, N'Yirmibir')
GO
SET IDENTITY_INSERT [dbo].[Game] OFF
GO
SET IDENTITY_INSERT [dbo].[GameToCard] ON 
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (3, 1, 3)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (4, 1, 4)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (5, 1, 5)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (6, 1, 6)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (7, 1, 7)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (8, 1, 8)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (9, 1, 9)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (10, 1, 10)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (11, 1, 11)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (12, 1, 12)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (13, 1, 13)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (14, 1, 15)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (15, 1, 16)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (16, 1, 17)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (17, 1, 18)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (18, 1, 19)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (19, 1, 20)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (20, 1, 21)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (21, 1, 22)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (22, 1, 23)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (23, 1, 24)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (24, 1, 25)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (25, 1, 26)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (26, 1, 27)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (27, 1, 29)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (28, 1, 30)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (29, 1, 31)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (30, 1, 32)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (31, 1, 33)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (32, 1, 34)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (33, 1, 35)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (34, 1, 36)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (35, 1, 37)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (36, 1, 38)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (37, 1, 39)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (38, 1, 40)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (39, 1, 41)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (40, 1, 43)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (41, 1, 44)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (42, 1, 45)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (43, 1, 46)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (44, 1, 47)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (45, 1, 48)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (46, 1, 49)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (47, 1, 50)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (48, 1, 51)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (49, 1, 52)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (50, 1, 53)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (51, 1, 54)
GO
INSERT [dbo].[GameToCard] ([Id], [GameId], [CardId]) VALUES (52, 1, 55)
GO
SET IDENTITY_INSERT [dbo].[GameToCard] OFF
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_CardType] FOREIGN KEY([CardTypeId])
REFERENCES [dbo].[CardType] ([Id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_CardType]
GO
ALTER TABLE [dbo].[CardPoint]  WITH CHECK ADD  CONSTRAINT [FK_CardPoint_GameToCard] FOREIGN KEY([GameToCardId])
REFERENCES [dbo].[GameToCard] ([Id])
GO
ALTER TABLE [dbo].[CardPoint] CHECK CONSTRAINT [FK_CardPoint_GameToCard]
GO
ALTER TABLE [dbo].[GameToCard]  WITH CHECK ADD  CONSTRAINT [FK_GameToCard_Card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[GameToCard] CHECK CONSTRAINT [FK_GameToCard_Card]
GO
ALTER TABLE [dbo].[GameToCard]  WITH CHECK ADD  CONSTRAINT [FK_GameToCard_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
GO
ALTER TABLE [dbo].[GameToCard] CHECK CONSTRAINT [FK_GameToCard_Game]
GO
USE [master]
GO
ALTER DATABASE [Lds21] SET  READ_WRITE 
GO
