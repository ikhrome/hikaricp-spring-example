-- Создаем БД. Это дамп для нее.
-- Внимание! MS SQL Server! У меня - 2016 Developer Edition
-- На рабочем сервере (10.2.8.2) - 2012
USE [disp_jdbc]
GO
/****** Object:  Table [dbo].[Dogs]    Script Date: 26.08.2017 10:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Dogs] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dogs] ON
GO
INSERT [dbo].[Dogs] ([Id], [Name], [BirthDate], [Location]) VALUES (1, N'Betsie', CAST(N'2015-11-02' AS Date), N'San-Francisco, Ben''s house')
GO
INSERT [dbo].[Dogs] ([Id], [Name], [BirthDate], [Location]) VALUES (2, N'Johny', CAST(N'2015-12-26' AS Date), N'Florida, Hubert''s house')
GO
INSERT [dbo].[Dogs] ([Id], [Name], [BirthDate], [Location]) VALUES (3, N'Nibbler', CAST(N'2012-07-25' AS Date), N'Nibblonian')
GO
SET IDENTITY_INSERT [dbo].[Dogs] OFF
GO
