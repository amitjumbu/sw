USE [EDMyReEsop]
GO
/****** Object:  Table [dbo].[CurrencyMaster]    Script Date: 06/10/2019 06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyMaster](
	[CurrencyID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[CurrencySymbol] [ntext] NOT NULL,
	[CurrencyAlias] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CurrencyMaster] ON 
GO
INSERT [dbo].[CurrencyMaster] ([CurrencyID], [CurrencyName], [CurrencySymbol], [CurrencyAlias]) VALUES (1, N'Indian Rupee', N'Rs.', N'INR')
GO
INSERT [dbo].[CurrencyMaster] ([CurrencyID], [CurrencyName], [CurrencySymbol], [CurrencyAlias]) VALUES (2, N'United States Dollar', N'&#36;', N'USD')
GO
INSERT [dbo].[CurrencyMaster] ([CurrencyID], [CurrencyName], [CurrencySymbol], [CurrencyAlias]) VALUES (3, N'Euro', N'&#8364;', N'EUR')
GO
INSERT [dbo].[CurrencyMaster] ([CurrencyID], [CurrencyName], [CurrencySymbol], [CurrencyAlias]) VALUES (4, N'British Pound', N'&#163;', N'GBP')
GO
INSERT [dbo].[CurrencyMaster] ([CurrencyID], [CurrencyName], [CurrencySymbol], [CurrencyAlias]) VALUES (5, N'Japanese Yen', N'&#165;', N'JPY')
GO
SET IDENTITY_INSERT [dbo].[CurrencyMaster] OFF
GO


SELECT	MIT.MIT_ID, MIT.INSTRUMENT_NAME, MIT.IS_ACTIVE, MIT.IS_AUTO_EXERCISE ,CIM.MIT_ID, CIM.CurrencyID, CIM.MSE_ID,CurM.CurrencyID,CurM.CurrencySymbol,CurM.CurrencyAlias,MSE.MSE_ID,CIM.SEM_VAL_RPT_ID,CIM.IS_ENABLED 
FROM  MST_INSTRUMENT_TYPE AS MIT
LEFT OUTER JOIN COMPANY_INSTRUMENT_MAPPING AS CIM ON CIM.MIT_ID = MIT.MIT_ID 
LEFT OUTER JOIN CurrencyMaster AS CurM ON CurM.CurrencyID = CIM.CurrencyID
LEFT OUTER JOIN MST_STOCK_EXCHANGE AS MSE ON MSE.MSE_ID = CIM.CIM_ID


SELECT Expr1= CASE 
			  WHEN (MSE.MSE_ID = '1') 
			  THEN 'NSE'
			  ELSE 'BSE' 
			  END 
from COMPANY_INSTRUMENT_MAPPING AS CM
LEFT OUTER JOIN MST_STOCK_EXCHANGE AS MSE ON MSE.MSE_ID = CM.CIM_ID