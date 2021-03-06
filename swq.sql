USE [EDMyReEsop]
GO
/****** Object:  Table [dbo].[COMPANY_INSTRUMENT_MAPPING]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING](
	[CIM_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MIT_ID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[MSE_ID] [nvarchar](100) NULL,
	[SEM_VAL_RPT_ID] [int] NULL,
	[IS_ENABLED] [tinyint] NULL,
	[INS_DISPLY_NAME] [nvarchar](500) NULL,
	[CAL_PERQUSITE_VAL] [tinyint] NOT NULL,
	[EXCEPT_FOR_PERQ_VAL] [tinyint] NOT NULL,
	[CAL_PROPORTIONATE_VAL] [tinyint] NOT NULL,
	[EXCEPT_FOR_PROPORT_VAL] [tinyint] NOT NULL,
	[EXCEPT_FOR_FMV_VAL] [tinyint] NOT NULL,
	[EXCEPT_FOR_FMV] [nvarchar](10) NULL,
	[EXCEPT_FOR_PERQUISITE] [nvarchar](10) NULL,
	[EXCEPT_FOR_PROPORTIONATE] [nvarchar](10) NULL,
	[COUNTRY_CATEGORY_PROPORT] [nvarchar](50) NULL,
	[PAYMENTMODE_BASED_ON] [varchar](20) NULL,
	[EXCEPT_FOR_TAXRATE_VAL] [tinyint] NULL,
	[EXCEPT_FOR_TAXRATE] [nvarchar](10) NULL,
	[IS_TAXRATE_ACTIVE] [tinyint] NULL,
	[IS_TAXRATEEXCEPTION_ACTIVE] [tinyint] NULL,
	[CREATED_BY] [nvarchar](100) NOT NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [nvarchar](100) NOT NULL,
	[UPDATED_ON] [datetime] NOT NULL,
	[IS_PAYMENTWINDOW_ENABLED] [char](1) NULL,
	[NUMBEROFDAYS] [int] NULL,
	[PAYMENT_CLOSURE_MSG] [varchar](1000) NULL,
	[TAXCALCULATION_BASEDON] [varchar](50) NULL,
	[EXCEPT_FOR_TAXRATE_EMPLOYEE] [nchar](3) NULL,
	[ISActivedforEntity] [bigint] NULL,
	[EntityBaseOn] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CIM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPANY_MASTER]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_MASTER](
	[CompanyID] [varchar](20) NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
	[CompanyAddress] [ntext] NULL,
	[CompanyURL] [varchar](50) NULL,
	[CompanyEmailID] [varchar](50) NOT NULL,
	[AdminEmailID] [varchar](50) NOT NULL,
	[AdminUserID] [varchar](20) NOT NULL,
	[AdminPassword] [varchar](20) NOT NULL,
	[StockExchangeType] [char](1) NULL,
	[StockExchangeCode] [varchar](20) NULL,
	[LastUpdatedBy] [varchar](20) NOT NULL,
	[SMPTServerIp] [nvarchar](50) NULL,
	[SMPTServerPort] [char](15) NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[MaxLoginAttempts] [numeric](18, 0) NOT NULL,
	[ISFUNDINGALLOWED] [bit] NOT NULL,
	[IsNominationEnabled] [tinyint] NOT NULL,
	[DMSetting_Note] [varchar](max) NULL,
	[IsSSOActivated] [bit] NOT NULL,
	[SITEURL] [varchar](500) NULL,
	[FMVCalculation_Note] [varchar](max) NULL,
	[IsPUPEnabled] [bit] NOT NULL,
	[DisplayAs] [varchar](50) NOT NULL,
	[BaseCurrencyID] [int] NOT NULL,
	[VwMenuForGrpCompany] [varchar](10) NULL,
	[VersionNumber] [varchar](10) NULL,
	[BROKER_SETTING_NOTE] [varchar](max) NULL,
	[IS_ADS_ENABLED] [bit] NOT NULL,
	[IsListingEnabled] [bit] NULL,
	[IsHRMSEnabled] [bit] NOT NULL,
	[AlertExEmployees] [bit] NOT NULL,
	[Is_PFUTP_Setting] [bit] NOT NULL,
	[IS_EGRANTS_ENABLED] [bit] NOT NULL,
	[IS_SCHWISE_DOC_UPLOAD] [bit] NOT NULL,
	[IS_CONSENT_SET] [bit] NOT NULL,
	[CONSENT_MESSAGE] [varchar](max) NULL,
	[AuthenticationModeID] [tinyint] NOT NULL,
	[IsSSOAPIActivated] [tinyint] NOT NULL,
	[SSOAPIParams] [varchar](200) NULL,
	[SSOAPIURL] [varchar](200) NULL,
	[LogoutURL] [varchar](500) NULL,
 CONSTRAINT [PK_CompanyMaster] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU_SUB_MENU]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU_SUB_MENU](
	[Menu_id] [int] IDENTITY(1,1) NOT NULL,
	[Submenu_id] [int] NULL,
	[MenuName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](128) NULL,
	[MenuUrl] [nvarchar](500) NULL,
	[MenuSequence] [int] NULL,
	[IsActive] [bit] NULL,
	[UserTypeId] [int] NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_On] [datetime] NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_On] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_INSTRUMENT_TYPE]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_INSTRUMENT_TYPE](
	[MIT_ID] [int] IDENTITY(1,1) NOT NULL,
	[INSTRUMENT_NAME] [nvarchar](500) NOT NULL,
	[IS_ACTIVE] [tinyint] NULL,
	[IS_AUTO_EXERCISE] [tinyint] NULL,
	[IS_SAR_ENABLED] [tinyint] NULL,
	[INSTRUMENT_GROUP] [bigint] NOT NULL,
	[CREATED_BY] [nvarchar](100) NOT NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [nvarchar](100) NOT NULL,
	[UPDATED_ON] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MIT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_STOCK_EXCHANGE]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_STOCK_EXCHANGE](
	[MSE_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[STOCK_EXCHANGE_NAME] [nvarchar](100) NOT NULL,
	[STOCK_EXCHANGE_SYMBOL] [nvarchar](100) NOT NULL,
	[STOCK_EXCHANGE_URL] [nvarchar](500) NOT NULL,
	[IS_ACTIVE] [tinyint] NULL,
	[CurrencyID] [int] NOT NULL,
	[CREATED_BY] [nvarchar](100) NOT NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [nvarchar](100) NOT NULL,
	[UPDATED_ON] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MSE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Department] [varchar](20) NOT NULL,
	[Gender] [varchar](6) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[COMPANY_INSTRUMENT_MAPPING] ON 
GO
INSERT [dbo].[COMPANY_INSTRUMENT_MAPPING] ([CIM_ID], [MIT_ID], [CurrencyID], [MSE_ID], [SEM_VAL_RPT_ID], [IS_ENABLED], [INS_DISPLY_NAME], [CAL_PERQUSITE_VAL], [EXCEPT_FOR_PERQ_VAL], [CAL_PROPORTIONATE_VAL], [EXCEPT_FOR_PROPORT_VAL], [EXCEPT_FOR_FMV_VAL], [EXCEPT_FOR_FMV], [EXCEPT_FOR_PERQUISITE], [EXCEPT_FOR_PROPORTIONATE], [COUNTRY_CATEGORY_PROPORT], [PAYMENTMODE_BASED_ON], [EXCEPT_FOR_TAXRATE_VAL], [EXCEPT_FOR_TAXRATE], [IS_TAXRATE_ACTIVE], [IS_TAXRATEEXCEPTION_ACTIVE], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON], [IS_PAYMENTWINDOW_ENABLED], [NUMBEROFDAYS], [PAYMENT_CLOSURE_MSG], [TAXCALCULATION_BASEDON], [EXCEPT_FOR_TAXRATE_EMPLOYEE], [ISActivedforEntity], [EntityBaseOn]) VALUES (1, 1, 1, N'1,2', 1, 1, N'Stock Options ESOPs', 1, 0, 0, 0, 0, NULL, N'R', N'C', N'AC', N'rdoCompanyLevel', 1, N'C', 0, 0, N'Neha Tank', CAST(N'2018-02-15T13:01:37.750' AS DateTime), N'admin', CAST(N'2018-04-02T11:55:25.170' AS DateTime), N'P', 0, N'', N'rdoPerqusite', N'E  ', NULL, NULL)
GO
INSERT [dbo].[COMPANY_INSTRUMENT_MAPPING] ([CIM_ID], [MIT_ID], [CurrencyID], [MSE_ID], [SEM_VAL_RPT_ID], [IS_ENABLED], [INS_DISPLY_NAME], [CAL_PERQUSITE_VAL], [EXCEPT_FOR_PERQ_VAL], [CAL_PROPORTIONATE_VAL], [EXCEPT_FOR_PROPORT_VAL], [EXCEPT_FOR_FMV_VAL], [EXCEPT_FOR_FMV], [EXCEPT_FOR_PERQUISITE], [EXCEPT_FOR_PROPORTIONATE], [COUNTRY_CATEGORY_PROPORT], [PAYMENTMODE_BASED_ON], [EXCEPT_FOR_TAXRATE_VAL], [EXCEPT_FOR_TAXRATE], [IS_TAXRATE_ACTIVE], [IS_TAXRATEEXCEPTION_ACTIVE], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON], [IS_PAYMENTWINDOW_ENABLED], [NUMBEROFDAYS], [PAYMENT_CLOSURE_MSG], [TAXCALCULATION_BASEDON], [EXCEPT_FOR_TAXRATE_EMPLOYEE], [ISActivedforEntity], [EntityBaseOn]) VALUES (2, 6, 1, N'1,2', 1, 1, N'Equity Settled SARs', 1, 0, 1, 1, 0, N'', N'R', N'C', N'AC', N'rdoCompanyLevel', 1, N'C', 0, 0, N'Neha Tank', CAST(N'2018-02-15T13:01:37.767' AS DateTime), N'admin', CAST(N'2018-04-02T11:55:25.173' AS DateTime), N'P', 0, N'', N'rdoPerqusite', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[COMPANY_INSTRUMENT_MAPPING] OFF
GO
INSERT [dbo].[COMPANY_MASTER] ([CompanyID], [CompanyName], [CompanyAddress], [CompanyURL], [CompanyEmailID], [AdminEmailID], [AdminUserID], [AdminPassword], [StockExchangeType], [StockExchangeCode], [LastUpdatedBy], [SMPTServerIp], [SMPTServerPort], [LastUpdatedOn], [MaxLoginAttempts], [ISFUNDINGALLOWED], [IsNominationEnabled], [DMSetting_Note], [IsSSOActivated], [SITEURL], [FMVCalculation_Note], [IsPUPEnabled], [DisplayAs], [BaseCurrencyID], [VwMenuForGrpCompany], [VersionNumber], [BROKER_SETTING_NOTE], [IS_ADS_ENABLED], [IsListingEnabled], [IsHRMSEnabled], [AlertExEmployees], [Is_PFUTP_Setting], [IS_EGRANTS_ENABLED], [IS_SCHWISE_DOC_UPLOAD], [IS_CONSENT_SET], [CONSENT_MESSAGE], [AuthenticationModeID], [IsSSOAPIActivated], [SSOAPIParams], [SSOAPIURL], [LogoutURL]) VALUES (N'Airtel', N'Airtel', N'Airtel', N'', N'helpdesk@esopdirect.com', N'helpdesk@esopdirect.com', N'admin', N'esop', N'N', N'', N'admin', N'smtp.office365.com', N'25             ', CAST(N'2010-11-18T00:00:00.000' AS DateTime), CAST(6 AS Numeric(18, 0)), 0, 0, N'0', 0, N'1', N'&lt;P jQuery19107494724131849904="1332"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt; mso-fareast-font-family: Perpetua; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: ''Times New Roman''; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA" jQuery19107494724131849904="1333"&gt;  &lt;TABLE style="MARGIN: auto auto auto 3pt; WIDTH: 98%; mso-cellspacing: 1.5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in" border=0 cellPadding=0 jQuery19107494724131849904="1334"&gt;  &lt;TBODY jQuery19107494724131849904="1335"&gt;  &lt;TR style="mso-yfti-irow: 0; mso-yfti-firstrow: yes" jQuery19107494724131849904="1336"&gt;  &lt;TD style="BORDER-BOTTOM: #f0f0f0; BORDER-LEFT: #f0f0f0; PADDING-BOTTOM: 6pt; PADDING-LEFT: 6pt; PADDING-RIGHT: 6pt; BACKGROUND: #e4e3e3; BORDER-TOP: #f0f0f0; BORDER-RIGHT: #f0f0f0; PADDING-TOP: 6pt" jQuery19107494724131849904="1337"&gt;  &lt;P style="LINE-HEIGHT: 10.8pt; MARGIN: 3pt 0in" jQuery19107494724131849904="1338"&gt;&lt;B jQuery19107494724131849904="1339"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1340"&gt;The FMV will be the average of the opening and closing (sell) prices on the stock exchange which shows highest volume of trading on the date of Exercise. In case there is no trading on date of exercise, FMV will be the closing price on the date closest to and immediately preceding the date of exercise, on the stock exchange which shows highest volume of trading. &lt;?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /&gt;&lt;o:p jQuery19107494724131849904="1341"&gt;&lt;/o:p&gt;</SPAN></B></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="mso-yfti-irow: 1" jQuery19107494724131849904="1342"&gt;  &lt;TD style="BORDER-BOTTOM: #f0f0f0; BORDER-LEFT: #f0f0f0; PADDING-BOTTOM: 0.75pt; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0.75pt; PADDING-RIGHT: 0.75pt; BORDER-TOP: #f0f0f0; BORDER-RIGHT: #f0f0f0; PADDING-TOP: 0.75pt" jQuery19107494724131849904="1343"&gt;  &lt;P style="MARGIN: 3pt 0in" jQuery19107494724131849904="1344"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1345"&gt; &lt;o:p jQuery19107494724131849904="1346"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 0.2in; mso-yfti-irow: 2" jQuery19107494724131849904="1347"&gt;  &lt;TD style="BORDER-BOTTOM: #f0f0f0; BORDER-LEFT: #f0f0f0; PADDING-BOTTOM: 0.75pt; PADDING-LEFT: 6pt; PADDING-RIGHT: 0.75pt; BACKGROUND: #cdcccc; HEIGHT: 0.2in; BORDER-TOP: #f0f0f0; BORDER-RIGHT: #f0f0f0; PADDING-TOP: 0.75pt" jQuery19107494724131849904="1348"&gt;  &lt;P style="MARGIN: 3pt 0in" jQuery19107494724131849904="1349"&gt;&lt;B jQuery19107494724131849904="1350"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1351"&gt;For example:</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1352"&gt; &lt;o:p jQuery19107494724131849904="1353"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 76.2pt; mso-yfti-irow: 3" jQuery19107494724131849904="1354"&gt;  &lt;TD style="BORDER-BOTTOM: #f0f0f0; BORDER-LEFT: #f0f0f0; PADDING-BOTTOM: 0.75pt; PADDING-LEFT: 0.75pt; PADDING-RIGHT: 0.75pt; BACKGROUND: #e4e3e3; HEIGHT: 76.2pt; BORDER-TOP: #f0f0f0; BORDER-RIGHT: #f0f0f0; PADDING-TOP: 0.75pt" vAlign=top jQuery19107494724131849904="1355"&gt;  &lt;TABLE style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; WIDTH: 100%; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in" border=1 cellSpacing=0 cellPadding=0 jQuery19107494724131849904="1356"&gt;  &lt;TBODY jQuery19107494724131849904="1357"&gt;  &lt;TR style="HEIGHT: 22.2pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes" jQuery19107494724131849904="1358"&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 12%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1359"&gt;  &lt;P style="MARGIN: 0in 0in 0pt" jQuery19107494724131849904="1360"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1361"&gt; &lt;o:p jQuery19107494724131849904="1362"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" colSpan=3 jQuery19107494724131849904="1363"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1364"&gt;&lt;B jQuery19107494724131849904="1365"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1366"&gt;NSE</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1367"&gt;&lt;o:p jQuery19107494724131849904="1368"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" colSpan=3 jQuery19107494724131849904="1369"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1370"&gt;&lt;B jQuery19107494724131849904="1371"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1372"&gt;BSE</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1373"&gt;&lt;o:p jQuery19107494724131849904="1374"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 22.2pt; mso-yfti-irow: 1" jQuery19107494724131849904="1375"&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1376"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1377"&gt;&lt;B jQuery19107494724131849904="1378"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1379"&gt;Stock Price Date</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1380"&gt; &lt;o:p jQuery19107494724131849904="1381"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 14%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1382"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1383"&gt;&lt;B jQuery19107494724131849904="1384"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1385"&gt;Opening Price</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1386"&gt;&lt;o:p jQuery19107494724131849904="1387"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 13%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1388"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1389"&gt;&lt;B jQuery19107494724131849904="1390"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1391"&gt;Closing price</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1392"&gt;&lt;o:p jQuery19107494724131849904="1393"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 16%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1394"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1395"&gt;&lt;B jQuery19107494724131849904="1396"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1397"&gt;Trading volume </SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1398"&gt;&lt;o:p jQuery19107494724131849904="1399"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 15%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1400"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1401"&gt;&lt;B jQuery19107494724131849904="1402"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1403"&gt;Opening Price </SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1404"&gt;&lt;o:p jQuery19107494724131849904="1405"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 14%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1406"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1407"&gt;&lt;B jQuery19107494724131849904="1408"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1409"&gt;Closing price</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1410"&gt;&lt;o:p jQuery19107494724131849904="1411"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; WIDTH: 16%; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 22.2pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" jQuery19107494724131849904="1412"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1413"&gt;&lt;B jQuery19107494724131849904="1414"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1415"&gt;Trading volume</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1416"&gt;&lt;o:p jQuery19107494724131849904="1417"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 22.8pt; mso-yfti-irow: 2; mso-yfti-lastrow: yes" jQuery19107494724131849904="1418"&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1419"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1420"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1421"&gt;19-Nov-10 &lt;o:p jQuery19107494724131849904="1422"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1423"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1424"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1425"&gt;100.00 &lt;o:p jQuery19107494724131849904="1426"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1427"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1428"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1429"&gt;200.00 &lt;o:p jQuery19107494724131849904="1430"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1431"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1432"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1433"&gt;16,87,934 &lt;o:p jQuery19107494724131849904="1434"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1435"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1436"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1437"&gt;100.00 &lt;o:p jQuery19107494724131849904="1438"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1439"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1440"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1441"&gt;190.00 &lt;o:p jQuery19107494724131849904="1442"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; HEIGHT: 22.8pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" jQuery19107494724131849904="1443"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1444"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1445"&gt;1,12,323 &lt;o:p jQuery19107494724131849904="1446"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;&lt;/TBODY&gt;&lt;/TABLE&gt;&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="mso-yfti-irow: 4; mso-yfti-lastrow: yes" jQuery19107494724131849904="1447"&gt;  &lt;TD style="BORDER-BOTTOM: #f0f0f0; BORDER-LEFT: #f0f0f0; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #e4e3e3; BORDER-TOP: #f0f0f0; BORDER-RIGHT: #f0f0f0; PADDING-TOP: 0in" jQuery19107494724131849904="1448"&gt;  &lt;TABLE style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; WIDTH: 100%; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in" border=1 cellSpacing=0 cellPadding=0 jQuery19107494724131849904="1449"&gt;  &lt;TBODY jQuery19107494724131849904="1450"&gt;  &lt;TR style="HEIGHT: 16.8pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes" jQuery19107494724131849904="1451"&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 16.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1452"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1453"&gt;&lt;B jQuery19107494724131849904="1454"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1455"&gt;Exercise Date</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1456"&gt;&lt;o:p jQuery19107494724131849904="1457"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 16.8pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1458"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1459"&gt;&lt;B jQuery19107494724131849904="1460"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1461"&gt;Type of Day</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1462"&gt;&lt;o:p jQuery19107494724131849904="1463"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; BACKGROUND: #cdcccc; HEIGHT: 16.8pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" jQuery19107494724131849904="1464"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1465"&gt;&lt;B jQuery19107494724131849904="1466"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1467"&gt;FMV</SPAN></B>&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; COLOR: black; FONT-SIZE: 7pt" jQuery19107494724131849904="1468"&gt;&lt;o:p jQuery19107494724131849904="1469"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 16.2pt; mso-yfti-irow: 1" jQuery19107494724131849904="1470"&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 16.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1471"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1472"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1473"&gt;19-Nov-10 &lt;o:p jQuery19107494724131849904="1474"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 16.2pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1475"&gt;  &lt;P style="MARGIN: 0in 0in 0pt" jQuery19107494724131849904="1476"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1477"&gt;Trading Day &lt;o:p jQuery19107494724131849904="1478"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 16.2pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" jQuery19107494724131849904="1479"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1480"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1481"&gt;150.00 &lt;o:p jQuery19107494724131849904="1482"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;  &lt;TR style="HEIGHT: 17.4pt; mso-yfti-irow: 2; mso-yfti-lastrow: yes" jQuery19107494724131849904="1483"&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 17.4pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1484"&gt;  &lt;P style="TEXT-ALIGN: center; MARGIN: 0in 0in 0pt" align=center jQuery19107494724131849904="1485"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1486"&gt;21-Nov-10 &lt;o:p jQuery19107494724131849904="1487"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 17.4pt; BORDER-TOP: black; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0in" jQuery19107494724131849904="1488"&gt;  &lt;P style="MARGIN: 0in 0in 0pt" jQuery19107494724131849904="1489"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1490"&gt;Non-trading Day &lt;o:p jQuery19107494724131849904="1491"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;  &lt;TD style="BORDER-BOTTOM: black; BORDER-LEFT: black; PADDING-BOTTOM: 0in; BACKGROUND-COLOR: transparent; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; HEIGHT: 17.4pt; BORDER-TOP: black; BORDER-RIGHT: black; PADDING-TOP: 0in" jQuery19107494724131849904="1492"&gt;  &lt;P style="TEXT-ALIGN: right; MARGIN: 0in 0in 0pt" align=right jQuery19107494724131849904="1493"&gt;&lt;SPAN style="FONT-FAMILY: ''Verdana'',''sans-serif''; FONT-SIZE: 7pt" jQuery19107494724131849904="1494"&gt;200.00 &lt;o:p jQuery19107494724131849904="1495"&gt;&lt;/o:p&gt;</SPAN></P>&lt;/TD&gt;&lt;/TR&gt;&lt;/TBODY&gt;&lt;/TABLE&gt;&lt;/TD&gt;&lt;/TR&gt;&lt;/TBODY&gt;&lt;/TABLE&gt;</SPAN></P>', 1, N'PUP Scheme', 1, N'1|0|0', N'7.1.5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, N'', 0, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MENU_SUB_MENU] ON 
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (1, 0, N'Dashboard', N'Dashboard', N'../Dashboard/EmployeeDashboard.aspx', 1, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:29:24.470' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:29:24.470' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (2, 0, N'e-Grants', N'e-Grants', N'../Employee/OnlineGrants.aspx', 1, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.177' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.177' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (3, 0, N'Exercise', N'Exercise', N'', 3, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.193' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.193' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (4, 3, N'Prevesting', N'RSU Estimated Payment', N'../Employee/Prevesting.aspx', 1, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.210' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.210' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (5, 3, N'Exercise Now', N'Exercise Now', N'../Employee/ExerciseNow.aspx', 2, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.217' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.217' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (6, 3, N'In Process', N'In Process', N'../Employee/InProcess.aspx', 3, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.220' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.220' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (7, 3, N'View Allotment', N'View Allotment', N'../Employee/ViewAllotment.aspx', 4, 0, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.227' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.227' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (8, 0, N'Reports', N'Reports', N'', 4, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.240' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.240' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (9, 8, N'Report Dashboard', N'Report Dashboard', N'../Dashboard/ReportDashboard.aspx', 1, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.250' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.250' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (10, 8, N'My Summary Report', N'My Summary Report', N'../EmployeeReports/MySummaryReport.aspx', 2, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.263' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.263' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (11, 0, N'Information Center', N'Information Center', N'', 5, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.270' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.270' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (12, 11, N'FAQs', N'FAQs', N'../Employee/FAQ.aspx', 1, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.280' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.280' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (13, 11, N'Highlights', N'Highlights', N'../Employee/Highlights.aspx', 2, 0, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.290' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.290' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (14, 11, N'Financials', N'Financials', N'../Employee/Financials.aspx', 3, 0, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.300' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.300' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (15, 11, N'Scheme Details', N'Scheme Details', N'../Employee/SchemeDetails.aspx', 4, 1, 3, N'Top', N'ADMIN', CAST(N'2019-04-30T18:30:41.313' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.313' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (16, 0, N'Profile', N'Profile', N'../Employee/UserProfile.aspx', 1, 1, 3, N'Left', N'ADMIN', CAST(N'2019-04-30T18:30:41.347' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.347' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (17, 0, N'Nomination', N'Nomination', N'../Employee/Nomination.aspx', 2, 1, 3, N'Left', N'ADMIN', CAST(N'2019-04-30T18:30:41.357' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.357' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (18, 0, N'Change Password', N'Change Password', N'', 3, 1, 3, N'Left', N'ADMIN', CAST(N'2019-04-30T18:30:41.363' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.363' AS DateTime))
GO
INSERT [dbo].[MENU_SUB_MENU] ([Menu_id], [Submenu_id], [MenuName], [DisplayName], [MenuUrl], [MenuSequence], [IsActive], [UserTypeId], [Position], [Created_By], [Created_On], [Updated_By], [Updated_On]) VALUES (19, 0, N'Logout', N'Logout', N'', 4, 1, 3, N'Left', N'ADMIN', CAST(N'2019-04-30T18:30:41.370' AS DateTime), N'ADMIN', CAST(N'2019-04-30T18:30:41.370' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MENU_SUB_MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[MST_INSTRUMENT_TYPE] ON 
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (1, N'Stock Options ESOPs', 1, 0, 0, 1030, N'ADMIN', CAST(N'2017-08-18T16:34:01.850' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.850' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (2, N'Stock Options RSU', 1, 0, 0, 1030, N'ADMIN', CAST(N'2017-08-18T16:34:01.867' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.867' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (3, N'ADR - ESOPs', 1, 0, 0, 1029, N'ADMIN', CAST(N'2017-08-18T16:34:01.877' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.877' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (4, N'ADR - RSU', 1, 0, 0, 1029, N'ADMIN', CAST(N'2017-08-18T16:34:01.890' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.890' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (5, N'Phantom', 1, 0, 0, 1028, N'ADMIN', CAST(N'2017-08-18T16:34:01.900' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.900' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (6, N'Equity Settled SARs', 1, 0, 1, 1031, N'ADMIN', CAST(N'2017-08-18T16:34:01.917' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.917' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (7, N'Cash Settled SARs', 1, 0, 1, 1031, N'ADMIN', CAST(N'2017-08-18T16:34:01.927' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.927' AS DateTime))
GO
INSERT [dbo].[MST_INSTRUMENT_TYPE] ([MIT_ID], [INSTRUMENT_NAME], [IS_ACTIVE], [IS_AUTO_EXERCISE], [IS_SAR_ENABLED], [INSTRUMENT_GROUP], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (8, N'Equity & Cash Settled SARs', 1, 0, 1, 1031, N'ADMIN', CAST(N'2017-08-18T16:34:01.943' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:34:01.943' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MST_INSTRUMENT_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[MST_STOCK_EXCHANGE] ON 
GO
INSERT [dbo].[MST_STOCK_EXCHANGE] ([MSE_ID], [STOCK_EXCHANGE_NAME], [STOCK_EXCHANGE_SYMBOL], [STOCK_EXCHANGE_URL], [IS_ACTIVE], [CurrencyID], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (1, N'National Stock Exchange of India Ltd', N'NSE', N'https://www.nseindia.com/', 1, 1, N'ADMIN', CAST(N'2017-08-18T16:33:59.523' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:33:59.523' AS DateTime))
GO
INSERT [dbo].[MST_STOCK_EXCHANGE] ([MSE_ID], [STOCK_EXCHANGE_NAME], [STOCK_EXCHANGE_SYMBOL], [STOCK_EXCHANGE_URL], [IS_ACTIVE], [CurrencyID], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (2, N'Bombay Stock Exchange', N'BSE', N'http://www.bseindia.com/', 1, 1, N'ADMIN', CAST(N'2017-08-18T16:33:59.570' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:33:59.570' AS DateTime))
GO
INSERT [dbo].[MST_STOCK_EXCHANGE] ([MSE_ID], [STOCK_EXCHANGE_NAME], [STOCK_EXCHANGE_SYMBOL], [STOCK_EXCHANGE_URL], [IS_ACTIVE], [CurrencyID], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (3, N'The New York Stock Exchange', N'NYSE', N'https://www.nyse.com/index', 1, 2, N'ADMIN', CAST(N'2017-08-18T16:33:59.580' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:33:59.580' AS DateTime))
GO
INSERT [dbo].[MST_STOCK_EXCHANGE] ([MSE_ID], [STOCK_EXCHANGE_NAME], [STOCK_EXCHANGE_SYMBOL], [STOCK_EXCHANGE_URL], [IS_ACTIVE], [CurrencyID], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (4, N'Hong Kong Stock Exchange', N'HK', N'https://www.hkex.com.hk/eng/index.htm', 1, 2, N'ADMIN', CAST(N'2017-08-18T16:33:59.587' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:33:59.587' AS DateTime))
GO
INSERT [dbo].[MST_STOCK_EXCHANGE] ([MSE_ID], [STOCK_EXCHANGE_NAME], [STOCK_EXCHANGE_SYMBOL], [STOCK_EXCHANGE_URL], [IS_ACTIVE], [CurrencyID], [CREATED_BY], [CREATED_ON], [UPDATED_BY], [UPDATED_ON]) VALUES (5, N'Shanghai Stock Exchange', N'SH', N'https://www.nyse.com/index', 1, 2, N'ADMIN', CAST(N'2017-08-18T16:33:59.597' AS DateTime), N'ADMIN', CAST(N'2017-08-18T16:33:59.597' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MST_STOCK_EXCHANGE] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 
GO
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [City], [Department], [Gender]) VALUES (1, N'Amit', N'Varanasi', N'Tech', N'Male')
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [IS_ENABLED]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [CAL_PERQUSITE_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [EXCEPT_FOR_PERQ_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [CAL_PROPORTIONATE_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [EXCEPT_FOR_PROPORT_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [EXCEPT_FOR_FMV_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [EXCEPT_FOR_TAXRATE_VAL]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [IS_TAXRATE_ACTIVE]
GO
ALTER TABLE [dbo].[COMPANY_INSTRUMENT_MAPPING] ADD  DEFAULT ((0)) FOR [IS_TAXRATEEXCEPTION_ACTIVE]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [ISFUNDINGALLOWED]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsNominationEnabled]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsSSOActivated]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT (NULL) FOR [SITEURL]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsPUPEnabled]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ('PUP Scheme') FOR [DisplayAs]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((1)) FOR [BaseCurrencyID]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IS_ADS_ENABLED]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsListingEnabled]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsHRMSEnabled]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [AlertExEmployees]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [Is_PFUTP_Setting]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IS_EGRANTS_ENABLED]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IS_SCHWISE_DOC_UPLOAD]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IS_CONSENT_SET]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [AuthenticationModeID]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT ((0)) FOR [IsSSOAPIActivated]
GO
ALTER TABLE [dbo].[COMPANY_MASTER] ADD  DEFAULT (NULL) FOR [LogoutURL]
GO
ALTER TABLE [dbo].[MENU_SUB_MENU] ADD  DEFAULT ('Top') FOR [Position]
GO
ALTER TABLE [dbo].[MST_INSTRUMENT_TYPE] ADD  DEFAULT ((0)) FOR [IS_ACTIVE]
GO
ALTER TABLE [dbo].[MST_INSTRUMENT_TYPE] ADD  DEFAULT ((0)) FOR [IS_AUTO_EXERCISE]
GO
ALTER TABLE [dbo].[MST_INSTRUMENT_TYPE] ADD  DEFAULT ((0)) FOR [IS_SAR_ENABLED]
GO
ALTER TABLE [dbo].[MST_STOCK_EXCHANGE] ADD  DEFAULT ((0)) FOR [IS_ACTIVE]
GO
/****** Object:  StoredProcedure [dbo].[PROC_GET_COMP_INSTRUMENT_LIST]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_GET_COMP_INSTRUMENT_LIST]
AS
BEGIN

	SET NOCOUNT ON;			

	SELECT 
		MIT.MIT_ID,
		(CASE WHEN ISNull(CIM.INS_DISPLY_NAME,'') != '' THEN 
			CIM.INS_DISPLY_NAME
		ELSE 
			MIT.INSTRUMENT_NAME
		END) AS INSTRUMENT_NAME, ISNULL(EXCEPT_FOR_TAXRATE_VAL,0) AS EXCEPT_FOR_TAXRATE_VAL,
		CONVERT(BIT, ISNULL(CIM.IS_TAXRATE_ACTIVE,0)) AS IS_TAXRATE_ACTIVE, 
		CONVERT(BIT,ISNULL(CIM.IS_TAXRATEEXCEPTION_ACTIVE,0)) AS IS_TAXRATEEXCEPTION_ACTIVE,
		ISNULL(PAYMENTMODE_BASED_ON,'') AS PAYMENTMODE_BASED_ON
		,COALESCE(NULLIF(EXCEPT_FOR_TAXRATE,''),'R') AS EXCEPT_FOR_TAXRATE,ISNULL(CIM.IS_PAYMENTWINDOW_ENABLED,'P') AS IS_PAYMENTWINDOW_ENABLED,CIM.NUMBEROFDAYS,CIM.PAYMENT_CLOSURE_MSG,RTRIM(EXCEPT_FOR_TAXRATE_EMPLOYEE) AS EXCEPT_FOR_TAXRATE_EMPLOYEE,TAXCALCULATION_BASEDON
	FROM MST_INSTRUMENT_TYPE MIT  
	INNER JOIN COMPANY_INSTRUMENT_MAPPING CIM ON MIT.MIT_ID=CIM.MIT_ID  
	WHERE  MIT.IS_ACTIVE = 1 AND  IS_ENABLED = 1

	SET NOCOUNT OFF;	
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GET_COMPANY_INFO]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================  
     -- SP - COMPANY INFO  --
-- =============================================  
CREATE PROCEDURE [dbo].[PROC_GET_COMPANY_INFO]  
AS  
BEGIN  
 SELECT CompanyName,CompanyAddress,CompanyEmailID,AdminEmailID,CompanyURL,AdminUserID,MaxLoginAttempts  
    FROM COMPANY_MASTER    
END  
  
GO
/****** Object:  StoredProcedure [dbo].[PROC_GET_INSTRUMENT_LIST]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_GET_INSTRUMENT_LIST]
	
AS
BEGIN
	SET NOCOUNT ON;	
			
	SELECT 
		MIT_ID, INSTRUMENT_NAME, IS_ACTIVE, IS_AUTO_EXERCISE 
	FROM MST_INSTRUMENT_TYPE  
	WHERE 
		IS_ACTIVE = 1
	
	SELECT 
		MSE_ID, STOCK_EXCHANGE_SYMBOL 
	FROM MST_STOCK_EXCHANGE 
	WHERE 
		IS_ACTIVE = 1
		   
    SELECT 
		MIT_ID, CurrencyID, MSE_ID, SEM_VAL_RPT_ID, IS_ENABLED, INS_DISPLY_NAME, CREATED_ON 
	FROM COMPANY_INSTRUMENT_MAPPING   

	SET NOCOUNT OFF;	
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_GET_MENU_SUB_MENU]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Jaydeep Konde>
-- Create date: <30-APR-2019>
-- Description:	<Stored Procedure written for Get Menus>
-- =============================================
CREATE PROCEDURE [dbo].[PROC_GET_MENU_SUB_MENU]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * FROM MENU_SUB_MENU

END
GO
/****** Object:  StoredProcedure [dbo].[spAddEmployee]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAddEmployee]         
(        
    @Name VARCHAR(20),         
    @City VARCHAR(20),        
    @Department VARCHAR(20),        
    @Gender VARCHAR(6)        
)        
as         
Begin         
    Insert into tblEmployee (Name,City,Department, Gender)         
    Values (@Name,@City,@Department, @Gender)         
End 
GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployee]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spDeleteEmployee]       
(        
   @EmpId int        
)        
as         
begin        
   Delete from tblEmployee where EmployeeId=@EmpId        
End   
GO
/****** Object:  StoredProcedure [dbo].[spGetAllEmployees]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetAllEmployees]      
as      
Begin      
    select *      
    from tblEmployee   
    order by EmployeeId      
End 
GO
/****** Object:  StoredProcedure [dbo].[spUpdateEmployee]    Script Date: 05/10/2019 06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spUpdateEmployee]        
(        
   @EmpId INTEGER ,      
   @Name VARCHAR(20),       
   @City VARCHAR(20),      
   @Department VARCHAR(20),      
   @Gender VARCHAR(6)      
)        
as        
begin        
   Update tblEmployee         
   set Name=@Name,        
   City=@City,        
   Department=@Department,      
   Gender=@Gender        
   where EmployeeId=@EmpId        
End   
GO
