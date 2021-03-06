USE [TestDB]
GO
/****** Object:  Table [dbo].[tbl_categories]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[description] [text] NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dea_cust]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dea_cust](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[name] [varchar](150) NULL,
	[email] [varchar](150) NULL,
	[contact] [varchar](15) NULL,
	[address] [text] NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_dea_cust] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_gst_details]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_gst_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[percentage] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_products]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[description] [text] NULL,
	[rate] [decimal](18, 2) NULL,
	[qty] [decimal](18, 2) NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_transaction_detail]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_transaction_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[rate] [decimal](18, 2) NULL,
	[qty] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
	[dea_cust_id] [int] NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_transaction_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_transactions]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[dea_cust_id] [int] NULL,
	[grandTotal] [decimal](18, 2) NULL,
	[transaction_date] [datetime] NULL,
	[tax] [decimal](18, 2) NULL,
	[discount] [decimal](18, 2) NULL,
	[added_by] [int] NULL,
	[invoice_date] [datetime] NULL,
	[name1] [nvarchar](500) NULL,
	[address1] [nvarchar](max) NULL,
	[gstin1] [nvarchar](100) NULL,
	[state1] [nvarchar](100) NULL,
	[state_code1] [nvarchar](100) NULL,
	[consignee_shipped_to] [nvarchar](200) NULL,
	[transportation_mode] [nvarchar](200) NULL,
	[vehicle_no] [nvarchar](100) NULL,
	[name2] [nvarchar](500) NULL,
	[address2] [nvarchar](max) NULL,
	[gstin2] [nvarchar](100) NULL,
	[state2] [nvarchar](100) NULL,
	[state_code2] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_transactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 7/7/2021 7:47:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[contact] [varchar](15) NULL,
	[address] [text] NULL,
	[gender] [varchar](10) NULL,
	[user_type] [varchar](15) NULL,
	[added_date] [datetime] NULL,
	[added_by] [int] NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_categories] ON 

INSERT [dbo].[tbl_categories] ([id], [title], [description], [added_date], [added_by]) VALUES (1001, N'Powder', N'All the products related to Powder', CAST(N'2021-06-20T19:22:52.380' AS DateTime), 7)
SET IDENTITY_INSERT [dbo].[tbl_categories] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_dea_cust] ON 

INSERT [dbo].[tbl_dea_cust] ([id], [type], [name], [email], [contact], [address], [added_date], [added_by]) VALUES (1, N'Customer', N'Tom Hanks', N'tom@hanks.com', N'8972937278', N'USA', CAST(N'2018-01-24T14:13:41.853' AS DateTime), 7)
INSERT [dbo].[tbl_dea_cust] ([id], [type], [name], [email], [contact], [address], [added_date], [added_by]) VALUES (3, N'Dealer', N'Gigi Hadid', N'gigi@hadid.com', N'8475868563', N'United States of America', CAST(N'2018-01-24T14:32:45.350' AS DateTime), 7)
INSERT [dbo].[tbl_dea_cust] ([id], [type], [name], [email], [contact], [address], [added_date], [added_by]) VALUES (1001, N'Customer', N'Raj Kamal', N'raj@gmail.com', N'80954317', N'afafagag', CAST(N'2021-06-20T20:03:46.920' AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[tbl_dea_cust] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_gst_details] ON 

INSERT [dbo].[tbl_gst_details] ([id], [name], [percentage]) VALUES (1, N'cgst', CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[tbl_gst_details] ([id], [name], [percentage]) VALUES (2, N'sgst', CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[tbl_gst_details] ([id], [name], [percentage]) VALUES (3, N'igst', CAST(2 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tbl_gst_details] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_products] ON 

INSERT [dbo].[tbl_products] ([id], [name], [category], [description], [rate], [qty], [added_date], [added_by]) VALUES (1002, N'Thirumanjana Powder', N'Powder', N'All related to Powder', CAST(50.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(N'2021-06-20T19:24:44.097' AS DateTime), 7)
INSERT [dbo].[tbl_products] ([id], [name], [category], [description], [rate], [qty], [added_date], [added_by]) VALUES (1003, N'Kaduka Powder', N'Powder', N'Powder', CAST(68.00 AS Decimal(18, 2)), CAST(-16.00 AS Decimal(18, 2)), CAST(N'2021-06-20T19:25:13.227' AS DateTime), 7)
INSERT [dbo].[tbl_products] ([id], [name], [category], [description], [rate], [qty], [added_date], [added_by]) VALUES (1004, N'Kumkum', N'Powder', N'Kumkum Powder', CAST(87.00 AS Decimal(18, 2)), CAST(-1.00 AS Decimal(18, 2)), CAST(N'2021-06-20T19:25:33.437' AS DateTime), 7)
INSERT [dbo].[tbl_products] ([id], [name], [category], [description], [rate], [qty], [added_date], [added_by]) VALUES (1005, N'Vibuthi Powder', N'Powder', N'Powder', CAST(45.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-06-20T19:25:54.490' AS DateTime), 7)
INSERT [dbo].[tbl_products] ([id], [name], [category], [description], [rate], [qty], [added_date], [added_by]) VALUES (1006, N'Manjal', N'Powder', N'Manjal', CAST(10.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2021-06-20T22:29:18.280' AS DateTime), 1001)
SET IDENTITY_INSERT [dbo].[tbl_products] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_transaction_detail] ON 

INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (1, 4, CAST(100.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T19:11:09.457' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (2, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(272.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T19:38:58.800' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (3, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T19:38:58.810' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (4, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(1150.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T19:38:58.813' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5, 1004, CAST(87.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(261.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T19:38:58.817' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (6, 1004, CAST(87.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(348.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-20T19:52:33.653' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (7, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-20T19:52:33.660' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (8, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T22:31:51.590' AS DateTime), 1002)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (9, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T22:31:51.597' AS DateTime), 1002)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (10, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 3, CAST(N'2021-06-20T22:31:51.600' AS DateTime), 1002)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (1002, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-21T13:03:46.653' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (2002, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-21T22:26:45.663' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (2003, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-21T22:26:45.677' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (2004, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(340.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-21T22:36:51.027' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (3002, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-21T22:55:29.167' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (4002, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(272.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-25T21:13:44.210' AS DateTime), 1002)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5002, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(340.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T09:55:13.327' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5003, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T09:55:23.240' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5004, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(136.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T11:26:13.320' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5005, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T11:26:16.063' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5006, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(340.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T12:13:00.347' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5007, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T12:13:04.047' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5008, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(225.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T12:55:56.713' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5009, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T12:55:56.713' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5010, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T13:06:36.013' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5011, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T13:27:13.913' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5012, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(33.00 AS Decimal(18, 2)), CAST(1650.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T13:30:33.577' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5013, 1002, CAST(50.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T13:37:16.033' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5014, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(272.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T14:02:01.303' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5015, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(136.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T14:46:56.063' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5016, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(136.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T14:54:35.250' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5017, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T14:58:54.697' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5018, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T15:05:40.270' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5019, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(136.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T15:10:18.440' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5020, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T15:14:06.783' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5021, 1005, CAST(45.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(135.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T18:11:23.493' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5022, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T18:59:19.850' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5023, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(272.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T19:03:09.553' AS DateTime), 8)
INSERT [dbo].[tbl_transaction_detail] ([id], [product_id], [rate], [qty], [total], [dea_cust_id], [added_date], [added_by]) VALUES (5024, 1003, CAST(68.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), CAST(272.00 AS Decimal(18, 2)), 0, CAST(N'2021-06-26T19:08:25.933' AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[tbl_transaction_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_transactions] ON 

INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (1, N'Sales', 3, CAST(569.94 AS Decimal(18, 2)), CAST(N'2021-06-20T19:11:09.397' AS DateTime), CAST(14.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (2, N'Purchase', 3, CAST(2065.28 AS Decimal(18, 2)), CAST(N'2021-06-20T19:38:58.763' AS DateTime), CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (3, N'Sales', 0, CAST(618.18 AS Decimal(18, 2)), CAST(N'2021-06-20T19:52:33.617' AS DateTime), CAST(12.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (4, N'Sales', 3, CAST(613.96 AS Decimal(18, 2)), CAST(N'2021-06-20T22:31:51.577' AS DateTime), CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (1002, N'Sales', 0, CAST(403.92 AS Decimal(18, 2)), CAST(N'2021-06-21T13:03:46.593' AS DateTime), CAST(2.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (2002, N'Sales', 0, CAST(476.16 AS Decimal(18, 2)), CAST(N'2021-06-21T22:26:16.887' AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (2003, N'Sales', 0, CAST(326.40 AS Decimal(18, 2)), CAST(N'2021-06-21T22:36:49.097' AS DateTime), CAST(252.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (3002, N'Sales', 0, CAST(208.02 AS Decimal(18, 2)), CAST(N'2021-06-21T22:55:27.693' AS DateTime), CAST(3.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (4002, N'Sales', 0, CAST(271.89 AS Decimal(18, 2)), CAST(N'2021-06-25T21:13:36.257' AS DateTime), CAST(2.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 1002, CAST(N'2021-06-25T21:13:37.390' AS DateTime), N'TestABC', N'qtet', N'qttqettq', N'qyqy', N'33', N'yrwy', N'wyrwy', N'rwywwy', N'ttr', N'yywy', N'ywyw', N'wywy', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5002, N'Sales', 0, CAST(663.68 AS Decimal(18, 2)), CAST(N'2021-06-26T09:55:13.303' AS DateTime), CAST(10.88 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T09:55:13.303' AS DateTime), N'fsFs', N'ffaF', N'AFAFAG', N'zvadag', N'33', N'agdgag', N'dagdag', N'agd', N'adg', N'daaga', N'agag', N'agag', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5003, N'Sales', 0, CAST(330.62 AS Decimal(18, 2)), CAST(N'2021-06-26T11:26:13.280' AS DateTime), CAST(5.42 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T11:26:13.280' AS DateTime), N'xyz', N'cxaf', N'adfa', N'agag', N'33', N'adggd', N'adgadg', N'adgag', N'adg', N'ag', N'ag', N'adga', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5004, N'Sales', 0, CAST(524.60 AS Decimal(18, 2)), CAST(N'2021-06-26T12:13:00.327' AS DateTime), CAST(8.60 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T12:13:00.327' AS DateTime), N'tfag', N'aga', N'gag', N'gag', N'33', N'qteteqt', N'qtqt', N'qet', N'qtqt', N'tqt', N'eqtqet', N'qtq', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5005, N'Sales', 0, CAST(457.50 AS Decimal(18, 2)), CAST(N'2021-06-26T12:55:56.693' AS DateTime), CAST(7.50 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T12:55:56.693' AS DateTime), N'Test123', N'afafaf', N'IN1232', N'qerqtqt', N'33', N'gsgag', N'ag', N'agagdag', N'aggaga', N'agdagad', N'agagd', N'adgdagag', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5006, N'Sales', 0, CAST(305.00 AS Decimal(18, 2)), CAST(N'2021-06-26T13:06:35.990' AS DateTime), CAST(5.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T13:06:35.993' AS DateTime), N'TestABXXX', N'afaf', N'af', N'afafag', N'33', N'dgdg', N'daga', N'agag', N'agag', N'agag', N'agag', N'gag', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5007, N'Sales', 0, CAST(183.00 AS Decimal(18, 2)), CAST(N'2021-06-26T13:27:13.877' AS DateTime), CAST(3.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T13:27:13.877' AS DateTime), N'Test22', N'fafsf', N'FfF24626', N'62626426', N'33', N'GSFGHSH', N'hwrwywy3', N'377', N'375', N'3737', N'3737', N'377', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5008, N'Sales', 0, CAST(2013.00 AS Decimal(18, 2)), CAST(N'2021-06-26T13:30:33.557' AS DateTime), CAST(33.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T13:30:33.557' AS DateTime), N'adfa', N'adf', N'afa', N'afaf', N'33', N'faf', N'afdf', N'df', N'adf', N'adfa', N'afd', N'afa', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5009, N'Sales', 0, CAST(122.00 AS Decimal(18, 2)), CAST(N'2021-06-26T13:37:16.030' AS DateTime), CAST(2.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T13:37:16.030' AS DateTime), N'TTTSS', N'saf', N'afaf', N'afaf', N'33', N'eqtqt', N'qett', N'52626', N'gsgsgs', N'sfgsgssh4252', N'twtwtwy2626', N'444', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5010, N'Sales', 0, CAST(331.84 AS Decimal(18, 2)), CAST(N'2021-06-26T14:02:01.280' AS DateTime), CAST(5.44 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T14:02:01.280' AS DateTime), N'afa', N'ag', N'aga', N'agag', N'33', N'agag', N'agag', N'gag', N'gd', N'gag', N'agdag', N'ag', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5011, N'Sales', 0, CAST(165.92 AS Decimal(18, 2)), CAST(N'2021-06-26T14:46:56.043' AS DateTime), CAST(2.72 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T14:46:56.043' AS DateTime), N'dfsaf', N'af', N'af', N'f', N'33', N'afaf', N'af', N'af', N'af', N'saf', N'af', N'saf', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5012, N'Sales', 0, CAST(165.92 AS Decimal(18, 2)), CAST(N'2021-06-26T14:54:35.233' AS DateTime), CAST(2.72 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T14:54:35.233' AS DateTime), N'afaf', N'af', N'asf', N'saf', N'33', N'afafaf', N'af', N'af', N'afsa', N'afaf', N'afaf', N'afa', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5013, N'Sales', 0, CAST(109.80 AS Decimal(18, 2)), CAST(N'2021-06-26T14:58:54.680' AS DateTime), CAST(1.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T14:58:54.680' AS DateTime), N'adff', N'afaf', N'afaf', N'aff', N'33', N'f', N'afaf', N'afaf', N'afaf', N'afafaf', N'afa', N'affa', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5014, N'Sales', 0, CAST(109.80 AS Decimal(18, 2)), CAST(N'2021-06-26T15:05:40.250' AS DateTime), CAST(1.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T15:05:40.250' AS DateTime), N'af', N'af', N'af', N'af', N'33', N'afaf', N'af', N'faf', N'afaf', N'afaffa', N'afaf', N'afaf', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5015, N'Sales', 0, CAST(165.92 AS Decimal(18, 2)), CAST(N'2021-06-26T15:10:18.423' AS DateTime), CAST(2.72 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T15:10:18.423' AS DateTime), N'afaf', N'afaf', N'faff', N'sf', N'33', N'afasf', N'afaf', N'asfaf', N'asf', N'fsf', N'afaf', N'afaf', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5016, N'Sales', 0, CAST(109.80 AS Decimal(18, 2)), CAST(N'2021-06-26T15:14:06.767' AS DateTime), CAST(1.80 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T15:14:06.767' AS DateTime), N'aaf', N'asfafas', N'sf', N'asfas', N'33', N'afaf', N'faf', N'af', N'asfas', N'safasf', N'afsaf', N'safa', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5017, N'Sales', 0, CAST(164.70 AS Decimal(18, 2)), CAST(N'2021-06-26T18:11:23.477' AS DateTime), CAST(2.70 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T18:11:23.477' AS DateTime), N'afaf', N'af', N'afaf', N'faf', N'33', N'faf', N'faf', N'af', N'af', N'faf', N'afafa', N'faf', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5018, N'Sales', 0, CAST(248.88 AS Decimal(18, 2)), CAST(N'2021-06-26T18:59:19.833' AS DateTime), CAST(4.08 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T18:59:19.833' AS DateTime), N'fafaf', N'afaf', N'agagaga', N'gaga', N'33', N'adgag', N'adgd', N'agagd', N'adg', N'dgag', N'dgda', N'agag', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5019, N'Sales', 0, CAST(331.84 AS Decimal(18, 2)), CAST(N'2021-06-26T19:03:09.533' AS DateTime), CAST(5.44 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T19:03:09.537' AS DateTime), N'caa', N'fafaaf', N'afaf', N'afa', N'33', N'afa', N'af', N'afa', N'afaf', N'af', N'asf', N'sfa', N'')
INSERT [dbo].[tbl_transactions] ([id], [type], [dea_cust_id], [grandTotal], [transaction_date], [tax], [discount], [added_by], [invoice_date], [name1], [address1], [gstin1], [state1], [state_code1], [consignee_shipped_to], [transportation_mode], [vehicle_no], [name2], [address2], [gstin2], [state2], [state_code2]) VALUES (5020, N'Sales', 0, CAST(331.84 AS Decimal(18, 2)), CAST(N'2021-06-26T19:08:25.910' AS DateTime), CAST(5.44 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 8, CAST(N'2021-06-26T19:08:25.910' AS DateTime), N'afdaf', N'aff', N'faf', N'faf', N'33', N'af', N'af', N'afaf', N'faf', N'faf', N'afaf', N'afaf', N'')
SET IDENTITY_INSERT [dbo].[tbl_transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([id], [first_name], [last_name], [email], [username], [password], [contact], [address], [gender], [user_type], [added_date], [added_by]) VALUES (7, N'Master', N'Admin', N'admin@gmail.com', N'admin', N'admin', N'0983094806', N'Kathmandu', N'Male', N'Admin', CAST(N'2018-01-08T12:24:35.497' AS DateTime), 1)
INSERT [dbo].[tbl_users] ([id], [first_name], [last_name], [email], [username], [password], [contact], [address], [gender], [user_type], [added_date], [added_by]) VALUES (8, N'Normal', N'User', N'user@gmail.com', N'user', N'user', N'049386983', N'Kathmandu', N'Female', N'User', CAST(N'2018-01-08T12:25:11.623' AS DateTime), 1)
INSERT [dbo].[tbl_users] ([id], [first_name], [last_name], [email], [username], [password], [contact], [address], [gender], [user_type], [added_date], [added_by]) VALUES (1001, N'Natrajan', N'Govindarajan', N'natrejee@gamil.com', N'natrajee', N'Test@123', N'8095438517', N'dubai', N'Male', N'Admin', CAST(N'2021-06-20T19:29:55.487' AS DateTime), 7)
INSERT [dbo].[tbl_users] ([id], [first_name], [last_name], [email], [username], [password], [contact], [address], [gender], [user_type], [added_date], [added_by]) VALUES (1002, N'Dinesh', N'K', N'dinesh.vdp@gmail.com', N'dinesh', N'Test@123', N'8095438517', N'Nagapattinam', N'Male', N'User', CAST(N'2021-06-20T19:30:34.407' AS DateTime), 7)
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
GO
