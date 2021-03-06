USE [master]
GO
/****** Object:  Database [ContactInfo]    Script Date: 4/16/2020 10:16:51 PM ******/
CREATE DATABASE [ContactInfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContactInfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ContactInfo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ContactInfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ContactInfo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ContactInfo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContactInfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContactInfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContactInfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContactInfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContactInfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContactInfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContactInfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContactInfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContactInfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContactInfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContactInfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContactInfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContactInfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContactInfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContactInfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContactInfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ContactInfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContactInfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContactInfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContactInfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContactInfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContactInfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContactInfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContactInfo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ContactInfo] SET  MULTI_USER 
GO
ALTER DATABASE [ContactInfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContactInfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContactInfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContactInfo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ContactInfo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ContactInfo]
GO
/****** Object:  User [sanjay]    Script Date: 4/16/2020 10:16:52 PM ******/
CREATE USER [sanjay] FOR LOGIN [sanjay] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sanjay]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/16/2020 10:16:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifyBy] [int] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (3, N'Sanjay', N'Kondawar', N'sanjay@gmail.com', N'1234567890', 0, 0, NULL, NULL, CAST(N'2020-04-16 16:18:13.160' AS DateTime), 1)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (4, N'Donald ', N'Trump', N'donald@us.com', N'0987654321', 1, 0, NULL, NULL, CAST(N'2020-04-16 05:21:46.250' AS DateTime), 1)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (5, N'Narendra', N'Modi', N'narendra@in.com', N'1234512345', 1, 0, NULL, NULL, NULL, 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (6, N'Benjamin', N'Netanyahu', N'b.n@israel.com', N'1231231230', 1, 0, NULL, NULL, CAST(N'2020-04-16 05:22:36.213' AS DateTime), 1)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (7, N'Boris ', N'Johnson', N'Johnson@uk.com', N'0987098098', 1, 0, NULL, NULL, NULL, 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (9, N'Justin', N' Trudeau', N'Justin@canada.com', N'1212121212', 1, 0, NULL, NULL, NULL, 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (10, N'Emmanuel ', N'Macron', N'Emmanuel@fr.com', N'6767676767', 1, 0, NULL, NULL, NULL, 0)
INSERT [dbo].[Contacts] ([Id], [FirstName], [LastName], [EmailId], [PhoneNumber], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifyBy]) VALUES (11, N'a', N'b', N'c', N'd', 1, 1, CAST(N'2020-04-16 05:45:20.430' AS DateTime), 1, CAST(N'2020-04-16 16:44:00.113' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
USE [master]
GO
ALTER DATABASE [ContactInfo] SET  READ_WRITE 
GO
