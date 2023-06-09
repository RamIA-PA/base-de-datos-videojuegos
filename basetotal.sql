USE [master]
GO
/****** Object:  Database [Bd_Tran]    Script Date: 12/12/2021 2:27:50 ******/
CREATE DATABASE [Bd_Tran]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bd_Tran', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Bd_Tran.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bd_Tran_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Bd_Tran_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bd_Tran] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bd_Tran].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bd_Tran] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bd_Tran] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bd_Tran] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bd_Tran] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bd_Tran] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bd_Tran] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Bd_Tran] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Bd_Tran] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bd_Tran] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bd_Tran] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bd_Tran] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bd_Tran] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bd_Tran] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bd_Tran] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bd_Tran] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bd_Tran] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Bd_Tran] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bd_Tran] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bd_Tran] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bd_Tran] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bd_Tran] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bd_Tran] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bd_Tran] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bd_Tran] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bd_Tran] SET  MULTI_USER 
GO
ALTER DATABASE [Bd_Tran] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bd_Tran] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bd_Tran] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bd_Tran] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Bd_Tran]
GO
/****** Object:  User [Ram]    Script Date: 12/12/2021 2:27:50 ******/
CREATE USER [Ram] FOR LOGIN [Ram] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Paco]    Script Date: 12/12/2021 2:27:50 ******/
CREATE USER [Paco] FOR LOGIN [Paco] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Jose]    Script Date: 12/12/2021 2:27:50 ******/
CREATE USER [Jose] FOR LOGIN [Jose] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [ramm]    Script Date: 12/12/2021 2:27:50 ******/
CREATE ROLE [ramm]
GO
/****** Object:  DatabaseRole [becado]    Script Date: 12/12/2021 2:27:50 ******/
CREATE ROLE [becado]
GO
/****** Object:  DatabaseRole [adminj]    Script Date: 12/12/2021 2:27:50 ******/
CREATE ROLE [adminj]
GO
ALTER ROLE [ramm] ADD MEMBER [Ram]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Ram]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Ram]
GO
ALTER ROLE [becado] ADD MEMBER [Paco]
GO
ALTER ROLE [adminj] ADD MEMBER [Jose]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [int] NOT NULL,
	[cliente] [varchar](20) NOT NULL,
	[contraseña] [varchar](20) NOT NULL,
	[correo] [varchar](20) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[compras]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compras](
	[id] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_juegos] [int] NOT NULL,
	[fechac] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[juegos]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[juegos](
	[id_juego] [int] NOT NULL,
	[juegos] [varchar](30) NOT NULL,
	[inventario] [varchar](20) NOT NULL,
	[insignias] [varchar](20) NOT NULL,
	[precio] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_juego] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trans]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trans](
	[fecha] [datetime] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_juegos] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[especialidad] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[chequecoma]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[chequecoma]
as 
SELECT DISTINCT dbo.clientes.correo, dbo.juegos.juegos AS [Juego Comprado], dbo.juegos.precio, dbo.usuarios.nombre AS Especialista, dbo.usuarios.especialidad AS Puesto, dbo.trans.fecha AS [Dia de comprobacion]
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans
WHERE        (dbo.usuarios.especialidad = 'becario')


GO
/****** Object:  View [dbo].[chequeocompra]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[chequeocompra] 
as
SELECT DISTINCT dbo.clientes.cliente, dbo.juegos.juegos AS [Juego Comprado], dbo.compras.fechac AS Dia, dbo.usuarios.nombre AS Vendedor
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans


GO
/****** Object:  View [dbo].[REGUS]    Script Date: 12/12/2021 2:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[REGUS]
as
SELECT DISTINCT dbo.usuarios.nombre AS Encargado, dbo.usuarios.especialidad AS Encargo, dbo.clientes.correo AS [Correo agregado], dbo.clientes.fecha_registro AS [Fecha de registro de Usuario]
FROM            dbo.clientes INNER JOIN
                         dbo.compras ON dbo.clientes.id_cliente = dbo.compras.id_cliente INNER JOIN
                         dbo.juegos ON dbo.compras.id_juegos = dbo.juegos.id_juego INNER JOIN
                         dbo.usuarios ON dbo.compras.id_usuario = dbo.usuarios.id_usuario CROSS JOIN
                         dbo.trans
WHERE        (dbo.usuarios.especialidad = 'tablas')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [inusu2]    Script Date: 12/12/2021 2:27:51 ******/
CREATE NONCLUSTERED INDEX [inusu2] ON [dbo].[clientes]
(
	[cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [inJu2]    Script Date: 12/12/2021 2:27:51 ******/
CREATE NONCLUSTERED INDEX [inJu2] ON [dbo].[juegos]
(
	[juegos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [fk_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [fk_clientes]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [fk_juegos] FOREIGN KEY([id_juegos])
REFERENCES [dbo].[juegos] ([id_juego])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [fk_juegos]
GO
ALTER TABLE [dbo].[compras]  WITH CHECK ADD  CONSTRAINT [fk_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[compras] CHECK CONSTRAINT [fk_usuarios]
GO
USE [master]
GO
ALTER DATABASE [Bd_Tran] SET  READ_WRITE 
GO
