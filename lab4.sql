USE [Practica_3]
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[Visitas]
GO
/****** Object:  Table [dbo].[planta]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[planta]
GO
/****** Object:  Table [dbo].[PacienteCama]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[PacienteCama]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[Medico]
GO
/****** Object:  Table [dbo].[HistorialClinico]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[HistorialClinico]
GO
/****** Object:  Table [dbo].[Cama]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP TABLE [dbo].[Cama]
GO
USE [master]
GO
/****** Object:  Database [Practica_3]    Script Date: 08/04/2018 11:57:23 p. m. ******/
DROP DATABASE [Practica_3]
GO
/****** Object:  Database [Practica_3]    Script Date: 08/04/2018 11:57:23 p. m. ******/
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
/****** Object:  Table [dbo].[Cama]    Script Date: 08/04/2018 11:57:23 p. m. ******/
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
/****** Object:  Table [dbo].[HistorialClinico]    Script Date: 08/04/2018 11:57:23 p. m. ******/
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
/****** Object:  Table [dbo].[Medico]    Script Date: 08/04/2018 11:57:23 p. m. ******/
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
/****** Object:  Table [dbo].[Paciente]    Script Date: 08/04/2018 11:57:23 p. m. ******/
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
/****** Object:  Table [dbo].[PacienteCama]    Script Date: 08/04/2018 11:57:24 p. m. ******/
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
/****** Object:  Table [dbo].[planta]    Script Date: 08/04/2018 11:57:24 p. m. ******/
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
/****** Object:  Table [dbo].[Visitas]    Script Date: 08/04/2018 11:57:24 p. m. ******/
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
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (31298, 7)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (51876, 4)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (52146, 2)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (75589, 1)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (78541, 8)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (84526, 6)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (84632, 5)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (84997, 3)
INSERT [dbo].[Cama] ([id_cama], [numPiso]) VALUES (96325, 9)
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (79488, 6666, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (41258, 44444, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (58829, 48588, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (84586, 52145, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (99259, 54516, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (99858, 54548, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (54887, 77777, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (12365, 78945, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (88516, 85458, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HistorialClinico] ([idhistorialclinico], [numeroSeguro], [FechaEntrada], [FechaAlta]) VALUES (84845, 85479, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2002-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (70707, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (84579, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (78954, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (45123, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (89458, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (79452, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (79988, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (78945, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (84578, N'Daniel', N'Meza')
INSERT [dbo].[Medico] ([idMedico], [nombre], [apellido]) VALUES (45879, N'Daniel', N'Meza')
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (58989, N'FEYP000606HASRZD00', N'Franco', N'Escamilla', CAST(N'1991-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (12545, N'AACJ000606HDFLRN08', N'Pedro', N'Aleman', CAST(N'1992-02-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (13345, N'AECJ940429HCHRRS01', N'Fernando', N'Martinez', CAST(N'1993-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (12345, N'AIHP911101MCHRRR03', N'Alexis', N'Duran', CAST(N'1994-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (34445, N'BAVC840614HCHRLR04', N'Pedro', N'Almaguer', CAST(N'1995-05-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (82645, N'CAMJ900421HCHRRN05', N'Jesus', N'Martinez', CAST(N'1996-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (65456, N'CEMR880711HCHBRB00', N'Fernanda', N'Barroco', CAST(N'1997-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (84692, N'CEMR880711HCHBRB00', N'Allisson', N'De la Garza', CAST(N'1998-08-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Paciente] ([idNumeroSeguro], [curp], [nombre], [apellido], [fechaNacimiento]) VALUES (99999, N'CEJE930315HCHRRD06', N'Jose Juan', N'Elizondo', CAST(N'1999-09-29T00:00:00.000' AS DateTime))
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'2', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 11, 40)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'20', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 9, 40)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'3', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 14, 50)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'4', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 11, 18)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'5', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 19, 50)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'6', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 11, 40)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'7', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 17, 50)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'8', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 11, 40)
INSERT [dbo].[PacienteCama] ([id_PacienteCama], [fecha_Ingreso], [cama], [historialclinico]) VALUES (N'9', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 46, 50)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 1, 560)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'Daniel Eliseo', 1000, 200)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 43, 500)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 53, 500)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 35, 509)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 87, 508)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 94, 570)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 564, 560)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 66, 550)
INSERT [dbo].[planta] ([nombre], [idplanta], [numeroCamas]) VALUES (N'pedro', 75, 350)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'cancer', 91, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'sida', 19, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'cancer', 81, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'sida', 18, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'cancer', 71, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'sida', 61, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'sifilis', 51, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'Ezquizofrenia', 50, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'Gonorrea', 71, 50)
INSERT [dbo].[Visitas] ([fechaVisita], [Enfermedad], [Medico], [PacienteCama]) VALUES (CAST(N'2018-01-02T00:00:00.000' AS DateTime), N'cancer', 17, 50)
USE [master]
GO
ALTER DATABASE [Practica_3] SET  READ_WRITE 
GO
