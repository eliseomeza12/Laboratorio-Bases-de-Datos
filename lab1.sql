﻿USE [master]
GO
/****** Object:  Database [eliseo]    Script Date: 19/02/2018 09:14:37 p. m. ******/
DROP DATABASE [eliseo]
GO
/****** Object:  Database [eliseo]    Script Date: 19/02/2018 09:14:37 p. m. ******/
CREATE DATABASE [eliseo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'daniel', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\daniel.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'daniel_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\daniel_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eliseo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eliseo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eliseo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eliseo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eliseo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eliseo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eliseo] SET ARITHABORT OFF 
GO
ALTER DATABASE [eliseo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eliseo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [eliseo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eliseo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eliseo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eliseo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eliseo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eliseo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eliseo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eliseo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eliseo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eliseo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eliseo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eliseo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eliseo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eliseo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eliseo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eliseo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eliseo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eliseo] SET  MULTI_USER 
GO
ALTER DATABASE [eliseo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eliseo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eliseo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eliseo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [eliseo] SET  READ_WRITE 
GO