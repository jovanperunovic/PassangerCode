USE [master]
GO
/****** Object:  Database [PassangerCode]    Script Date: 7/12/2022 2:28:12 PM ******/
CREATE DATABASE [PassangerCode]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PassangerCode', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PassangerCode.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PassangerCode_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PassangerCode_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PassangerCode] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PassangerCode].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PassangerCode] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PassangerCode] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PassangerCode] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PassangerCode] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PassangerCode] SET ARITHABORT OFF 
GO
ALTER DATABASE [PassangerCode] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PassangerCode] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PassangerCode] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PassangerCode] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PassangerCode] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PassangerCode] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PassangerCode] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PassangerCode] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PassangerCode] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PassangerCode] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PassangerCode] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PassangerCode] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PassangerCode] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PassangerCode] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PassangerCode] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PassangerCode] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PassangerCode] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PassangerCode] SET RECOVERY FULL 
GO
ALTER DATABASE [PassangerCode] SET  MULTI_USER 
GO
ALTER DATABASE [PassangerCode] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PassangerCode] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PassangerCode] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PassangerCode] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PassangerCode] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PassangerCode', N'ON'
GO
ALTER DATABASE [PassangerCode] SET QUERY_STORE = OFF
GO
USE [PassangerCode]
GO
/****** Object:  Table [dbo].[Passanger]    Script Date: 7/12/2022 2:28:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passanger](
	[PassangerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Gender] [bit] NOT NULL,
	[Age] [int] NOT NULL,
	[Origin] [bit] NOT NULL,
 CONSTRAINT [PK_Passanger] PRIMARY KEY CLUSTERED 
(
	[PassangerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 7/12/2022 2:28:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketID] [int] IDENTITY(1,1) NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[Meal] [nvarchar](50) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[PassangerID] [int] NOT NULL,
	[TicketCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Passanger] ON 

INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (1, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 24, 1)
INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (2, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 2, 1)
INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (3, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 3, 1)
INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (4, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 3, 1)
INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (5, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 54, 1)
INSERT [dbo].[Passanger] ([PassangerID], [FirstName], [LastName], [Email], [Gender], [Age], [Origin]) VALUES (6, N'Jovan', N'Perunović', N'jovanperunovic1@gmail.com', 1, 4, 1)
SET IDENTITY_INSERT [dbo].[Passanger] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (1, N'UK Destinations', CAST(N'2022-07-12T13:47:44.057' AS DateTime), N'European Meal', N'Economy Class', 1, N'-EUaXR')
INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (2, N'UK Destinations', CAST(N'2022-07-12T13:51:09.663' AS DateTime), N'European Meal', N'First Class', 2, N'-EUaxP')
INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (3, N'UK Destinations', CAST(N'2022-07-12T13:52:04.880' AS DateTime), N'Asian Meal', N'First Class', 3, N'-EUaxhP')
INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (4, N'UK Destinations', CAST(N'2022-07-12T13:52:41.793' AS DateTime), N'European Meal', N'First Class', 4, N'-EUaxP')
INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (5, N'UK Destinations', CAST(N'2022-07-12T14:01:15.947' AS DateTime), N'European Meal', N'First Class', 5, N'-EUaXP')
INSERT [dbo].[Ticket] ([TicketID], [Destination], [Time], [Meal], [Class], [PassangerID], [TicketCode]) VALUES (6, N'UK Destinations', CAST(N'2022-07-12T14:14:53.630' AS DateTime), N'European Meal', N'First Class', 6, N'-EUaxP')
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Passanger] FOREIGN KEY([PassangerID])
REFERENCES [dbo].[Passanger] ([PassangerID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Passanger]
GO
USE [master]
GO
ALTER DATABASE [PassangerCode] SET  READ_WRITE 
GO
