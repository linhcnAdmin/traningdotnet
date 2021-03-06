USE [BookManagement]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[TopicID] [int] IDENTITY(1,1) NOT NULL,
	[TopicName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[TopicID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productions]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productions](
	[ProductionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductionName] [nvarchar](max) NOT NULL,
	[ProductionPhone] [int] NULL,
	[ProductionAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Productions] PRIMARY KEY CLUSTERED 
(
	[ProductionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](max) NOT NULL,
	[AuthorAddress] [nvarchar](max) NULL,
	[AuthorPhone] [int] NULL,
	[AuthorSummary] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (2, N'Paulo Coelho', NULL, NULL, N'Paulo Coelho là tiểu thuyết gia nổi tiếng người Brasil.')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (3, N'Tony Buổi Sáng', NULL, NULL, N'Tony Buổi Sáng Blog xây dựng nhằm mục đích chia sẻ văn hóa, nhìn đời với ánh mắt tích cực hơn cho giới trẻ')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (4, N'Keith Ferrazzi', NULL, NULL, N'nhà sáng lập và CEO của công ty Ferrazzi Greelight, đã từng tư vấn cho các công ty hàng đầu thế giới vềcách đẩy mạnh phát triển các mối quan hệ kinh doanh giúp tăng doanh thu, khởi động sáng tạo và kiến tạo sự hoà hợp của nhóm. ')
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (5, N'Tiểu Chu Dữ Mặc ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (6, N'Iris Cao ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (7, N'Điền Yên - Lam Nguyên ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (8, N'Mùa Đông', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (9, N' Nhiều Tác Giả ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (10, N'Dương Nguyên ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (11, N'Liesl Shurtliff ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (12, N'Song Hà ', NULL, NULL, NULL)
INSERT [dbo].[Authors] ([AuthorID], [AuthorName], [AuthorAddress], [AuthorPhone], [AuthorSummary]) VALUES (13, N'Minh Thắng', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Authors] OFF
/****** Object:  Table [dbo].[Accounts]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[RoleName] [nvarchar](max) NOT NULL,
	[RememberMe] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts] ([AccountId], [Username], [Password], [RoleName], [RememberMe]) VALUES (1, N'linhcn', N'31528198109743225ff9d0cf04d1fdd1', N'Admin', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[CustomerBirthday] [datetime] NOT NULL,
	[CustomerGender] [nvarchar](max) NULL,
	[CustomerEmail] [nvarchar](max) NOT NULL,
	[CustomerPhone] [int] NOT NULL,
	[CustomerAddress] [nvarchar](max) NOT NULL,
	[CustomerPass] [nvarchar](max) NOT NULL,
	[CustomerAccount] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerBirthday], [CustomerGender], [CustomerEmail], [CustomerPhone], [CustomerAddress], [CustomerPass], [CustomerAccount]) VALUES (24, N'Linh', CAST(0x0000A60900000000 AS DateTime), NULL, N'linhttm@gmail.com', 989023113, N'abc', N'31528198109743225ff9d0cf04d1fdd1', N'linhcn')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Categolories]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categolories](
	[CategoloryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoloryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Categolories] PRIMARY KEY CLUSTERED 
(
	[CategoloryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categolories] ON
INSERT [dbo].[Categolories] ([CategoloryID], [CategoloryName]) VALUES (1, N'Sách bán chạy')
INSERT [dbo].[Categolories] ([CategoloryID], [CategoloryName]) VALUES (2, N'Sách bán chạy trong tháng')
INSERT [dbo].[Categolories] ([CategoloryID], [CategoloryName]) VALUES (3, N'sách sắp phát hành')
SET IDENTITY_INSERT [dbo].[Categolories] OFF
/****** Object:  Table [dbo].[Books]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](max) NOT NULL,
	[BookPrices] [float] NOT NULL,
	[BookDescription] [nvarchar](max) NULL,
	[BookDateUpdate] [datetime] NOT NULL,
	[BookQuantity] [int] NOT NULL,
	[BookDiscount] [nvarchar](max) NULL,
	[TopicRefId] [int] NULL,
	[ProductionRefId] [int] NULL,
	[AuthorRefId] [int] NULL,
	[BookImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (1, N'Nhà giả kim', 41000, N'Nhà Giả Kim: như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông', CAST(0x0000A60900000000 AS DateTime), 10, N'30', NULL, NULL, 2, N'nha_gia_kim_2_1.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (2, N'Tony Buổi Sáng - Trên Đường Băng', 52000, N'Tony Buổi Sáng Blog xây dựng nhằm mục đích chia sẻ văn hóa, nhìn đời với ánh mắt tích cực hơn cho giới trẻ', CAST(0x0000A60900000000 AS DateTime), 10, N'30', NULL, NULL, 3, N'tony-buoi-sang.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (3, N'Đừng Bao Giờ Đi Ăn Một Mình (Tái Bản 2015)', 65000, N'sach hay', CAST(0x0000A60900000000 AS DateTime), 5, NULL, NULL, NULL, 4, N'dung_bao_gio_di_an_mot_minh.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (4, N'Ai Che Lưng Cho Bạn (Tái Bản 2012)', 70, N'Ai che lưng cho bạn không đơn giản là một quyển sách tự hoàn thiện bản thân. Nó là quyển sách đầu tiên với thông điệp ‘hãy để người khác giúp bạn’. Nếu bạn thật sự nghiêm túc về thành công của mình, hãy lắng nghe Ferrazzi và thiết lập vòng tròn hỗ trợ của mình ngay hôm nay.”', CAST(0x0000A60900000000 AS DateTime), 10, NULL, NULL, NULL, 4, N'ai-che-lung-cho-ban-a.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (5, N'Thục Thiên Mộng Hoa Lục (Tập 1)', 98000, N'Hai nhân vật chính đã bôn ba khắp chốn vì an nguy của quốc gia và tồn vong của thiên hạ, trong khi đó vẫn nỗ lực thay đổi vận mệnh của chính mình.', CAST(0x0000A60900000000 AS DateTime), 15, NULL, NULL, NULL, 5, N'thuc thien mong..png')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (6, N'Người Yêu Cũ Có Người Yêu Mới', 59000, NULL, CAST(0x0000A60900000000 AS DateTime), 8, NULL, NULL, NULL, 6, N'nguoi_fa_bia_arck_hoisach-01_2.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (7, N'Những Sắc Màu Cuộc Sống', 57000, NULL, CAST(0x0000A60900000000 AS DateTime), 6, NULL, NULL, NULL, 7, N'nhung_mang_mau_cuoc_song_1.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (8, N'Những Điều Ta Chưa Nói', 51000, NULL, CAST(0x0000A60900000000 AS DateTime), 20, NULL, NULL, NULL, 8, N'nhungdieutachuanoi.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (9, N'  Đường Tới Hạnh Phúc.', 90000, NULL, CAST(0x0000A60900000000 AS DateTime), 35, NULL, NULL, NULL, 9, N'biaduongtoihanhphuc.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (10, N'Mùa Hè Đổi Hướng', 43000, NULL, CAST(0x0000A60900000000 AS DateTime), 43, NULL, NULL, NULL, 10, N'mua-he-doi-huong-chon-01.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (11, N'Rump - Cậu Bé Xe Rơm Thành Vàng', 72000, NULL, CAST(0x0000A60900000000 AS DateTime), 32, NULL, NULL, NULL, 11, N'rump.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (12, N'Ký Sự Đòi Nợ', 97000, NULL, CAST(0x0000A60900000000 AS DateTime), 34, NULL, NULL, NULL, 12, N'ky_su_doi_no.jpg')
INSERT [dbo].[Books] ([BookID], [BookName], [BookPrices], [BookDescription], [BookDateUpdate], [BookQuantity], [BookDiscount], [TopicRefId], [ProductionRefId], [AuthorRefId], [BookImage]) VALUES (13, N'Thần Thoại Hy Lạp', 15000, NULL, CAST(0x0000A60900000000 AS DateTime), 23, NULL, NULL, NULL, 13, N'than_thoai_hi _lap.jpg')
SET IDENTITY_INSERT [dbo].[Books] OFF
/****** Object:  Table [dbo].[BillOrders]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOrders](
	[BillOrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustormerRefId] [int] NOT NULL,
	[Shipdate] [datetime] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[PayDay] [datetime] NOT NULL,
	[BillOrderMoneyTotal] [float] NOT NULL,
	[PaidStatus] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.BillOrders] PRIMARY KEY CLUSTERED 
(
	[BillOrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BillOrders] ON
INSERT [dbo].[BillOrders] ([BillOrderID], [CustormerRefId], [Shipdate], [OrderDate], [PayDay], [BillOrderMoneyTotal], [PaidStatus]) VALUES (3, 24, CAST(0x0000A60900CCDF05 AS DateTime), CAST(0x0000A60900CCDEFB AS DateTime), CAST(0x0000A60900CCDF01 AS DateTime), 520000, 0)
SET IDENTITY_INSERT [dbo].[BillOrders] OFF
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[BillOrderRefId] [int] NOT NULL,
	[BookRefId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT [dbo].[OrderDetails] ([OrderDetailID], [BillOrderRefId], [BookRefId], [Quantity]) VALUES (1, 3, 2, 10)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
/****** Object:  Table [dbo].[CategoloryBook]    Script Date: 05/17/2016 14:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoloryBook](
	[CategoloryID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CategoloryBook] PRIMARY KEY CLUSTERED 
(
	[CategoloryID] ASC,
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 1)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 2)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 3)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 4)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (2, 5)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (2, 6)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (2, 7)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 8)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (3, 8)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (2, 9)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (3, 9)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 10)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (3, 11)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (1, 12)
INSERT [dbo].[CategoloryBook] ([CategoloryID], [BookID]) VALUES (3, 13)
/****** Object:  ForeignKey [FK_dbo.BillOrders_dbo.Customers_CustormerRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[BillOrders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BillOrders_dbo.Customers_CustormerRefId] FOREIGN KEY([CustormerRefId])
REFERENCES [dbo].[Customers] ([CustomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillOrders] CHECK CONSTRAINT [FK_dbo.BillOrders_dbo.Customers_CustormerRefId]
GO
/****** Object:  ForeignKey [FK_dbo.Books_dbo.Authors_AuthorRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Authors_AuthorRefId] FOREIGN KEY([AuthorRefId])
REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Authors_AuthorRefId]
GO
/****** Object:  ForeignKey [FK_dbo.Books_dbo.Productions_ProductionRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Productions_ProductionRefId] FOREIGN KEY([ProductionRefId])
REFERENCES [dbo].[Productions] ([ProductionID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Productions_ProductionRefId]
GO
/****** Object:  ForeignKey [FK_dbo.Books_dbo.Topics_TopicRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Books_dbo.Topics_TopicRefId] FOREIGN KEY([TopicRefId])
REFERENCES [dbo].[Topics] ([TopicID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_dbo.Books_dbo.Topics_TopicRefId]
GO
/****** Object:  ForeignKey [FK_dbo.CategoloryBook_dbo.Books_BookID]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[CategoloryBook]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoloryBook_dbo.Books_BookID] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoloryBook] CHECK CONSTRAINT [FK_dbo.CategoloryBook_dbo.Books_BookID]
GO
/****** Object:  ForeignKey [FK_dbo.CategoloryBook_dbo.Categolories_CategoloryID]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[CategoloryBook]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoloryBook_dbo.Categolories_CategoloryID] FOREIGN KEY([CategoloryID])
REFERENCES [dbo].[Categolories] ([CategoloryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoloryBook] CHECK CONSTRAINT [FK_dbo.CategoloryBook_dbo.Categolories_CategoloryID]
GO
/****** Object:  ForeignKey [FK_dbo.OrderDetails_dbo.BillOrders_BillOrderRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.BillOrders_BillOrderRefId] FOREIGN KEY([BillOrderRefId])
REFERENCES [dbo].[BillOrders] ([BillOrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.BillOrders_BillOrderRefId]
GO
/****** Object:  ForeignKey [FK_dbo.OrderDetails_dbo.Books_BookRefId]    Script Date: 05/17/2016 14:52:59 ******/
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetails_dbo.Books_BookRefId] FOREIGN KEY([BookRefId])
REFERENCES [dbo].[Books] ([BookID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_dbo.OrderDetails_dbo.Books_BookRefId]
GO
