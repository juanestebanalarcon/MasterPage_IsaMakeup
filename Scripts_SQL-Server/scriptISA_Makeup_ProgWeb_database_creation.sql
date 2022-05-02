USE [master]
GO

/****** Object:  Database [ISA_Makeup_ProgWeb]    Script Date: 4/18/2021 9:55:36 PM ******/
CREATE DATABASE [ISA_Makeup_ProgWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ISA_Makeup_ProgWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ISA_Makeup_ProgWeb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ISA_Makeup_ProgWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ISA_Makeup_ProgWeb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ISA_Makeup_ProgWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ARITHABORT OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET  MULTI_USER 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ISA_Makeup_ProgWeb] SET  READ_WRITE 
GO

