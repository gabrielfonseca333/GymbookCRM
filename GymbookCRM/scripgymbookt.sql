DROP TABLE Clientes
DROP TABLE Ejercicios
DROP TABLE Entrenadores
DROP TABLE EntrenamientoEjercicios
DROP TABLE Entrenamientos
DROP TABLE PlanesEntrenamiento
DROP TABLE Progresos
DROP TABLE Usuarios

GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] NOT NULL,
	[IdEntrenador] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ejercicios]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejercicios](
	[IdEjercicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEjercicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrenadores]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrenadores](
	[IdEntrenador] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEntrenador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntrenamientoEjercicios]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrenamientoEjercicios](
	[IdEntrenamiento] [int] NOT NULL,
	[IdEjercicio] [int] NOT NULL,
	[Series] [int] NOT NULL,
	[Repeticiones] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEntrenamiento] ASC,
	[IdEjercicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrenamientos]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrenamientos](
	[IdEntrenamiento] [int] IDENTITY(1,1) NOT NULL,
	[IdPlan] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEntrenamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanesEntrenamiento]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanesEntrenamiento](
	[IdPlan] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progresos]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progresos](
	[IdProgreso] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdEjercicio] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[PesoUtilizado] [decimal](5, 2) NOT NULL,
	[RepeticionesHechas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProgreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/02/2025 13:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Correo] [nvarchar](255) NOT NULL,
	[Contraseña] [nvarchar](255) NOT NULL,
	[Rol] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (4, 1)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (5, 1)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (6, 2)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (7, 2)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (8, 3)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (9, 3)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (10, 3)
GO
SET IDENTITY_INSERT [dbo].[Ejercicios] ON 

INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (1, N'Press de banca', N'Ejercicio de pecho con barra.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (2, N'Sentadilla', N'Ejercicio de piernas con barra.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (3, N'Peso muerto', N'Ejercicio de espalda y piernas con barra.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (4, N'Dominadas', N'Ejercicio de espalda con peso corporal.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (5, N'Press militar', N'Ejercicio de hombros con barra.')
SET IDENTITY_INSERT [dbo].[Ejercicios] OFF
GO
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (1)
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (2)
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (3)
GO
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 1, 5, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 2, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 3, 5, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 4, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 5, 3, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 1, 3, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 2, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 3, 5, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 4, 5, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 5, 3, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 1, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 2, 4, 10)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 3, 3, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 4, 4, 10)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 5, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 1, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 2, 5, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 3, 4, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 4, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 5, 4, 10)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (5, 1, 3, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (5, 2, 5, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (5, 3, 5, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (5, 4, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (5, 5, 3, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (6, 1, 5, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (6, 2, 3, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (6, 3, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (6, 4, 3, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (6, 5, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (7, 1, 5, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (7, 2, 3, 11)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (7, 3, 5, 9)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (7, 4, 5, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (7, 5, 3, 12)
GO
SET IDENTITY_INSERT [dbo].[Entrenamientos] ON 

INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (1, 1, N'Rutina de Javi', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (2, 2, N'Rutina de Nicole', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (3, 3, N'Rutina de Gabriel', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (4, 4, N'Rutina de Marina', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (5, 5, N'Rutina de Nicolás', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (6, 6, N'Rutina de Valentín', N'Plan personalizado de entrenamiento')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [IdPlan], [Nombre], [Descripcion]) VALUES (7, 7, N'Rutina de Beltrán', N'Plan personalizado de entrenamiento')
SET IDENTITY_INSERT [dbo].[Entrenamientos] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanesEntrenamiento] ON 

INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (1, 4, CAST(N'2024-11-26' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (2, 5, CAST(N'2024-12-17' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (3, 6, CAST(N'2024-12-06' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (4, 7, CAST(N'2024-12-05' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (5, 8, CAST(N'2024-11-20' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (6, 9, CAST(N'2025-02-04' AS Date), NULL, 1)
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [IdCliente], [FechaInicio], [FechaFin], [Activo]) VALUES (7, 10, CAST(N'2024-12-08' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[PlanesEntrenamiento] OFF
GO
SET IDENTITY_INSERT [dbo].[Progresos] ON 

INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (16, 4, 1, CAST(N'2025-02-11' AS Date), CAST(40.00 AS Decimal(5, 2)), 7)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (17, 4, 2, CAST(N'2025-01-21' AS Date), CAST(55.00 AS Decimal(5, 2)), 8)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (18, 4, 3, CAST(N'2025-02-05' AS Date), CAST(80.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (19, 4, 4, CAST(N'2025-01-30' AS Date), CAST(43.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (20, 4, 5, CAST(N'2025-02-07' AS Date), CAST(89.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (21, 5, 1, CAST(N'2025-01-15' AS Date), CAST(77.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (22, 5, 2, CAST(N'2025-01-31' AS Date), CAST(97.00 AS Decimal(5, 2)), 7)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (23, 5, 3, CAST(N'2025-01-30' AS Date), CAST(74.00 AS Decimal(5, 2)), 6)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (24, 5, 4, CAST(N'2025-02-09' AS Date), CAST(73.00 AS Decimal(5, 2)), 7)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (25, 5, 5, CAST(N'2025-01-28' AS Date), CAST(77.00 AS Decimal(5, 2)), 9)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (26, 6, 1, CAST(N'2025-02-06' AS Date), CAST(88.00 AS Decimal(5, 2)), 7)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (27, 6, 2, CAST(N'2025-01-17' AS Date), CAST(50.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (28, 6, 3, CAST(N'2025-02-11' AS Date), CAST(76.00 AS Decimal(5, 2)), 7)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (29, 6, 4, CAST(N'2025-01-25' AS Date), CAST(52.00 AS Decimal(5, 2)), 8)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (30, 6, 5, CAST(N'2025-02-11' AS Date), CAST(50.00 AS Decimal(5, 2)), 10)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (31, 7, 1, CAST(N'2025-02-07' AS Date), CAST(96.00 AS Decimal(5, 2)), 12)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (32, 7, 2, CAST(N'2025-01-15' AS Date), CAST(78.00 AS Decimal(5, 2)), 12)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (33, 7, 3, CAST(N'2025-01-22' AS Date), CAST(57.00 AS Decimal(5, 2)), 5)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (34, 7, 4, CAST(N'2025-01-19' AS Date), CAST(89.00 AS Decimal(5, 2)), 12)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas]) VALUES (35, 7, 5, CAST(N'2025-01-17' AS Date), CAST(84.00 AS Decimal(5, 2)), 7)
SET IDENTITY_INSERT [dbo].[Progresos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (1, N'Sandra', N'Encinas', N'sandra@goatsgym.com', N'hashedpassword', N'Entrenador')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (2, N'Marco', N'Ramírez', N'marco@goatsgym.com', N'hashedpassword', N'Entrenador')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (3, N'Alfredo', N'López', N'alfredo@goatsgym.com', N'hashedpassword', N'Entrenador')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (4, N'Javi', N'Gómez', N'javi@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (5, N'Nicole', N'Martínez', N'nicole@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (6, N'Gabriel', N'Fonseca', N'gabriel@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (7, N'Marina', N'Rodríguez', N'marina@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (8, N'Nicolás', N'Pérez', N'nicolas@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (9, N'Valentín', N'Sánchez', N'valentin@client.com', N'hashedpassword', N'Cliente')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Contraseña], [Rol]) VALUES (10, N'Beltrán', N'Díaz', N'beltran@client.com', N'hashedpassword', N'Cliente')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
/****** Object:  Index [UQ_Cliente_Activo]    Script Date: 19/02/2025 13:44:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_Cliente_Activo] ON [dbo].[PlanesEntrenamiento]
(
	[IdCliente] ASC
)
WHERE ([Activo]=(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__60695A1906BCBEBD]    Script Date: 19/02/2025 13:44:49 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PlanesEntrenamiento] ADD  DEFAULT (getdate()) FOR [FechaInicio]
GO
ALTER TABLE [dbo].[PlanesEntrenamiento] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Progresos] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD FOREIGN KEY([IdEntrenador])
REFERENCES [dbo].[Entrenadores] ([IdEntrenador])
GO
ALTER TABLE [dbo].[Entrenadores]  WITH CHECK ADD FOREIGN KEY([IdEntrenador])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntrenamientoEjercicios]  WITH CHECK ADD FOREIGN KEY([IdEjercicio])
REFERENCES [dbo].[Ejercicios] ([IdEjercicio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntrenamientoEjercicios]  WITH CHECK ADD FOREIGN KEY([IdEntrenamiento])
REFERENCES [dbo].[Entrenamientos] ([IdEntrenamiento])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrenamientos]  WITH CHECK ADD FOREIGN KEY([IdPlan])
REFERENCES [dbo].[PlanesEntrenamiento] ([IdPlan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanesEntrenamiento]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Progresos]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Progresos]  WITH CHECK ADD FOREIGN KEY([IdEjercicio])
REFERENCES [dbo].[Ejercicios] ([IdEjercicio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD CHECK  (([Rol]='Entrenador' OR [Rol]='Cliente'))
GO
USE [master]
GO
ALTER DATABASE [GYMBOOK] SET  READ_WRITE 
GO
