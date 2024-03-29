USE [ApiPartidas]
GO
/****** Object:  Table [dbo].[Goals]    Script Date: 19/06/2023 19:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goals](
	[GoalsId] [int] IDENTITY(1,1) NOT NULL,
	[LogMatchId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[Description] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[GoalsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogMatch]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogMatch](
	[LogMatchId] [int] IDENTITY(1,1) NOT NULL,
	[WinnerTeamId] [int] NOT NULL,
	[MatchId] [int] NOT NULL,
	[MatchDescription] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LogMatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
	[StadiumId] [int] NOT NULL,
	[RefereeId] [int] NOT NULL,
	[MasterTeamId] [int] NOT NULL,
	[AwayTeamId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[LogMatchId] [int] NULL,
	[Ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[PlayerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Position] [varchar](255) NOT NULL,
	[ShirtNumber] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RedCards]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RedCards](
	[RedCardsId] [int] IDENTITY(1,1) NOT NULL,
	[LogMatchId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[Description] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[RedCardsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referee]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[RefereeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Nationality] [varchar](255) NOT NULL,
	[ExpYears] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RefereeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadium]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadium](
	[StadiumId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Location] [varchar](255) NOT NULL,
	[Capacity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StadiumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Country] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YellowCards]    Script Date: 19/06/2023 19:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YellowCards](
	[YellowCardsId] [int] IDENTITY(1,1) NOT NULL,
	[LogMatchId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[Description] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[YellowCardsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Goals] ON 

INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (1, 2, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (2, 2, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (3, 3, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (4, 4, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (5, 5, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (6, 6, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (7, 6, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (8, 7, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (9, 8, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (10, 9, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (11, 10, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (12, 10, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (13, 11, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (14, 11, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (15, 11, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (16, 2, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (17, 2, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (18, 3, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (19, 4, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (20, 5, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (21, 6, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (22, 6, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (23, 7, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (24, 8, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (25, 9, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (26, 10, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (27, 10, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (28, 11, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (29, 11, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (30, 11, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (31, 2, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (32, 2, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (33, 3, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (34, 4, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (35, 5, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (36, 6, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (37, 6, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (38, 7, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (39, 8, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (40, 9, 5, N'Player E scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (41, 10, 1, N'Player A scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (42, 10, 2, N'Player B scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (43, 11, 3, N'Player C scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (44, 11, 4, N'Player D scores a goal.')
INSERT [dbo].[Goals] ([GoalsId], [LogMatchId], [PlayerId], [Description]) VALUES (45, 11, 5, N'Player E scores a goal.')
SET IDENTITY_INSERT [dbo].[Goals] OFF
GO
SET IDENTITY_INSERT [dbo].[LogMatch] ON 

INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (2, 1, 4, N'Team A wins with a score of 2-1.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (3, 2, 23, N'Team B wins with a score of 3-0.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (4, 3, 11, N'Team C wins with a score of 1-0.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (5, 4, 12, N'Team D wins with a score of 2-0.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (6, 5, 5, N'Team E wins with a score of 3-2.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (7, 1, 18, N'Team A wins with a score of 1-0.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (8, 2, 7, N'Team B wins with a score of 2-1.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (9, 3, 8, N'Team C wins with a score of 2-0.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (10, 4, 9, N'Team D wins with a score of 3-1.')
INSERT [dbo].[LogMatch] ([LogMatchId], [WinnerTeamId], [MatchId], [MatchDescription]) VALUES (11, 5, 10, N'Team E wins with a score of 1-0.')
SET IDENTITY_INSERT [dbo].[LogMatch] OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (4, 1, 1, 1, 2, CAST(N'2023-06-16T18:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (5, 2, 2, 3, 4, CAST(N'2023-06-17T15:30:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (6, 3, 3, 5, 4, CAST(N'2023-06-18T20:15:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (7, 4, 2, 1, 3, CAST(N'2023-06-19T17:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (8, 1, 4, 2, 5, CAST(N'2023-06-20T19:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (9, 3, 1, 4, 2, CAST(N'2023-06-21T16:30:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (10, 2, 3, 1, 5, CAST(N'2023-06-22T18:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (11, 4, 2, 3, 4, CAST(N'2023-06-23T20:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (12, 1, 5, 4, 2, CAST(N'2023-06-24T15:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (13, 3, 1, 2, 5, CAST(N'2023-06-25T17:30:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (14, 2, 3, 5, 1, CAST(N'2023-06-26T19:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (15, 4, 2, 1, 3, CAST(N'2023-06-27T16:15:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (16, 1, 4, 3, 2, CAST(N'2023-06-28T18:30:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (17, 3, 1, 2, 5, CAST(N'2023-06-29T20:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (18, 2, 5, 5, 1, CAST(N'2023-06-30T15:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (19, 4, 2, 4, 3, CAST(N'2023-07-01T17:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (20, 1, 3, 1, 2, CAST(N'2023-07-02T19:15:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (21, 3, 2, 3, 4, CAST(N'2023-07-03T16:45:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (22, 2, 1, 2, 5, CAST(N'2023-07-04T19:30:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Match] ([MatchId], [StadiumId], [RefereeId], [MasterTeamId], [AwayTeamId], [Date], [LogMatchId], [Ativo]) VALUES (23, 4, 4, 5, 1, CAST(N'2023-07-05T17:15:00.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (1, N'Jogador 1', N'Atacante', 10, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (2, N'Jogador 2', N'Meio-Campista', 8, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (3, N'Jogador 3', N'Zagueiro', 5, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (4, N'Jogador 4', N'Goleiro', 1, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (5, N'Jogador 5', N'Lateral', 3, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (6, N'Jogador 6', N'Atacante', 9, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (7, N'Jogador 7', N'Meio-Campista', 6, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (8, N'Jogador 8', N'Zagueiro', 4, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (9, N'Jogador 9', N'Goleiro', 1, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (10, N'Jogador 10', N'Lateral', 2, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (11, N'Jogador 11', N'Atacante', 7, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (12, N'Jogador 12', N'Meio-Campista', 11, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (13, N'Jogador 13', N'Zagueiro', 6, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (14, N'Jogador 14', N'Goleiro', 1, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (15, N'Jogador 15', N'Lateral', 4, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (16, N'Jogador 16', N'Atacante', 9, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (17, N'Jogador 17', N'Meio-Campista', 8, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (18, N'Jogador 18', N'Zagueiro', 5, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (19, N'Jogador 19', N'Goleiro', 1, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (20, N'Jogador 20', N'Lateral', 3, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (21, N'Jogador 21', N'Atacante', 10, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (22, N'Jogador 22', N'Meio-Campista', 7, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (23, N'Jogador 23', N'Zagueiro', 4, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (24, N'Jogador 24', N'Goleiro', 1, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (25, N'Jogador 25', N'Lateral', 2, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (26, N'Jogador 26', N'Atacante', 9, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (27, N'Jogador 27', N'Meio-Campista', 6, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (28, N'Jogador 28', N'Zagueiro', 4, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (29, N'Jogador 29', N'Goleiro', 1, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (30, N'Jogador 30', N'Lateral', 3, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (31, N'Jogador 31', N'Atacante', 7, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (32, N'Jogador 32', N'Meio-Campista', 11, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (33, N'Jogador 33', N'Zagueiro', 6, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (34, N'Jogador 34', N'Goleiro', 1, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (35, N'Jogador 35', N'Lateral', 4, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (36, N'Jogador 36', N'Atacante', 9, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (37, N'Jogador 37', N'Meio-Campista', 8, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (38, N'Jogador 38', N'Zagueiro', 5, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (39, N'Jogador 39', N'Goleiro', 1, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (40, N'Jogador 40', N'Lateral', 2, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (41, N'Jogador 41', N'Atacante', 10, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (42, N'Jogador 42', N'Meio-Campista', 7, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (43, N'Jogador 43', N'Zagueiro', 4, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (44, N'Jogador 44', N'Goleiro', 1, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (45, N'Jogador 45', N'Lateral', 3, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (46, N'Jogador 46', N'Atacante', 9, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (47, N'Jogador 47', N'Meio-Campista', 6, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (48, N'Jogador 48', N'Zagueiro', 4, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (49, N'Jogador 49', N'Goleiro', 1, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (50, N'Jogador 50', N'Lateral', 2, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (51, N'Jogador 51', N'Atacante', 7, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (52, N'Jogador 52', N'Meio-Campista', 11, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (53, N'Jogador 53', N'Zagueiro', 6, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (54, N'Jogador 54', N'Goleiro', 1, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (55, N'Jogador 55', N'Lateral', 4, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (56, N'Jogador 56', N'Atacante', 9, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (57, N'Jogador 57', N'Meio-Campista', 8, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (58, N'Jogador 58', N'Zagueiro', 5, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (59, N'Jogador 59', N'Goleiro', 1, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (60, N'Jogador 60', N'Lateral', 3, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (61, N'Jogador 61', N'Atacante', 10, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (62, N'Jogador 62', N'Meio-Campista', 7, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (63, N'Jogador 63', N'Zagueiro', 4, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (64, N'Jogador 64', N'Goleiro', 1, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (65, N'Jogador 65', N'Lateral', 2, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (66, N'Jogador 66', N'Atacante', 9, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (67, N'Jogador 67', N'Meio-Campista', 6, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (68, N'Jogador 68', N'Zagueiro', 4, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (69, N'Jogador 69', N'Goleiro', 1, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (70, N'Jogador 70', N'Lateral', 3, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (71, N'Jogador 71', N'Atacante', 7, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (72, N'Jogador 72', N'Meio-Campista', 11, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (73, N'Jogador 73', N'Zagueiro', 6, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (74, N'Jogador 74', N'Goleiro', 1, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (75, N'Jogador 75', N'Lateral', 4, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (76, N'Jogador 76', N'Atacante', 9, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (77, N'Jogador 77', N'Meio-Campista', 8, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (78, N'Jogador 78', N'Zagueiro', 5, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (79, N'Jogador 79', N'Goleiro', 1, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (80, N'Jogador 80', N'Lateral', 3, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (81, N'Jogador 81', N'Atacante', 10, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (82, N'Jogador 82', N'Meio-Campista', 7, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (83, N'Jogador 83', N'Zagueiro', 4, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (84, N'Jogador 84', N'Goleiro', 1, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (85, N'Jogador 85', N'Lateral', 3, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (86, N'Jogador 86', N'Atacante', 9, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (87, N'Jogador 87', N'Meio-Campista', 6, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (88, N'Jogador 88', N'Zagueiro', 4, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (89, N'Jogador 89', N'Goleiro', 1, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (90, N'Jogador 90', N'Lateral', 2, 2)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (91, N'Jogador 91', N'Atacante', 7, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (92, N'Jogador 92', N'Meio-Campista', 11, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (93, N'Jogador 93', N'Zagueiro', 6, 4)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (94, N'Jogador 94', N'Goleiro', 1, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (95, N'Jogador 95', N'Lateral', 4, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (96, N'Jogador 96', N'Atacante', 9, 3)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (97, N'Jogador 97', N'Meio-Campista', 8, 1)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (98, N'Jogador 98', N'Zagueiro', 5, 5)
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (99, N'Jogador 99', N'Goleiro', 1, 3)
GO
INSERT [dbo].[Player] ([PlayerId], [Name], [Position], [ShirtNumber], [TeamId]) VALUES (100, N'Jogador 100', N'Lateral', 3, 5)
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
SET IDENTITY_INSERT [dbo].[RedCards] ON 

INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (1, 3, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (2, 5, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (3, 7, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (4, 9, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (5, 11, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (6, 4, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (7, 6, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (8, 8, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (9, 10, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (10, 2, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (11, 3, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (12, 5, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (13, 7, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (14, 9, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (15, 11, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (16, 4, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (17, 6, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (18, 8, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (19, 10, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (20, 2, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (21, 3, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (22, 5, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (23, 7, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (24, 9, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (25, 11, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (26, 4, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (27, 6, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (28, 8, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (29, 10, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (30, 2, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (31, 3, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (32, 5, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (33, 7, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (34, 9, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (35, 11, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (36, 4, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (37, 6, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (38, 8, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (39, 10, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (40, 2, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (41, 3, 1, N'Player A receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (42, 5, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (43, 7, 5, N'Player E receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (44, 9, 4, N'Player D receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (45, 11, 3, N'Player C receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (46, 4, 2, N'Player B receives a red card.')
INSERT [dbo].[RedCards] ([RedCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (47, 6, 4, N'Player D receives a red card.')
SET IDENTITY_INSERT [dbo].[RedCards] OFF
GO
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (1, N'Árbitro 1', N'Brasil', 5)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (2, N'Árbitro 2', N'Argentina', 8)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (3, N'Árbitro 3', N'Espanha', 6)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (4, N'Árbitro 4', N'Alemanha', 10)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (5, N'Árbitro 5', N'Itália', 7)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (6, N'Árbitro 6', N'França', 4)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (7, N'Árbitro 7', N'Inglaterra', 9)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (8, N'Árbitro 8', N'Holanda', 3)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (9, N'Árbitro 9', N'Portugal', 5)
INSERT [dbo].[Referee] ([RefereeId], [Name], [Nationality], [ExpYears]) VALUES (10, N'Árbitro 10', N'Brasil', 7)
SET IDENTITY_INSERT [dbo].[Referee] OFF
GO
SET IDENTITY_INSERT [dbo].[Stadium] ON 

INSERT [dbo].[Stadium] ([StadiumId], [Name], [Location], [Capacity]) VALUES (1, N'Estádio A', N'Cidade A', 50000)
INSERT [dbo].[Stadium] ([StadiumId], [Name], [Location], [Capacity]) VALUES (2, N'Estádio B', N'Cidade B', 60000)
INSERT [dbo].[Stadium] ([StadiumId], [Name], [Location], [Capacity]) VALUES (3, N'Estádio C', N'Cidade C', 45000)
INSERT [dbo].[Stadium] ([StadiumId], [Name], [Location], [Capacity]) VALUES (4, N'Estádio D', N'Cidade D', 70000)
INSERT [dbo].[Stadium] ([StadiumId], [Name], [Location], [Capacity]) VALUES (5, N'Estádio E', N'Cidade E', 55000)
SET IDENTITY_INSERT [dbo].[Stadium] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (1, N'Lightning FC', N'United States')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (2, N'Rising Stars', N'Brazil')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (3, N'Thunderbolts', N'England')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (4, N'Fireball FC', N'Spain')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (5, N'Tigers United', N'Germany')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (6, N'Storm Riders', N'Australia')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (7, N'Swift Strikers', N'France')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (8, N'Blaze FC', N'Italy')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (9, N'Falcon Squad', N'Argentina')
INSERT [dbo].[Team] ([TeamId], [Name], [Country]) VALUES (10, N'Phoenix United', N'Portugal')
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[YellowCards] ON 

INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (1, 2, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (2, 3, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (3, 4, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (4, 5, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (5, 6, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (6, 7, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (7, 8, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (8, 9, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (9, 10, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (10, 11, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (11, 2, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (12, 3, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (13, 4, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (14, 5, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (15, 6, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (16, 7, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (17, 8, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (18, 9, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (19, 10, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (20, 11, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (21, 2, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (22, 3, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (23, 4, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (24, 5, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (25, 6, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (26, 7, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (27, 8, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (28, 9, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (29, 10, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (30, 11, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (31, 2, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (32, 3, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (33, 4, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (34, 5, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (35, 6, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (36, 7, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (37, 8, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (38, 9, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (39, 10, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (40, 11, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (41, 2, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (42, 3, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (43, 4, 5, N'Player E receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (44, 5, 2, N'Player B receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (45, 6, 4, N'Player D receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (46, 7, 3, N'Player C receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (47, 8, 1, N'Player A receives a yellow card.')
INSERT [dbo].[YellowCards] ([YellowCardsId], [LogMatchId], [PlayerId], [Description]) VALUES (48, 9, 4, N'Player D receives a yellow card.')
SET IDENTITY_INSERT [dbo].[YellowCards] OFF
GO
ALTER TABLE [dbo].[Goals]  WITH CHECK ADD FOREIGN KEY([LogMatchId])
REFERENCES [dbo].[LogMatch] ([LogMatchId])
GO
ALTER TABLE [dbo].[Goals]  WITH CHECK ADD FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([PlayerId])
GO
ALTER TABLE [dbo].[LogMatch]  WITH CHECK ADD FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([MatchId])
GO
ALTER TABLE [dbo].[LogMatch]  WITH CHECK ADD FOREIGN KEY([WinnerTeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([AwayTeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([LogMatchId])
REFERENCES [dbo].[LogMatch] ([LogMatchId])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([MasterTeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([RefereeId])
REFERENCES [dbo].[Referee] ([RefereeId])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([StadiumId])
REFERENCES [dbo].[Stadium] ([StadiumId])
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO
ALTER TABLE [dbo].[RedCards]  WITH CHECK ADD FOREIGN KEY([LogMatchId])
REFERENCES [dbo].[LogMatch] ([LogMatchId])
GO
ALTER TABLE [dbo].[RedCards]  WITH CHECK ADD FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([PlayerId])
GO
ALTER TABLE [dbo].[YellowCards]  WITH CHECK ADD FOREIGN KEY([LogMatchId])
REFERENCES [dbo].[LogMatch] ([LogMatchId])
GO
ALTER TABLE [dbo].[YellowCards]  WITH CHECK ADD FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([PlayerId])
GO
