DROP TABLE ClienteEntrenamientosEjercicios
DROP TABLE ClientePlanesEntrenamiento
DROP TABLE Clientes
DROP TABLE Ejercicios
DROP TABLE Entrenadores
DROP TABLE EntrenamientoEjercicios
DROP TABLE Entrenamientos
DROP TABLE PlanEntrenamientoEntrenamientos
DROP TABLE PlanesEntrenamiento
DROP TABLE Progresos
DROP TABLE Usuarios

GO
CREATE TABLE [dbo].[ClienteEntrenamientosEjercicios](
	[IdCliente] [int] NOT NULL,
	[IdEntrenamiento] [int] NOT NULL,
	[IdEjercicio] [int] NOT NULL,
	[Series] [int] NOT NULL,
	[Repeticiones] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdEntrenamiento] ASC,
	[IdEjercicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientePlanesEntrenamiento]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientePlanesEntrenamiento](
	[IdCliente] [int] NOT NULL,
	[IdPlan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC,
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Ejercicios]    Script Date: 03/03/2025 20:55:06 ******/
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
/****** Object:  Table [dbo].[Entrenadores]    Script Date: 03/03/2025 20:55:06 ******/
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
/****** Object:  Table [dbo].[EntrenamientoEjercicios]    Script Date: 03/03/2025 20:55:06 ******/
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
/****** Object:  Table [dbo].[Entrenamientos]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrenamientos](
	[IdEntrenamiento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEntrenamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanEntrenamientoEntrenamientos]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanEntrenamientoEntrenamientos](
	[IdPlan] [int] NOT NULL,
	[IdEntrenamiento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC,
	[IdEntrenamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanesEntrenamiento]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanesEntrenamiento](
	[IdPlan] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progresos]    Script Date: 03/03/2025 20:55:06 ******/
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
	[NotaCliente] [nvarchar](500) NULL,
	[NotaEntrenador] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProgreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Correo] [nvarchar](255) NOT NULL,
	[Rol] [nvarchar](20) NOT NULL,
	[Imagen] [nvarchar](255) NULL,
	[Salt] [nvarchar](50) NULL,
	[PASS] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ClientePlanesEntrenamiento] ([IdCliente], [IdPlan]) VALUES (3, 2)
INSERT [dbo].[ClientePlanesEntrenamiento] ([IdCliente], [IdPlan]) VALUES (4, 3)
INSERT [dbo].[ClientePlanesEntrenamiento] ([IdCliente], [IdPlan]) VALUES (5, 3)
GO
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (3, 1)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (4, 1)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (5, 1)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (6, 2)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (7, 2)
INSERT [dbo].[Clientes] ([IdCliente], [IdEntrenador]) VALUES (8, 2)
GO
SET IDENTITY_INSERT [dbo].[Ejercicios] ON 

INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (1, N'Sentadillas con barra', N'Ejercicio compuesto para fuerza en glúteos y cuádriceps.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (2, N'Prensa de piernas', N'Fortalecimiento de cuádriceps y glúteos en máquina.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (3, N'Remo con barra', N'Ejercicio de fuerza para la espalda.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (4, N'Curl de bíceps con mancuernas', N'Fortalecimiento de bíceps.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (5, N'Crol', N'Estilo libre de natación para resistencia.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (6, N'Espalda', N'Estilo espalda para mejora de técnica.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (7, N'Press banca', N'Entrenamiento de empuje para pectoral mayor.')
INSERT [dbo].[Ejercicios] ([IdEjercicio], [Nombre], [Descripcion]) VALUES (8, N'Press militar', N'Fortalecimiento de hombros.')
SET IDENTITY_INSERT [dbo].[Ejercicios] OFF
GO
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (1)
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (2)
INSERT [dbo].[Entrenadores] ([IdEntrenador]) VALUES (21)
GO
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 1, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (1, 2, 4, 10)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 3, 4, 10)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (2, 4, 4, 12)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 5, 1, 30)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (3, 6, 1, 30)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 7, 4, 8)
INSERT [dbo].[EntrenamientoEjercicios] ([IdEntrenamiento], [IdEjercicio], [Series], [Repeticiones]) VALUES (4, 8, 4, 10)
GO
SET IDENTITY_INSERT [dbo].[Entrenamientos] ON 

INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [Nombre], [Descripcion]) VALUES (1, N'Glúteo y Cuádriceps', N'Entrenamiento enfocado en el desarrollo de glúteos y cuádriceps.')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [Nombre], [Descripcion]) VALUES (2, N'Espalda y Bíceps', N'Rutina diseñada para fortalecer la espalda y los bíceps.')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [Nombre], [Descripcion]) VALUES (3, N'Natación', N'Entrenamiento cardiovascular basado en resistencia acuática.')
INSERT [dbo].[Entrenamientos] ([IdEntrenamiento], [Nombre], [Descripcion]) VALUES (4, N'Push Tren Superior', N'Entrenamiento de empuje que trabaja pecho, hombros y tríceps.')
SET IDENTITY_INSERT [dbo].[Entrenamientos] OFF
GO
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (2, 1)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (2, 2)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (2, 3)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (2, 4)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (3, 1)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (3, 2)
INSERT [dbo].[PlanEntrenamientoEntrenamientos] ([IdPlan], [IdEntrenamiento]) VALUES (3, 4)
GO
SET IDENTITY_INSERT [dbo].[PlanesEntrenamiento] ON 

INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [Nombre], [Descripcion]) VALUES (2, N'Plan de Entrenamiento Híbrido', N'Este plan combina entrenamiento de fuerza, resistencia cardiovascular y movilidad, ideal para mejorar el rendimiento global en disciplinas mixtas.')
INSERT [dbo].[PlanesEntrenamiento] ([IdPlan], [Nombre], [Descripcion]) VALUES (3, N'Plan de Entrenamiento de Hipertrofia', N'Plan enfocado en el desarrollo muscular mediante rutinas intensivas de volumen, con ejercicios compuestos y sesiones de alta carga.')
SET IDENTITY_INSERT [dbo].[PlanesEntrenamiento] OFF
GO
SET IDENTITY_INSERT [dbo].[Progresos] ON 

INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (1, 3, 1, CAST(N'2025-02-20' AS Date), CAST(100.00 AS Decimal(5, 2)), 10, N'Me sentí bien, pero las últimas repeticiones fueron difíciles.', N'Buen progreso, intenta mantener una postura estable durante todo el ejercicio.')
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (2, 3, 1, CAST(N'2025-02-22' AS Date), CAST(110.00 AS Decimal(5, 2)), 10, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (3, 3, 1, CAST(N'2025-02-25' AS Date), CAST(120.00 AS Decimal(5, 2)), 8, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (4, 3, 2, CAST(N'2025-02-20' AS Date), CAST(180.00 AS Decimal(5, 2)), 12, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (5, 3, 2, CAST(N'2025-02-22' AS Date), CAST(190.00 AS Decimal(5, 2)), 12, N'Las últimas repeticiones fueron fáciles, podría subir el peso.', N'Sube el peso en la siguiente sesión en incrementos de 10 kg.')
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (6, 3, 2, CAST(N'2025-02-25' AS Date), CAST(200.00 AS Decimal(5, 2)), 10, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (7, 3, 3, CAST(N'2025-02-20' AS Date), CAST(60.00 AS Decimal(5, 2)), 10, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (8, 3, 3, CAST(N'2025-02-22' AS Date), CAST(70.00 AS Decimal(5, 2)), 10, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (9, 3, 3, CAST(N'2025-02-25' AS Date), CAST(80.00 AS Decimal(5, 2)), 8, N'Mejoré la técnica en esta sesión.', N'La postura ha mejorado mucho, sigue así.')
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (10, 3, 4, CAST(N'2025-02-20' AS Date), CAST(12.00 AS Decimal(5, 2)), 12, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (11, 3, 4, CAST(N'2025-02-22' AS Date), CAST(14.00 AS Decimal(5, 2)), 12, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (12, 3, 4, CAST(N'2025-02-25' AS Date), CAST(16.00 AS Decimal(5, 2)), 10, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (13, 3, 7, CAST(N'2025-02-20' AS Date), CAST(80.00 AS Decimal(5, 2)), 8, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (14, 3, 7, CAST(N'2025-02-22' AS Date), CAST(90.00 AS Decimal(5, 2)), 8, NULL, NULL)
INSERT [dbo].[Progresos] ([IdProgreso], [IdCliente], [IdEjercicio], [Fecha], [PesoUtilizado], [RepeticionesHechas], [NotaCliente], [NotaEntrenador]) VALUES (15, 3, 7, CAST(N'2025-02-25' AS Date), CAST(100.00 AS Decimal(5, 2)), 6, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Progresos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (1, N'Marco', N'Balance', N'marco.balance@example.com', N'Entrenador', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (2, N'Sandra', N'Ayurveda', N'sandra.ayurveda@example.com', N'Entrenador', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (3, N'Gabriel', N'Fonseca', N'gabriel.fonseca@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (4, N'Javi', N'Forus', N'javi.forus@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (5, N'Valentín', N'Maestre', N'valentin.maestre@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (6, N'Veronica', N'Inner', N'veronica.inner@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (7, N'Sharon', N'Pereira', N'sharon.pereira@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (8, N'Maria', N'Moñino', N'maria.monino@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (9, N'Nuevo', N'Usuario', N'nuevo.usuario@example.com', N'Cliente', N'default-profile.png', N'', 0x63006F006E0074007200610073006500F1006100310032003300)
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Apellido], [Correo], [Rol], [Imagen], [Salt], [PASS]) VALUES (21, N'Pepito', N'Grillo', N'pepitogrillo@gmail.com', N'Entrenador', N'/assets/avatars/5a057bbe-e68f-4bb9-9160-54cdcbf9a2e4.png', N'E(iq|²ò
÷º''ÂÔ3Ì$U¿»Ðö8ú%>RåµVf§¼¨ºªT·È
kÌ	', 0x7B52A87AA2DF17BC05E5864CFF1519FABA8115ADB7FB6B3918441092E09877B1052D153FEDEAE65BADF82477F21F66A64211450B51DEC40306590D73A6EE02AB)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__60695A19B947CE68]    Script Date: 03/03/2025 20:55:06 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PlanesEntrenamiento] ADD  DEFAULT ('Plan Sin Nombre') FOR [Nombre]
GO
ALTER TABLE [dbo].[Progresos] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Imagen]  DEFAULT ('default-profile.png') FOR [Imagen]
GO
ALTER TABLE [dbo].[ClienteEntrenamientosEjercicios]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[ClienteEntrenamientosEjercicios]  WITH CHECK ADD FOREIGN KEY([IdEjercicio])
REFERENCES [dbo].[Ejercicios] ([IdEjercicio])
GO
ALTER TABLE [dbo].[ClienteEntrenamientosEjercicios]  WITH CHECK ADD FOREIGN KEY([IdEntrenamiento])
REFERENCES [dbo].[Entrenamientos] ([IdEntrenamiento])
GO
ALTER TABLE [dbo].[ClientePlanesEntrenamiento]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[ClientePlanesEntrenamiento]  WITH CHECK ADD FOREIGN KEY([IdPlan])
REFERENCES [dbo].[PlanesEntrenamiento] ([IdPlan])
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
ALTER TABLE [dbo].[EntrenamientoEjercicios]  WITH CHECK ADD  CONSTRAINT [FK_EntrenamientoEjercicios_Entrenamientos] FOREIGN KEY([IdEntrenamiento])
REFERENCES [dbo].[Entrenamientos] ([IdEntrenamiento])
GO
ALTER TABLE [dbo].[EntrenamientoEjercicios] CHECK CONSTRAINT [FK_EntrenamientoEjercicios_Entrenamientos]
GO
ALTER TABLE [dbo].[PlanEntrenamientoEntrenamientos]  WITH CHECK ADD FOREIGN KEY([IdEntrenamiento])
REFERENCES [dbo].[Entrenamientos] ([IdEntrenamiento])
GO
ALTER TABLE [dbo].[PlanEntrenamientoEntrenamientos]  WITH CHECK ADD FOREIGN KEY([IdPlan])
REFERENCES [dbo].[PlanesEntrenamiento] ([IdPlan])
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
/****** Object:  StoredProcedure [dbo].[sp_InsertCliente]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertCliente]
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Correo NVARCHAR(50),
    @Password VARBINARY(MAX),
    @Salt NVARCHAR(100),
    @Imagen NVARCHAR(200),
    @IdEntrenador INT  -- Este parámetro indica el entrenador que crea al cliente
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Inserta el usuario con rol 'Cliente'
    INSERT INTO Usuarios (Nombre, Apellido, Correo, Rol, Pass, Salt, Imagen)
    VALUES (@Nombre, @Apellido, @Correo, 'Cliente', @Password, @Salt, @Imagen);
    
    DECLARE @NewUserId INT = SCOPE_IDENTITY();
    
    -- Inserta en la tabla de Clientes asociando el Id del entrenador
    INSERT INTO Clientes (IdCliente, IdEntrenador)
    VALUES (@NewUserId, @IdEntrenador);
    
    SELECT @NewUserId AS NewUserId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEntrenador]    Script Date: 03/03/2025 20:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertEntrenador]
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Correo NVARCHAR(50),
    @Password VARBINARY(MAX),
    @Salt NVARCHAR(100),
    @Imagen NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Inserta el usuario con rol 'Entrenador'
    INSERT INTO Usuarios (Nombre, Apellido, Correo, Rol, Pass, Salt, Imagen)
    VALUES (@Nombre, @Apellido, @Correo, 'Entrenador', @Password, @Salt, @Imagen);
    
    DECLARE @NewUserId INT = SCOPE_IDENTITY();
    
    -- Inserta en la tabla de Entrenador
    INSERT INTO Entrenadores (IdEntrenador)
    VALUES (@NewUserId);
    
    SELECT @NewUserId AS NewUserId;
END;
GO
USE [master]
GO
ALTER DATABASE [GYMBOOKDOS] SET  READ_WRITE 
GO
