USE [GM23]
GO

/****** Object:  Table [dbo].[Client]    Script Date: 21/02/2024 11:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID_CLIENT] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](50) NOT NULL,
	[Adresse] [varchar](100) NOT NULL,
	[Mail] [varchar](100) NOT NULL,
	[Tel] [varchar](25) NOT NULL,
 CONSTRAINT [Client_PK] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Connexion]    Script Date: 21/02/2024 11:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Connexion](
	[ID_CONNEXION] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](64) NOT NULL,
 CONSTRAINT [Connexion_PK] PRIMARY KEY CLUSTERED 
(
	[ID_CONNEXION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intervention]    Script Date: 21/02/2024 11:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intervention](
	[ID_INTER] [int] IDENTITY(1,1) NOT NULL,
	[Date_inter] [date] NOT NULL,
	[Commentaire] [text] NULL,
	[ID_MATOS] [int] NOT NULL,
 CONSTRAINT [Intervention_PK] PRIMARY KEY CLUSTERED 
(
	[ID_INTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiel]    Script Date: 21/02/2024 11:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiel](
	[ID_MATOS] [int] IDENTITY(1,1) NOT NULL,
	[Nom_modele] [varchar](100) NOT NULL,
	[Marque] [varchar](50) NOT NULL,
	[NoSerie] [varchar](50) NOT NULL,
	[Prix] [money] NULL,
	[Date_installation] [date] NULL,
	[ID_TYPE_MATOS] [int] NOT NULL,
	[ID_CLIENT] [int] NOT NULL,
 CONSTRAINT [Materiel_PK] PRIMARY KEY CLUSTERED 
(
	[ID_MATOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_materiel]    Script Date: 21/02/2024 11:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_materiel](
	[ID_TYPE_MATOS] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](50) NOT NULL,
	[MTBF] [int] NOT NULL,
 CONSTRAINT [Type_materiel_PK] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE_MATOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID_CLIENT], [Nom], [Adresse], [Mail], [Tel]) VALUES (1, N'Conforama', N'115 rue de rien', N'confo@conformaram.com', N'06 22 55 90 90')
INSERT [dbo].[Client] ([ID_CLIENT], [Nom], [Adresse], [Mail], [Tel]) VALUES (2, N'Galeries', N'10 boulevard Haussmann', N'galery@gmail.us', N'09 22226633')
INSERT [dbo].[Client] ([ID_CLIENT], [Nom], [Adresse], [Mail], [Tel]) VALUES (3, N'wallmart', N'loin', N'ppmd@gmail.Commm', N'06 66 999 66 9 9')
INSERT [dbo].[Client] ([ID_CLIENT], [Nom], [Adresse], [Mail], [Tel]) VALUES (5, N'LVMH', N'champs elysees', N'ch@gelom.com', N'06 55 00 22 55')
INSERT [dbo].[Client] ([ID_CLIENT], [Nom], [Adresse], [Mail], [Tel]) VALUES (8, N'BHV', N'11 rue de la rue de la rue', N'non merci', N'356725704')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Intervention] ON 

INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (2, CAST(N'2023-09-05' AS Date), N'parfait !!', 2)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (3, CAST(N'2007-02-12' AS Date), N'top', 5)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (5, CAST(N'2023-09-09' AS Date), NULL, 6)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (6, CAST(N'2024-01-10' AS Date), N'ça marche', 5)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (7, CAST(N'2024-01-10' AS Date), N'ok cool', 6)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (8, CAST(N'2024-01-05' AS Date), N'aaaaaaaaaaaaaaaaaaaaaaaa', 6)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (9, CAST(N'2024-02-21' AS Date), N'coucou ça marche !!!', 5)
INSERT [dbo].[Intervention] ([ID_INTER], [Date_inter], [Commentaire], [ID_MATOS]) VALUES (10, CAST(N'2024-02-17' AS Date), N'clients super cool, il est mort', 7)
SET IDENTITY_INSERT [dbo].[Intervention] OFF
GO
SET IDENTITY_INSERT [dbo].[Materiel] ON 

INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (2, N'NF 511 8200', N'NVidia', N'05460464564', 1200.0000, CAST(N'2019-12-05' AS Date), 3, 2)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (3, N'Clavier pourri', N'Logitoc', N'8265060', 20.0000, CAST(N'2023-09-14' AS Date), 1, 1)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (4, N'RAM V522', N'scanram', N'45154054', 500.0000, CAST(N'2022-09-15' AS Date), 4, 3)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (5, N'BELUGA 58', N'Beluga', N'76822968265', 184.0000, CAST(N'2016-05-07' AS Date), 6, 2)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (6, N'Screen 880', N'Motoscreen', N'65264650', 25000000.0000, CAST(N'2012-05-09' AS Date), 8, 3)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (7, N'RTX 8080', N'NVidia', N'571545741545', 750.0000, CAST(N'2025-05-19' AS Date), 3, 2)
INSERT [dbo].[Materiel] ([ID_MATOS], [Nom_modele], [Marque], [NoSerie], [Prix], [Date_installation], [ID_TYPE_MATOS], [ID_CLIENT]) VALUES (10, N'a', N'b', N'c', 44.0000, CAST(N'2022-05-09' AS Date), 5, 2)
SET IDENTITY_INSERT [dbo].[Materiel] OFF
GO
SET IDENTITY_INSERT [dbo].[Type_materiel] ON 

INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (1, N'Clavier', 2)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (2, N'Souris', 5)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (3, N'Carte graphique', 4)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (4, N'RAM', 10)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (5, N'Carte mère', 7)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (6, N'HD', 2)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (7, N'Ecran', 10)
INSERT [dbo].[Type_materiel] ([ID_TYPE_MATOS], [Nom], [MTBF]) VALUES (8, N'Imprimante', 1)
SET IDENTITY_INSERT [dbo].[Type_materiel] OFF
GO
ALTER TABLE [dbo].[Intervention]  WITH CHECK ADD  CONSTRAINT [Intervention_Materiel_FK] FOREIGN KEY([ID_MATOS])
REFERENCES [dbo].[Materiel] ([ID_MATOS])
GO
ALTER TABLE [dbo].[Intervention] CHECK CONSTRAINT [Intervention_Materiel_FK]
GO
ALTER TABLE [dbo].[Materiel]  WITH CHECK ADD  CONSTRAINT [Materiel_Client0_FK] FOREIGN KEY([ID_CLIENT])
REFERENCES [dbo].[Client] ([ID_CLIENT])
GO
ALTER TABLE [dbo].[Materiel] CHECK CONSTRAINT [Materiel_Client0_FK]
GO
ALTER TABLE [dbo].[Materiel]  WITH CHECK ADD  CONSTRAINT [Materiel_Type_materiel_FK] FOREIGN KEY([ID_TYPE_MATOS])
REFERENCES [dbo].[Type_materiel] ([ID_TYPE_MATOS])
GO
ALTER TABLE [dbo].[Materiel] CHECK CONSTRAINT [Materiel_Type_materiel_FK]
GO
USE [master]
GO
ALTER DATABASE [GM23] SET  READ_WRITE 
GO
