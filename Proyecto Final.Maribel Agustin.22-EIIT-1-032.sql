
/*  Univeridad Dominicana O&M
Nombre: Maribel Agustin Rodriguez
Matricula:22-EIIT-1-032 Seccion: 0541 */

USE [master]
GO
/****** Object:  Database ["MaritechGamesDB".]    Script Date: 8/23/2023 7:25:30 PM ******/
CREATE DATABASE  [" MaritechGamesDB ".]

USE ["MaritechGamesDB".]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 8/23/2023 7:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[   Compras](
	[ID_Compra] [int] NULL,
	[ID_Jugador] [int] NULL,
	[ID_Juego] [int] NULL,
	[FechaCompra] [date] NULL,
	[MontoTotal] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Desarrolladores]    Script Date: 8/23/2023 7:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[  Desarrolladores](
	[ID_Desarrollador] [int] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Pais] [nvarchar](50) NULL,
	[AñoFundacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Juegos]    Script Date: 8/23/2023 7:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[  Juegos](
	[ID_Juego] [int] NULL,
	[ID_Desarrollador] [int] NULL,
	[Nombre] [nvarchar](100) NULL,
	[Genero] [nvarchar](50) NULL,
	[Plataforma] [nvarchar](50) NULL,
	[FechaLanzamiento] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 8/23/2023 7:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[   Jugadores](
	[ID_Jugador] [int] NULL,
	[NombreUsuario] [nvarchar](50) NULL,
	[CorreoElectronico] [nvarchar](75) NULL,
	[FechaRegistro] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suscripciones]    Script Date: 8/23/2023 7:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[   Suscripciones](
	[ID_Suscripcion] [int] NULL,
	[ID_Jugador] [int] NULL,
	[TipoSuscripcion] [nvarchar](50) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[MontoMensual] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (1, 1, 1, CAST(N'2023-01-15' AS Date), CAST(29.99 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (2, 2, 2, CAST(N'2023-02-20' AS Date), CAST(49.99 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (3, 3, 3, CAST(N'2023-03-10' AS Date), CAST(19.99 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (4, 4, 4, CAST(N'2023-04-05' AS Date), CAST(20.00 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (5, 5, 5, CAST(N'2023-05-18' AS Date), CAST(24.99 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (6, 6, 6, CAST(N'2023-06-23' AS Date), CAST(15.00 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (7, 7, 7, CAST(N'2023-07-30' AS Date), CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (8, 8, 8, CAST(N'2023-08-12' AS Date), NULL)
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (9, 9, 9, CAST(N'2023-09-05' AS Date), CAST(9.00 AS Decimal(8, 2)))
INSERT [dbo].[Compras] ([ID_Compra], [ID_Jugador], [ID_Juego], [FechaCompra], [MontoTotal]) VALUES (10, 10, 10, CAST(N'2023-10-22' AS Date), CAST(0.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (1, N'Stellar Studios', N'USA', 2005)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (2, N'Enchanted Creations', N'Canda', 2010)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (3, N'Turbo Tech', N'Germania', 2016)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (4, N'Mystic Games', N'UK', 1999)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (5, N'Cosmic Innovations', N'Australia', 2008)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (6, N'Maritech Games', N'Republica Dominican', 2023)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (7, N'NetEase Games', N'China', 1997)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (8, N'Nexus Interactive', N'South Korea', 2007)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (9, N'Elysian Studios', N'Francia', NULL)
INSERT [dbo].[Desarrolladores] ([ID_Desarrollador], [Nombre], [Pais], [AñoFundacion]) VALUES (10, N'Lockwood Publishing Ltd', N'USA', 2009)
GO
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (1, 1, N'Space Odyssey', N'Sci-Fi', N'PC, Consola', CAST(N'2023-01-05' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (2, 2, N'Fantasy Realm', N'RGP', N'PC,Consola', CAST(N'2023-02-20' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (3, 3, N'Speed Racer', N'Racing', N'Mobile', CAST(N'2023-03-10' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (4, 4, N'Adventure Quest', N'Aventura', N'PC', CAST(N'2023-04-05' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (5, 5, N'Galactic Arena', N'Accion', N'Consola', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (6, 6, N'Ninja Stealth', N'Stealth', N'Mobile', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (7, 7, N'Life After', N'Supervivencia', N'PC,Mobile', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (8, 8, N'Mystic Journey', N'Aventura', N'PC,Consola', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (9, 9, N'Battle Royale', N'Tirador', N'Consola', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[Juegos] ([ID_Juego], [ID_Desarrollador], [Nombre], [Genero], [Plataforma], [FechaLanzamiento]) VALUES (10, 10, N'Avatar ', N'Aventura', N'Mobile', NULL)
GO
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (1, N'Alex_Johnson', N'alex.johnson@gmail.com', CAST(N'2023-01-15' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (2, N'SarahSmith', N'sarah.smith12@gmail.com', CAST(N'2023-02-20' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (3, N'AvaWilson', N'ava.wilson75@gmail.com', CAST(N'2023-03-10' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (4, N'DanielMiller', N'daniel.miller01@gmail.com', CAST(N'2023-04-05' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (5, N'David_Vizcaino', N'David.Vizcaino11@gmail.com', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (6, N'Agustin_Benyi', N'agustin_benyi03@gmail.com', CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (7, N'	GamingGuru', N'	gamingguru@gmail.com', CAST(N'2023-07-30' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (8, N'SuperGamer', N'supergamer30@gamil.com', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (9, N'	Player123', N'	player123@gmail.com', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[Jugadores] ([ID_Jugador], [NombreUsuario], [CorreoElectronico], [FechaRegistro]) VALUES (10, N'Samuel_Bernabel', N'Samuel.B24@gmail.com', NULL)
GO
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (1, 1, N'Premium', CAST(N'2023-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(9.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (2, 2, N'Gold', CAST(N'2023-02-20' AS Date), CAST(N'2023-05-20' AS Date), CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (3, 3, N'Premium', CAST(N'2023-03-10' AS Date), CAST(N'2024-03-10' AS Date), CAST(9.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (4, 4, N'Silver', CAST(N'2023-04-05' AS Date), CAST(N'2023-06-05' AS Date), CAST(3.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (5, 5, N'Basic', CAST(N'2023-05-18' AS Date), CAST(N'2023-06-18' AS Date), CAST(1.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (6, 6, N'Premium', CAST(N'2023-06-23' AS Date), CAST(N'2024-06-23' AS Date), CAST(9.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (7, 7, N'Gold', CAST(N'2023-07-30' AS Date), CAST(N'2023-10-30' AS Date), CAST(5.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (8, 8, N'Basic', CAST(N'2023-08-12' AS Date), CAST(N'2023-09-12' AS Date), CAST(1.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (9, 9, N'Premium', CAST(N'2023-09-05' AS Date), CAST(N'2024-09-05' AS Date), CAST(9.99 AS Decimal(8, 2)))
INSERT [dbo].[Suscripciones] ([ID_Suscripcion], [ID_Jugador], [TipoSuscripcion], [FechaInicio], [FechaFin], [MontoMensual]) VALUES (10, 10, N'Silver', CAST(N'2023-10-22' AS Date), CAST(N'2023-12-22' AS Date), NULL)
GO
USE [master]
GO
ALTER DATABASE ["MaritechGamesDB".] SET  READ_WRITE 
GO
