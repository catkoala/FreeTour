USE [Travel]
GO
/****** Object:  Table [dbo].[account]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[userId] [int] NOT NULL,
	[userPsw] [varchar](50) NOT NULL,
	[userRank] [int] NOT NULL,
	[userName] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
 CONSTRAINT [PK__account__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[city]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[cityId] [int] NOT NULL,
	[cityName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[scene]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene](
	[sceneId] [int] NOT NULL,
	[cityId] [int] NOT NULL,
	[searchNum] [int] NOT NULL,
	[introduction] [ntext] NOT NULL,
 CONSTRAINT [PK__scene__0519C6AF] PRIMARY KEY CLUSTERED 
(
	[sceneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_image]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_image](
	[sceneId] [int] NOT NULL,
	[image] [image] NOT NULL,
	[image_id] [int] NOT NULL,
 CONSTRAINT [PK_scene_image_1] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_type]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_type](
	[sceneId] [int] NOT NULL,
	[seaside] [bit] NOT NULL,
	[shopping] [bit] NOT NULL,
	[art] [bit] NOT NULL,
	[food] [bit] NOT NULL,
	[mountain] [bit] NOT NULL,
	[urban] [bit] NOT NULL,
	[history] [bit] NOT NULL,
	[love] [bit] NOT NULL,
	[family] [bit] NOT NULL,
	[sports] [bit] NOT NULL,
 CONSTRAINT [PK_scene_type] PRIMARY KEY CLUSTERED 
(
	[sceneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scene_route]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scene_route](
	[fromId] [int] NOT NULL,
	[toId] [int] NOT NULL,
	[route] [xml] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[commentId] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[userId] [int] NOT NULL,
	[comment] [varchar](255) NOT NULL,
	[sceneId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grade]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grade](
	[gradeId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[sceneId] [int] NOT NULL,
	[grade] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[gradeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[route]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[route](
	[routeid] [int] NOT NULL,
	[sceneId] [int] NOT NULL,
	[seqId] [int] NOT NULL,
	[userId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[guide]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guide](
	[guideId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[guide] [ntext] NOT NULL,
 CONSTRAINT [PK_guide] PRIMARY KEY CLUSTERED 
(
	[guideId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_interest]    Script Date: 04/02/2013 22:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_interest](
	[userId] [int] NOT NULL,
	[seaside] [bit] NOT NULL,
	[shopping] [bit] NOT NULL,
	[art] [bit] NOT NULL,
	[food] [bit] NOT NULL,
	[mountain] [bit] NOT NULL,
	[urban] [bit] NOT NULL,
	[history] [bit] NOT NULL,
	[love] [bit] NOT NULL,
	[family] [bit] NOT NULL,
	[sports] [bit] NOT NULL,
 CONSTRAINT [PK_account_interest] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_account_interest_account]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[account_interest]  WITH CHECK ADD  CONSTRAINT [FK_account_interest_account] FOREIGN KEY([userId])
REFERENCES [dbo].[account] ([userId])
GO
ALTER TABLE [dbo].[account_interest] CHECK CONSTRAINT [FK_account_interest_account]
GO
/****** Object:  ForeignKey [FK__comment__sceneId__09DE7BCC]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK__comment__sceneId__09DE7BCC] FOREIGN KEY([sceneId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK__comment__sceneId__09DE7BCC]
GO
/****** Object:  ForeignKey [FK__comment__userId__0AD2A005]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK__comment__userId__0AD2A005] FOREIGN KEY([userId])
REFERENCES [dbo].[account] ([userId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK__comment__userId__0AD2A005]
GO
/****** Object:  ForeignKey [FK__grade__sceneId__0DAF0CB0]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[grade]  WITH CHECK ADD  CONSTRAINT [FK__grade__sceneId__0DAF0CB0] FOREIGN KEY([sceneId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[grade] CHECK CONSTRAINT [FK__grade__sceneId__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__grade__userId__0EA330E9]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[grade]  WITH CHECK ADD  CONSTRAINT [FK__grade__userId__0EA330E9] FOREIGN KEY([userId])
REFERENCES [dbo].[account] ([userId])
GO
ALTER TABLE [dbo].[grade] CHECK CONSTRAINT [FK__grade__userId__0EA330E9]
GO
/****** Object:  ForeignKey [FK_guide_account]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[guide]  WITH CHECK ADD  CONSTRAINT [FK_guide_account] FOREIGN KEY([userId])
REFERENCES [dbo].[account] ([userId])
GO
ALTER TABLE [dbo].[guide] CHECK CONSTRAINT [FK_guide_account]
GO
/****** Object:  ForeignKey [FK__route__sceneId__108B795B]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[route]  WITH CHECK ADD  CONSTRAINT [FK__route__sceneId__108B795B] FOREIGN KEY([sceneId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[route] CHECK CONSTRAINT [FK__route__sceneId__108B795B]
GO
/****** Object:  ForeignKey [FK__route__userId__117F9D94]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[route]  WITH CHECK ADD  CONSTRAINT [FK__route__userId__117F9D94] FOREIGN KEY([userId])
REFERENCES [dbo].[account] ([userId])
GO
ALTER TABLE [dbo].[route] CHECK CONSTRAINT [FK__route__userId__117F9D94]
GO
/****** Object:  ForeignKey [FK__scene__cityId__060DEAE8]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[scene]  WITH CHECK ADD  CONSTRAINT [FK__scene__cityId__060DEAE8] FOREIGN KEY([cityId])
REFERENCES [dbo].[city] ([cityId])
GO
ALTER TABLE [dbo].[scene] CHECK CONSTRAINT [FK__scene__cityId__060DEAE8]
GO
/****** Object:  ForeignKey [FK_scene_image_scene1]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[scene_image]  WITH CHECK ADD  CONSTRAINT [FK_scene_image_scene1] FOREIGN KEY([sceneId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[scene_image] CHECK CONSTRAINT [FK_scene_image_scene1]
GO
/****** Object:  ForeignKey [FK_scene_route_scene]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[scene_route]  WITH CHECK ADD  CONSTRAINT [FK_scene_route_scene] FOREIGN KEY([toId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[scene_route] CHECK CONSTRAINT [FK_scene_route_scene]
GO
/****** Object:  ForeignKey [FK_scene_route_scene1]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[scene_route]  WITH CHECK ADD  CONSTRAINT [FK_scene_route_scene1] FOREIGN KEY([toId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[scene_route] CHECK CONSTRAINT [FK_scene_route_scene1]
GO
/****** Object:  ForeignKey [FK_scene_type_scene]    Script Date: 04/02/2013 22:43:53 ******/
ALTER TABLE [dbo].[scene_type]  WITH CHECK ADD  CONSTRAINT [FK_scene_type_scene] FOREIGN KEY([sceneId])
REFERENCES [dbo].[scene] ([sceneId])
GO
ALTER TABLE [dbo].[scene_type] CHECK CONSTRAINT [FK_scene_type_scene]
GO
