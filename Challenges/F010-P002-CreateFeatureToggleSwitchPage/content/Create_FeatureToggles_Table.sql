/****** Object:  Table [dbo].[FeatureToggles]    Script Date: 31-5-2018 13:46:24 ******/
DROP TABLE [dbo].[FeatureToggles]
GO
/****** Object:  Table [dbo].[FeatureToggles]    Script Date: 31-5-2018 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureToggles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.FeatureToggles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
INSERT [dbo].[FeatureToggles] ([Id], [Name], [Description], [Enabled]) VALUES (N'91b0ea86-f1e4-4d51-977e-58025dfd881c', N'SalesCampaignFeatureToggle', NULL, 1)
GO
INSERT [dbo].[FeatureToggles] ([Id], [Name], [Description], [Enabled]) VALUES (N'a5144d6f-3e07-47d9-a3b9-6b630ef1a4b5', N'HomePagefeatureToggle', NULL, 1)
GO
INSERT [dbo].[FeatureToggles] ([Id], [Name], [Description], [Enabled]) VALUES (N'9821753f-524c-4588-8f0c-6e263995af6a', N'HomePagefeatureToggleUI', NULL, 0)
GO
INSERT [dbo].[FeatureToggles] ([Id], [Name], [Description], [Enabled]) VALUES (N'67639dae-13fe-4983-80f9-dd74796cb1b7', N'ServiceAFeaturetoggle', NULL, 1)
GO
