USE [ISA_Makeup_ProgWeb]
GO

/****** Object:  Table [dbo].[InventoryReg]    Script Date: 4/18/2021 9:57:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[InventoryReg](
	[productId] [varchar](5) NOT NULL,
	[productName] [varchar](20) NOT NULL,
	[price] [money] NOT NULL,
	[ivaSelect] [varchar](3) NOT NULL,
	[chkProduct] [varchar](10) NOT NULL,
	[registryDate] [date] NOT NULL,
	[comments] [varbinary](50) NULL,
 CONSTRAINT [PK_InventoryReg] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


