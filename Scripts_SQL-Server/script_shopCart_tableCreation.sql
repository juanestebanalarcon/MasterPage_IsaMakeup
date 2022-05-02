USE [ISA_Makeup_ProgWeb]
GO

/****** Object:  Table [dbo].[shopCart]    Script Date: 6/1/2021 10:44:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[shopCart](
	[productIdC] [varchar](20) NOT NULL,
	[productname] [varchar](60) NOT NULL,
	[price_] [int] NOT NULL,
	[cant] [int] NOT NULL,
	[total]  AS ([price_]*[cant]),
	[sessionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_shopCart] PRIMARY KEY CLUSTERED 
(
	[productIdC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[shopCart] ADD  CONSTRAINT [DF_shopCart_cant]  DEFAULT ((1)) FOR [cant]
GO


