CREATE TABLE [dbo].[Страны](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Страна] [varchar](50) NULL,
 CONSTRAINT [PK_Страны] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Города](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Город] [varchar](50) NULL,
	[Страна] [int] NULL,
 CONSTRAINT [PK_Города] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Города]  WITH CHECK ADD  CONSTRAINT [Город_Страна] FOREIGN KEY([Страна])
REFERENCES [dbo].[Страны] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Города] CHECK CONSTRAINT [Город_Страна]
GO
CREATE TABLE [dbo].[Клиент](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [varchar](90) NULL,
	[Страна] [int] NULL,
	[Город] [int] NULL,
	[Телефон] [varchar](50) NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [Клиент_Город] FOREIGN KEY([Город])
REFERENCES [dbo].[Города] ([id])
GO

ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [Клиент_Город]
GO

ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [Клиент_Страна] FOREIGN KEY([Страна])
REFERENCES [dbo].[Страны] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [Клиент_Страна]
GO

CREATE TABLE [dbo].[Пассажир](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ДатаВылета] [smalldatetime] NULL,
	[Страна_назначения] [int] NULL,
	[Город_назначения] [int] NULL,
	[Клиент] [int] NULL,
	[Предприятие] [int] NULL,
	[НомерРейса] [int] NULL,
 CONSTRAINT [PK_Пассажир] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Пассажир]  WITH CHECK ADD  CONSTRAINT [Пассажир_Город] FOREIGN KEY([Город_назначения])
REFERENCES [dbo].[Города] ([id])
GO

ALTER TABLE [dbo].[Пассажир] CHECK CONSTRAINT [Пассажир_Город]
GO

ALTER TABLE [dbo].[Пассажир]  WITH CHECK ADD  CONSTRAINT [Пассажир_Страна] FOREIGN KEY([Страна_назначения])
REFERENCES [dbo].[Страны] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Пассажир] CHECK CONSTRAINT [Пассажир_Страна]
GO

ALTER TABLE [dbo].[Пассажир]  WITH CHECK ADD  CONSTRAINT [Пассажир-Клиент] FOREIGN KEY([Клиент])
REFERENCES [dbo].[Клиент] ([id])
GO

ALTER TABLE [dbo].[Пассажир] CHECK CONSTRAINT [Пассажир-Клиент]
GO

ALTER TABLE [dbo].[Пассажир]  WITH CHECK ADD  CONSTRAINT [Пассажир-Предприятие] FOREIGN KEY([Предприятие])
REFERENCES [dbo].[Предприятие] ([id])
GO

ALTER TABLE [dbo].[Пассажир] CHECK CONSTRAINT [Пассажир-Предприятие]
GO
