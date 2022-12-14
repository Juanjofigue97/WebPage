USE [Ingenio]
GO
/****** Object:  Table [dbo].[Asociados_Ingenio]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asociados_Ingenio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](max) NOT NULL,
	[PrimerNombre] [varchar](max) NOT NULL,
	[SegundoNombre] [varchar](max) NULL,
	[PrimerApellido] [varchar](max) NOT NULL,
	[SegundoAPellido] [varchar](max) NULL,
	[Correo] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaAnteriroAcceso] [datetime] NULL,
	[Activo] [bit] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](max) NULL,
	[Fecha] [datetime] NOT NULL,
	[Imagen] [varchar](max) NULL,
	[Html] [text] NULL,
	[FechaInicio] [datetime] NULL,
	[Activo] [bit] NOT NULL DEFAULT ((1)),
	[FechaFin] [datetime] NULL,
	[Id_Usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Modulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolesModulos]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesModulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Rol] [int] NOT NULL,
	[Id_Modulo] [int] NOT NULL,
 CONSTRAINT [PK_RolesModulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SEGUIMIENTO_SIMULADORES]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEGUIMIENTO_SIMULADORES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[NOMBRE] [varchar](255) NOT NULL,
	[TELEFONO] [varchar](20) NOT NULL,
	[EMAIL] [varchar](50) NULL,
	[TIPO] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](max) NULL,
	[Titulo] [varchar](max) NULL,
	[Descripcion] [varchar](max) NULL,
	[Url] [varchar](max) NULL,
	[Posicion] [tinyint] NOT NULL DEFAULT ((0)),
	[Activo] [bit] NULL DEFAULT ((1)),
	[Id_Usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUltimoAcceso] [datetime] NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Telefono] [varchar](max) NULL,
	[Identificacion] [varchar](max) NOT NULL,
	[Activo] [bit] NOT NULL DEFAULT ((1)),
	[Id_cargo] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosRoles]    Script Date: 04/04/2016 7:11:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Id_Rol] [int] NOT NULL,
 CONSTRAINT [PK_UsuariosRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Asociados_Ingenio] ON 

INSERT [dbo].[Asociados_Ingenio] ([Id], [Identificacion], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoAPellido], [Correo], [Password], [FechaCreacion], [FechaAnteriroAcceso], [Activo]) VALUES (7, N'5206464', N'asfas', N'asfa', N'adfa', N'asdfas', N'andriunsanta@hotmail.com', N'10470C3B4B1FED12C3BAAC014BE15FAC67C6E815', CAST(N'2016-04-04 03:07:31.793' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Asociados_Ingenio] OFF
SET IDENTITY_INSERT [dbo].[Cargos] ON 

INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (1, N'Cajero')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (2, N'Ingeniero')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (3, N'123123')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (4, N'andriun')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (5, N'asdf')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (6, N'123')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (7, N'aaaaaaaaa')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (8, N'aabbbb')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (9, N'asfd')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (10, N'asfasdf')
INSERT [dbo].[Cargos] ([Id], [Nombre]) VALUES (11, N'fff')
SET IDENTITY_INSERT [dbo].[Cargos] OFF
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([Id], [Titulo], [Fecha], [Imagen], [Html], [FechaInicio], [Activo], [FechaFin], [Id_Usuario]) VALUES (1091, N'asdf', CAST(N'2016-03-15 11:25:28.210' AS DateTime), N'/Imagenes/20160314144451-ahorro.png', N'&lt;p&gt;asdfasdf&lt;/p&gt;', NULL, 1, NULL, 1)
INSERT [dbo].[Estados] ([Id], [Titulo], [Fecha], [Imagen], [Html], [FechaInicio], [Activo], [FechaFin], [Id_Usuario]) VALUES (1092, N'sadasda', CAST(N'2016-03-18 17:30:26.833' AS DateTime), N'/Imagenes/20160318162634-segur.png', N'&lt;h1 style="text-align: center;"&gt;asdfasdfwerwerwer&lt;/h1&gt;&lt;p&gt;asdfasdfasdfa sadfas daf sdfas asdfasd fa sdf asd fsd asdf as sdf asf asdf asdf asd fsa fasd fasd fsa sad fasdf asd fasd fas fasd fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safasfas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas fas fasf asdf asf as fs dfa sdf asd fasd fsd fasf asd fasd fasdf asdf asdf asf as fasf sddf safas&lt;/p&gt;', NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Estados] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([Id], [Nombre]) VALUES (1, N'Contabilidad')
INSERT [dbo].[Modulos] ([Id], [Nombre]) VALUES (2, N'Finanzas')
SET IDENTITY_INSERT [dbo].[Modulos] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (1, N'ADMIND', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (12, N'QWER', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (14, N'TTTT', 1)
INSERT [dbo].[Roles] ([Id], [Nombre], [Activo]) VALUES (15, N'ASFSDF', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[RolesModulos] ON 

INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (55, 1, 2)
INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (56, 1, 1)
INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (64, 12, 1)
INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (65, 12, 2)
INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (68, 15, 1)
INSERT [dbo].[RolesModulos] ([Id], [Id_Rol], [Id_Modulo]) VALUES (69, 15, 2)
SET IDENTITY_INSERT [dbo].[RolesModulos] OFF
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (1, N'/igmSliders/20160318155700-prueba-slide.jpg', N'daD', N'ads', N'ASDa', 1, 1, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (2, N'/igmSliders/20160318160849-pub-lorenzo.jpg', N'sdg', N'sdfgsd', N'sdgf', 0, 1, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (3, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (4, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (5, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (6, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (7, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (8, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (9, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (10, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (11, NULL, NULL, NULL, NULL, 0, NULL, 1)
INSERT [dbo].[Sliders] ([Id], [Imagen], [Titulo], [Descripcion], [Url], [Posicion], [Activo], [Id_Usuario]) VALUES (12, NULL, NULL, NULL, NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [UserName], [Password], [FechaCreacion], [FechaUltimoAcceso], [Nombre], [Telefono], [Identificacion], [Activo], [Id_cargo]) VALUES (1, N'ANDRIUN', N'7F06C04D59BD83605193621E8D0D693BD30CDC9E', CAST(N'2015-10-10 00:00:00.000' AS DateTime), CAST(N'2016-04-01 08:17:43.010' AS DateTime), N'Usuario administrador', N'314474545', N'1231231231', 1, 1)
INSERT [dbo].[Usuarios] ([Id], [UserName], [Password], [FechaCreacion], [FechaUltimoAcceso], [Nombre], [Telefono], [Identificacion], [Activo], [Id_cargo]) VALUES (19, N'SSSSSSSSSS', N'DC709FE458052C2932D92BE8E116BAC357AACA39', CAST(N'2016-03-28 02:23:50.727' AS DateTime), NULL, N'qwer', N'234234', N'2342', 1, 4)
INSERT [dbo].[Usuarios] ([Id], [UserName], [Password], [FechaCreacion], [FechaUltimoAcceso], [Nombre], [Telefono], [Identificacion], [Activo], [Id_cargo]) VALUES (47, N'QQQQQQQQQQ', N'040BD08A4290267535CD247B8BA2ECA129D9FE9F', CAST(N'2016-03-31 06:14:39.563' AS DateTime), NULL, N'anddsd', N'32323', N'322', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[UsuariosRoles] ON 

INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (7, 1, 1)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (14, 19, 1)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (15, 19, 12)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (16, 19, 14)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (17, 47, 1)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (18, 47, 12)
INSERT [dbo].[UsuariosRoles] ([Id], [Id_Usuario], [Id_Rol]) VALUES (19, 47, 14)
SET IDENTITY_INSERT [dbo].[UsuariosRoles] OFF
ALTER TABLE [dbo].[RolesModulos]  WITH CHECK ADD  CONSTRAINT [FK_RolesModulos_Modulos] FOREIGN KEY([Id_Modulo])
REFERENCES [dbo].[Modulos] ([Id])
GO
ALTER TABLE [dbo].[RolesModulos] CHECK CONSTRAINT [FK_RolesModulos_Modulos]
GO
ALTER TABLE [dbo].[RolesModulos]  WITH CHECK ADD  CONSTRAINT [FK_RolesModulos_Roles] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[RolesModulos] CHECK CONSTRAINT [FK_RolesModulos_Roles]
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD  CONSTRAINT [FK_Sliders_Usuarios] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Sliders] CHECK CONSTRAINT [FK_Sliders_Usuarios]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosRoles_Roles] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK_UsuariosRoles_Roles]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosRoles_Usuarios] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK_UsuariosRoles_Usuarios]
GO
