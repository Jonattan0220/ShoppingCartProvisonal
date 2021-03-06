USE [master]
GO
/****** Object:  Database [ShoppingCartAda]    Script Date: 29/06/2022 22:42:53 ******/
CREATE DATABASE [ShoppingCartAda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCartAda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoppingCartAda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoppingCartAda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShoppingCartAda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShoppingCartAda] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCartAda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCartAda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCartAda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCartAda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCartAda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCartAda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCartAda] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCartAda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCartAda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCartAda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCartAda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoppingCartAda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShoppingCartAda] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShoppingCartAda] SET QUERY_STORE = OFF
GO
USE [ShoppingCartAda]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Identification] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](50) NOT NULL,
	[IdentificationTypeId] [int] NOT NULL,
	[UserAddressProvinceId] [int] NOT NULL,
	[UserAddressCityId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[ModificationDate] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificationTypes]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificationTypes](
	[IdentificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_IdentificationTypes] PRIMARY KEY CLUSTERED 
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemId] [int] IDENTITY(1,1) NOT NULL,
	[TotalQuantity] [bigint] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ProductItemId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItemBrands]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItemBrands](
	[ProductItemBrandId] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[ModificationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductItemBrands] PRIMARY KEY CLUSTERED 
(
	[ProductItemBrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItems]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItems](
	[ProductItemId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[Sold] [bigint] NOT NULL,
	[Available] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductItemBrandId] [int] NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[ModificationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductItems] PRIMARY KEY CLUSTERED 
(
	[ProductItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[ModificationDate] [datetime2](7) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[ModificationDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddressCities]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddressCities](
	[UserAddressCityId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[UserAddressProvinceId] [int] NOT NULL,
 CONSTRAINT [PK_UserAddressCities] PRIMARY KEY CLUSTERED 
(
	[UserAddressCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddressProvinces]    Script Date: 29/06/2022 22:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddressProvinces](
	[UserAddressProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAddressProvinces] PRIMARY KEY CLUSTERED 
(
	[UserAddressProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220625024633_001', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220625035147_002', N'6.0.6')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8af004d2-877a-4a6e-9b5e-98b5e43a6b65', N'Client', N'CLIENT', N'b3947036-1cb7-4276-aafd-0d1943781553')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c65770cf-7b5a-4aa3-9f6f-d13df1c34212', N'Admin', N'ADMIN', N'6d424397-2de9-4000-adbc-f42d602b9423')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a3d87e0-011b-435c-aaff-9036ddbe8dd0', N'8af004d2-877a-4a6e-9b5e-98b5e43a6b65')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8e80e0b0-a0d5-40c3-97b7-3bf123334175', N'8af004d2-877a-4a6e-9b5e-98b5e43a6b65')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0478b56-e50a-420b-a682-6062d1376cd2', N'c65770cf-7b5a-4aa3-9f6f-d13df1c34212')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Identification], [Address], [PostalCode], [IdentificationTypeId], [UserAddressProvinceId], [UserAddressCityId], [CreationDate], [ModificationDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3a3d87e0-011b-435c-aaff-9036ddbe8dd0', N'Alejandra', N'Martínez', N'10963652549', N'Calle 7 45-76', N'561493', 1, 3, 5, CAST(N'2022-06-27T21:12:45.2090141' AS DateTime2), CAST(N'2022-06-27T21:12:45.2090460' AS DateTime2), N'alejandra.martinez@gmail.com', N'ALEJANDRA.MARTINEZ@GMAIL.COM', N'alejandra.martinez@gmail.com', N'ALEJANDRA.MARTINEZ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI62Dm6T6nNTRmA19Ln12xlNZZJmmvtEiry+koFmTLKCF9F0nwUofCEQaHk7Ne6y0w==', N'KPQTZAYTWYATH7BIETBQ4O2FU2UBQXIS', N'65cb56f5-3d8a-46b5-bc91-88be5954740a', N'3136574865', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Identification], [Address], [PostalCode], [IdentificationTypeId], [UserAddressProvinceId], [UserAddressCityId], [CreationDate], [ModificationDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8e80e0b0-a0d5-40c3-97b7-3bf123334175', N'María', N'Perez', N'1098652365', N'Calle 3 34-20', N'153629', 1, 5, 9, CAST(N'2022-06-25T00:08:07.6907871' AS DateTime2), CAST(N'2022-06-25T00:08:07.6908111' AS DateTime2), N'maria.perez@gmail.com', N'MARIA.PEREZ@GMAIL.COM', N'maria.perez@gmail.com', N'MARIA.PEREZ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHvsze0H1n7XNefDBpwEhqMfCNb7oxo+qayvIW4l08dLiEAh9YVM+iCO1iirsjTQzw==', N'YMPEICO5O5F2GDZIYPG734E2E7YVVS6J', N'73374973-5cfc-42e8-a77f-ba71e02c372b', N'3025364569', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Identification], [Address], [PostalCode], [IdentificationTypeId], [UserAddressProvinceId], [UserAddressCityId], [CreationDate], [ModificationDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd0478b56-e50a-420b-a682-6062d1376cd2', N'Ronald', N'Vargas', N'10954563256', N'Calle 4 34-20', N'153629', 1, 2, 3, CAST(N'2022-06-27T21:06:58.5578361' AS DateTime2), CAST(N'2022-06-27T21:06:58.5578591' AS DateTime2), N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAJ2UNS0VzCc+utQwplVCB1VG2q2jEgDJ8sM/BjiS+e1FBYLqjLgaVVjv05jRQJh0w==', N'WCFPZZQVBZKSRHTI55JAOF5M5ZAADYYM', N'782ab4a0-f2fe-4b52-a0af-9794f922d6e0', N'3163658965', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[IdentificationTypes] ON 

INSERT [dbo].[IdentificationTypes] ([IdentificationTypeId], [Type]) VALUES (1, N'CC')
INSERT [dbo].[IdentificationTypes] ([IdentificationTypeId], [Type]) VALUES (2, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[IdentificationTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductItemBrands] ON 

INSERT [dbo].[ProductItemBrands] ([ProductItemBrandId], [Brand], [Description], [CreationDate], [ModificationDate]) VALUES (1, N'LG', N'LG', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItemBrands] ([ProductItemBrandId], [Brand], [Description], [CreationDate], [ModificationDate]) VALUES (2, N'Samsung ', N'Samsung', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItemBrands] ([ProductItemBrandId], [Brand], [Description], [CreationDate], [ModificationDate]) VALUES (3, N'Xiaomi', N'Xiaomi', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductItemBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductItems] ON 

INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (1, N'Nevera LG No Frost 395L VT40WGPX.APZCCLM', N'Nevera LG No Frost 395L VT40WGPX.APZCCLM', 2799920, 20, 5, 15, 1, 1, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (3, N'Nevera No Frost SAMSUNG Europea 307 Lts RB30N4160B', N'Nevera No Frost SAMSUNG Europea 307 Lts RB30N4160B', 2697353, 30, 10, 20, 1, 2, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (4, N'Lavadora LG carga superior 18 kg WT18DSBP.ASFECOL', N'Lavadora LG carga superior 18 kg WT18DSBP.ASFECOL', 2040423, 25, 5, 20, 3, 1, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (7, N'Lavadora SAMSUNG Carga Superior 19 kg', N'Lavadora SAMSUNG Carga Superior 19 kg', 2229048, 50, 20, 30, 3, 2, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (8, N'Celular SAMSUNG Galaxy S21 256 GB', N'Celular SAMSUNG Galaxy S21 256 GB', 3899900, 40, 20, 20, 7, 2, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (9, N'Celular Xiaomi 11T Pro 256Gb 8Gb Ram Gris', N'Celular Xiaomi 11T Pro 256Gb 8Gb Ram Gris', 2178900, 35, 20, 15, 7, 3, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (10, N'Televisor LG 55 Pulgadas Uhd4K Smart Tv', N'Televisor LG 55 Pulgadas Uhd4K Smart Tv', 4299900, 45, 20, 25, 8, 1, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductItems] ([ProductItemId], [Name], [Description], [Price], [Quantity], [Sold], [Available], [ProductId], [ProductItemBrandId], [CreationDate], [ModificationDate]) VALUES (11, N'Televisor SAMSUNG 60 Pulgadas Uhd4K', N'Televisor SAMSUNG 60 Pulgadas Uhd4K', 2299900, 25, 15, 10, 8, 2, CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Description], [CreationDate], [ModificationDate], [ProductTypeId]) VALUES (1, N'Neveras', N'Neveras', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [CreationDate], [ModificationDate], [ProductTypeId]) VALUES (3, N'Lavadoras', N'Lavadoras', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [CreationDate], [ModificationDate], [ProductTypeId]) VALUES (7, N'Celulares', N'Celulares', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), 2)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [CreationDate], [ModificationDate], [ProductTypeId]) VALUES (8, N'Televisores', N'Televisores', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([ProductTypeId], [Type], [CreationDate], [ModificationDate]) VALUES (1, N'Electrodomésticos', CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2), CAST(N'2022-06-26T15:47:48.2566667' AS DateTime2))
INSERT [dbo].[ProductTypes] ([ProductTypeId], [Type], [CreationDate], [ModificationDate]) VALUES (2, N'Tecnología', CAST(N'2022-06-26T15:48:16.1600000' AS DateTime2), CAST(N'2022-06-26T15:48:16.1600000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAddressCities] ON 

INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (1, N'Soacha', 1)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (2, N'Medina', 1)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (3, N'Medellín', 2)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (4, N'Bello', 2)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (5, N'Cali', 3)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (6, N'Buga', 3)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (7, N'Barranquilla', 4)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (8, N'Sabanalarga', 4)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (9, N'Bucaramanga', 5)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (10, N'Barrancabermeja', 5)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (11, N'Cúcuta', 6)
INSERT [dbo].[UserAddressCities] ([UserAddressCityId], [City], [UserAddressProvinceId]) VALUES (12, N'Pamplona', 6)
SET IDENTITY_INSERT [dbo].[UserAddressCities] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAddressProvinces] ON 

INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (1, N'Cundinamarca')
INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (2, N'Antioquia')
INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (3, N'Valle del Cauca')
INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (4, N'Atlántico')
INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (5, N'Santander')
INSERT [dbo].[UserAddressProvinces] ([UserAddressProvinceId], [Province]) VALUES (6, N'Norte de Santander')
SET IDENTITY_INSERT [dbo].[UserAddressProvinces] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 29/06/2022 22:42:54 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_IdentificationTypeId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_IdentificationTypeId] ON [dbo].[AspNetUsers]
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_UserAddressCityId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_UserAddressCityId] ON [dbo].[AspNetUsers]
(
	[UserAddressCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_UserAddressProvinceId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_UserAddressProvinceId] ON [dbo].[AspNetUsers]
(
	[UserAddressProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 29/06/2022 22:42:54 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductItemId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductItemId] ON [dbo].[OrderItems]
(
	[ProductItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_ProductId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_ProductId] ON [dbo].[ProductItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_ProductItemBrandId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_ProductItemBrandId] ON [dbo].[ProductItems]
(
	[ProductItemBrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ProductTypeId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_Products_ProductTypeId] ON [dbo].[Products]
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAddressCities_UserAddressProvinceId]    Script Date: 29/06/2022 22:42:54 ******/
CREATE NONCLUSTERED INDEX [IX_UserAddressCities_UserAddressProvinceId] ON [dbo].[UserAddressCities]
(
	[UserAddressProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_IdentificationTypes_IdentificationTypeId] FOREIGN KEY([IdentificationTypeId])
REFERENCES [dbo].[IdentificationTypes] ([IdentificationTypeId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_IdentificationTypes_IdentificationTypeId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_UserAddressCities_UserAddressCityId] FOREIGN KEY([UserAddressCityId])
REFERENCES [dbo].[UserAddressCities] ([UserAddressCityId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_UserAddressCities_UserAddressCityId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_UserAddressProvinces_UserAddressProvinceId] FOREIGN KEY([UserAddressProvinceId])
REFERENCES [dbo].[UserAddressProvinces] ([UserAddressProvinceId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_UserAddressProvinces_UserAddressProvinceId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([ProductItemId])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductItems_ProductItemBrands_ProductItemBrandId] FOREIGN KEY([ProductItemBrandId])
REFERENCES [dbo].[ProductItemBrands] ([ProductItemBrandId])
GO
ALTER TABLE [dbo].[ProductItems] CHECK CONSTRAINT [FK_ProductItems_ProductItemBrands_ProductItemBrandId]
GO
ALTER TABLE [dbo].[ProductItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductItems] CHECK CONSTRAINT [FK_ProductItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes_ProductTypeId] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypes] ([ProductTypeId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductTypes_ProductTypeId]
GO
ALTER TABLE [dbo].[UserAddressCities]  WITH CHECK ADD  CONSTRAINT [FK_UserAddressCities_UserAddressProvinces_UserAddressProvinceId] FOREIGN KEY([UserAddressProvinceId])
REFERENCES [dbo].[UserAddressProvinces] ([UserAddressProvinceId])
GO
ALTER TABLE [dbo].[UserAddressCities] CHECK CONSTRAINT [FK_UserAddressCities_UserAddressProvinces_UserAddressProvinceId]
GO
USE [master]
GO
ALTER DATABASE [ShoppingCartAda] SET  READ_WRITE 
GO
