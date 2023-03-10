USE [master]
GO
/****** Object:  Database [gorsel_final]    Script Date: 2.01.2023 22:37:57 ******/
CREATE DATABASE [gorsel_final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gorsel_final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.POSTAR\MSSQL\DATA\gorsel_final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gorsel_final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.POSTAR\MSSQL\DATA\gorsel_final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [gorsel_final] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gorsel_final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gorsel_final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gorsel_final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gorsel_final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gorsel_final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gorsel_final] SET ARITHABORT OFF 
GO
ALTER DATABASE [gorsel_final] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gorsel_final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gorsel_final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gorsel_final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gorsel_final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gorsel_final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gorsel_final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gorsel_final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gorsel_final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gorsel_final] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gorsel_final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gorsel_final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gorsel_final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gorsel_final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gorsel_final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gorsel_final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gorsel_final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gorsel_final] SET RECOVERY FULL 
GO
ALTER DATABASE [gorsel_final] SET  MULTI_USER 
GO
ALTER DATABASE [gorsel_final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gorsel_final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gorsel_final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gorsel_final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gorsel_final] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gorsel_final] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'gorsel_final', N'ON'
GO
ALTER DATABASE [gorsel_final] SET QUERY_STORE = OFF
GO
USE [gorsel_final]
GO
/****** Object:  Table [dbo].[kategoribilgileri]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoribilgileri](
	[kategori] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markabilgileri]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markabilgileri](
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[müşteri]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[müşteri](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satis]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satis](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[barkodno] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[toplamfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sepet]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[tc] [nvarchar](50) NOT NULL,
	[adsoyad] [nvarchar](50) NOT NULL,
	[telefon] [nvarchar](50) NOT NULL,
	[barkodno] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[toplamfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 2.01.2023 22:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[barkodno] [nvarchar](50) NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[alisfiyati] [decimal](18, 2) NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Gida')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Içecek')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'gida')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'aksesuar')
GO
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Gida', N'eti')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Gida', N'ülker')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Içecek', N'Coca-Cola')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Içecek', N'Fanta')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Içecek', N'Erikli')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Içecek', N'Damla')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'aksesuar', N'rolex')
GO
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'', N'', N'', N'', N'')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'847579893', N'mert yılmaz', N'656565', N'uşak', N'mert.yılmaz@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'45454545', N'burak kan', N'54656565', N'konya', N'burakkan@gmail.com')
INSERT [dbo].[müşteri] ([tc], [adsoyad], [telefon], [adres], [email]) VALUES (N'6464646644', N'rıza taş', N'454545454', N'izmir', N'rıza.565@gmail.com')
GO
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'101', N'Bisküvi', 3, CAST(7.00 AS Decimal(18, 2)), CAST(21.00 AS Decimal(18, 2)), N'29.12.2022 15:01:13')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'103', N'fffff', 2, CAST(6.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'29.12.2022 15:01:13')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'103', N'su', 1, CAST(6.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'29.12.2022 15:03:41')
INSERT [dbo].[satis] ([tc], [adsoyad], [telefon], [barkodno], [urunadi], [miktari], [satisfiyati], [toplamfiyati], [tarih]) VALUES (N'', N'', N'', N'44', N'şeker', 1, CAST(4.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), N'31.12.2022 13:32:28')
GO
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'101', N'Gida', N'eti', N'Bisküvit', 70, CAST(4.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), N'28.12.2022 20:58:47')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'103', N'Içecek', N'Erikli', N'su', 4, CAST(3.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'29.12.2022 14:59:47')
GO
USE [master]
GO
ALTER DATABASE [gorsel_final] SET  READ_WRITE 
GO
