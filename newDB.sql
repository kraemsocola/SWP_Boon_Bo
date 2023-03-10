USE [newDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](250) NULL,
	[phone_number] [nvarchar](20) NULL,
	[note] [nvarchar](1000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeries]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[size_id] [int] NULL,
	[price] [int] NULL,
	[num] [int] NULL,
	[total_money_in] [int] NULL,
	[total_money_out] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](20) NULL,
	[address] [nvarchar](200) NULL,
	[note] [nvarchar](1000) NULL,
	[order_date] [datetime] NULL,
	[status_id] [int] NULL,
	[total_money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[title] [nvarchar](250) NULL,
	[gender_id] [int] NULL,
	[discount_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
	[description] [nvarchar](1500) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeProduct]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProduct](
	[pid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price_in] [int] NULL,
	[price_out] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/15/2023 11:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginType] [int] NULL,
	[role_id] [int] NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](32) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](15) NULL,
	[address] [nvarchar](200) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'The mood Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Summer Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Morra x JVevermind 10ml')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'1st Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'2nd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'3rd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (7, N'DECEMBER COMBACK')
INSERT [dbo].[Categories] ([id], [name]) VALUES (8, N'Nến thơm Elements Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (9, N'Nến thơm 2nd Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (10, N'Sữa tắm hương nước hoa Lumin Collection')
INSERT [dbo].[Categories] ([id], [name]) VALUES (11, N'Dưỡng thể')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([id], [value]) VALUES (1, 0)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (2, 10)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (3, 20)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (4, 50)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([id], [name]) VALUES (1, N'Nam')
INSERT [dbo].[Genders] ([id], [name]) VALUES (2, N'Nữ')
INSERT [dbo].[Genders] ([id], [name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (1, 2, N'Nước Hoa Morra Lemon Cedar Summer Collection', 3, 1, N'images/MorraLemonCedarSummerCollection_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (2, 2, N'Nước Hoa Morra Rose Quince Summer Collection', 2, 1, N'images/MorraRoseQuinceSummerCollection_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (3, 2, N'Nước Hoa Morra Saffron Summer Collection', 1, 1, N'images/MorraSaffronSummerCollection_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (4, 3, N'Nước hoa Mystic Weapon', 1, 1, N'images/MysticWeapon_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (5, 3, N'Nước hoa Private Drug', 1, 1, N'images/PrivateDrug_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (6, 4, N'Nước hoa Morra Begamot Vetiver 15', 2, 1, N'images/MorraBegamotVetiver15_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (7, 4, N'Nước hoa Morra Camel Vanilla 11', 2, 1, N'images/MorraCamelVanilla11_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (8, 4, N'Nước hoa Morra Iris 12', 2, 1, N'images/MorraIris12_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (9, 4, N'Nước hoa Morra Oceania 12', 3, 1, N'images/MorraOceania12_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (10, 4, N'Nước hoa Morra Rose Cedar 10', 2, 1, N'images/MorraRoseCedar10_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (11, 5, N'Nước hoa Morra Blackcurrant 10', 3, 1, N'images/MorraBlackcurrant10_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (12, 5, N'Nước hoa Morra Lilybell 07', 2, 1, N'images/MorraLilybell07_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (13, 5, N'Nước hoa Morra Musk Mallow 13', 3, 1, N'images/MorraMuskMallow13_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (14, 5, N'Nước hoa Morra Osmanthus 16', 2, 1, N'images/MorraOsmanthus16_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (15, 5, N'Nước hoa Morra Sandalwood 33', 1, 1, N'images/MorraSandalwood33_1.jpg', NULL, NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (16, 6, N'Nước hoa Morra Gardenia', 2, 1, N'images/MorraGardenia_1.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'user')
INSERT [dbo].[Roles] ([id], [name]) VALUES (3, N'order staff')
INSERT [dbo].[Roles] ([id], [name]) VALUES (4, N'stock manager')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (1, 1, 10, 100000, 250000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (1, 2, 10, 200000, 450000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (1, 3, 10, 400000, 600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (2, 1, 10, 100000, 250000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (2, 2, 10, 400000, 600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (2, 3, 10, 100000, 250000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (3, 1, 10, 100000, 250000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (3, 2, 10, 400000, 550000)
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (1, N' 10ml', 10)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (2, N'50ml', 50)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (3, N'100ml', 100)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (1, 1, 2, N'Cấn', N'Khánh', N'khanhcd', N'123', N'caankhwh1303@gmail.com', N'0979039318', N'Thạch Thất', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (2, 1, 2, N'Bùi', N'Trường', N'truongbq', N'123', N'truongbqhe163896@fpt.edu.vn', N'0395931502', N'Tân Xã', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (3, 1, 1, N'Mai', N'Linh', N'linhmp', N'123', N'linhmphe163922@fpt.edu.vn', N'0981418885', N'Cây xăng 39', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (4, 1, 1, N'Mai', N'Giang', N'giangmn', N'123', N'giangmnhe163863@fpt.edu.vn', N'0971205376', N'Hà Nội', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (5, 1, 3, N'Nguyễn ', N'Linh', N'linhnt', N'123', N'linhnthe163817@fpt.edu.vn', N'0326983680', N'Tân Xã', NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [address], [created_at], [updated_at], [deleted]) VALUES (6, 2, 1, NULL, NULL, NULL, NULL, N'jang1902er@gmail.com', NULL, NULL, CAST(N'2023-02-13T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Galeries]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Size] FOREIGN KEY([size_id])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_OrderDetails_Size]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([discount_id])
REFERENCES [dbo].[Discounts] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [fk_id_pid] FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [fk_id_pid]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [fk_id_sid] FOREIGN KEY([sid])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [fk_id_sid]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
