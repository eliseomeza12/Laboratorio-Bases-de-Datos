USE [Practica_3]
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[Visitas]
GO
/****** Object:  Table [dbo].[planta]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[planta]
GO
/****** Object:  Table [dbo].[PacienteCama]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[PacienteCama]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[Medico]
GO
/****** Object:  Table [dbo].[HistorialClinico]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[HistorialClinico]
GO
/****** Object:  Table [dbo].[Cama]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP TABLE [dbo].[Cama]
GO
USE [master]
GO
/****** Object:  Database [Practica_3]    Script Date: 08/04/2018 09:58:57 p. m. ******/
DROP DATABASE [Practica_3]
GO
/****** Object:  Database [Practica_3]    Script Date: 08/04/2018 09:58:57 p. m. ******/
CREATE DATABASE [Practica_3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica_3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica_3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica_3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica_3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica_3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica_3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica_3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica_3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica_3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica_3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica_3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica_3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Practica_3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica_3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica_3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica_3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica_3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica_3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica_3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica_3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica_3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica_3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica_3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica_3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica_3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica_3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica_3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica_3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica_3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica_3] SET  MULTI_USER 
GO
ALTER DATABASE [Practica_3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica_3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica_3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica_3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica_3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica_3] SET QUERY_STORE = OFF
GO
USE [Practica_3]
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
USE [Practica_3]
GO
/****** Object:  Table [dbo].[Cama]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cama](
	[id_cama] [int] NOT NULL,
	[numPiso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialClinico]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialClinico](
	[idhistorialclinico] [int] NULL,
	[numeroSeguro] [int] NOT NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaAlta] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[numeroSeguro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[idMedico] [int] NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[idNumeroSeguro] [int] NULL,
	[curp] [varchar](18) NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[fechaNacimiento] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteCama]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteCama](
	[id_PacienteCama] [varchar](50) NOT NULL,
	[fecha_Ingreso] [datetime] NULL,
	[cama] [int] NULL,
	[historialclinico] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_PacienteCama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planta]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planta](
	[nombre] [varchar](50) NULL,
	[idplanta] [int] NULL,
	[numeroCamas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 08/04/2018 09:58:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitas](
	[fechaVisita] [datetime] NULL,
	[Enfermedad] [varchar](50) NULL,
	[Medico] [int] NULL,
	[PacienteCama] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Practica_3] SET  READ_WRITE 
GO
