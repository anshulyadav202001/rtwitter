USE [master]
GO
/****** Object:  Database [R-Twitter]    Script Date: 5/4/2018 2:43:16 PM ******/
CREATE DATABASE [R-Twitter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'R-Twitter', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\R-Twitter.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'R-Twitter_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\R-Twitter_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [R-Twitter] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [R-Twitter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [R-Twitter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [R-Twitter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [R-Twitter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [R-Twitter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [R-Twitter] SET ARITHABORT OFF 
GO
ALTER DATABASE [R-Twitter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [R-Twitter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [R-Twitter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [R-Twitter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [R-Twitter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [R-Twitter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [R-Twitter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [R-Twitter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [R-Twitter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [R-Twitter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [R-Twitter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [R-Twitter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [R-Twitter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [R-Twitter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [R-Twitter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [R-Twitter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [R-Twitter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [R-Twitter] SET RECOVERY FULL 
GO
ALTER DATABASE [R-Twitter] SET  MULTI_USER 
GO
ALTER DATABASE [R-Twitter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [R-Twitter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [R-Twitter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [R-Twitter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [R-Twitter] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'R-Twitter', N'ON'
GO
USE [R-Twitter]
GO
/****** Object:  Table [dbo].[Follow]    Script Date: 5/4/2018 2:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Follow](
	[Follow_ID] [int] IDENTITY(1,1) NOT NULL,
	[MyID] [int] NOT NULL,
	[Follow_UserID] [int] NULL,
	[Follow_DT] [datetime] NULL,
 CONSTRAINT [PK_Follow] PRIMARY KEY CLUSTERED 
(
	[Follow_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tweet]    Script Date: 5/4/2018 2:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tweet](
	[TweetID] [int] IDENTITY(1,1) NOT NULL,
	[Tweet_UserID] [int] NULL,
	[Tweet] [text] NULL,
	[Tweet_Date] [datetime] NULL CONSTRAINT [DF_Tweet_Tweet_Date]  DEFAULT (getdate()),
 CONSTRAINT [PK_Tweet] PRIMARY KEY CLUSTERED 
(
	[TweetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Registration]    Script Date: 5/4/2018 2:43:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Registration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](500) NULL,
	[Password] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL CONSTRAINT [DF_User_Registration_CreatedOn]  DEFAULT (getdate()),
	[ImageName] [varchar](50) NULL,
 CONSTRAINT [PK_User_Registration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Follow] ON 

INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (1, 1, 6, NULL)
INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (2, 1, 3, NULL)
INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (3, 1, 7, NULL)
INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (4, 1, 2, NULL)
INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (5, 4, 1, NULL)
INSERT [dbo].[Follow] ([Follow_ID], [MyID], [Follow_UserID], [Follow_DT]) VALUES (6, 5, 1, NULL)
SET IDENTITY_INSERT [dbo].[Follow] OFF
SET IDENTITY_INSERT [dbo].[Tweet] ON 

INSERT [dbo].[Tweet] ([TweetID], [Tweet_UserID], [Tweet], [Tweet_Date]) VALUES (1, 1, N'This is a cool new visualization of shipping routes. I read a great book about this recently...', CAST(N'2013-10-06 16:38:05.353' AS DateTime))
INSERT [dbo].[Tweet] ([TweetID], [Tweet_UserID], [Tweet], [Tweet_Date]) VALUES (2, 1, N'VBA Developer and Programmer at FieldGlobal - Mumbai Area, India...', CAST(N'2013-10-06 16:38:38.877' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tweet] OFF
SET IDENTITY_INSERT [dbo].[User_Registration] ON 

INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (1, N'Rahul', N'4rahulsaxena@gmail.com', N'rahul', CAST(N'2013-10-06 11:04:18.150' AS DateTime), N'1.jpg')
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (2, N'Ayush', N'ayush@gmail.com', N'ayush', CAST(N'2013-10-06 11:05:00.420' AS DateTime), NULL)
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (3, N'Priya', N'priya@gmail.com', N'priya', CAST(N'2013-10-06 11:05:14.293' AS DateTime), N'3.jpg')
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (4, N'Sonia', N'sonia@gmail.com', N'sonia', CAST(N'2013-10-06 11:05:31.633' AS DateTime), N'4.jpg')
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (5, N'Sahil', N'sahil@gmail.com', N'sahil', CAST(N'2013-10-06 11:05:51.630' AS DateTime), N'5.jpg')
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (6, N'Priyanka', N'priyanka@gmail.com', N'priyanka', CAST(N'2013-10-06 11:06:10.790' AS DateTime), N'6.jpg')
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (7, N'shakshi', N'shakshi@gmail.com', N'shakshi', CAST(N'2013-10-06 11:06:49.687' AS DateTime), NULL)
INSERT [dbo].[User_Registration] ([ID], [Name], [Email], [Password], [CreatedOn], [ImageName]) VALUES (8, N'aman', N'aman@gmail.com', N'aman', CAST(N'2013-10-06 11:07:29.330' AS DateTime), N'8.jpg')
SET IDENTITY_INSERT [dbo].[User_Registration] OFF
USE [master]
GO
ALTER DATABASE [R-Twitter] SET  READ_WRITE 
GO
