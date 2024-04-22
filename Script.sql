use master
go
if exists (select name from sysdatabases where name='QuanLyGiaoVu')
	drop database QuanLyGiaoVu
go
create database QuanLyGiaoVu
go
USE [QuanLyGiaoVu]
GO
/****** Object:  Table [dbo].[dangky]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangky](
	[masv] [nchar](10) NOT NULL,
	[mamh] [nchar](10) NOT NULL,
	[hocky] [nchar](10) NOT NULL,
	[namhoc] [nchar](10) NOT NULL,
 CONSTRAINT [PK_dangky] PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[mamh] ASC,
	[hocky] ASC,
	[namhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giangday]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giangday](
	[namhoc] [nchar](10) NOT NULL,
	[hocky] [int] NOT NULL,
	[mamh] [nchar](10) NOT NULL,
	[phutrach] [nchar](10) NOT NULL,
	[magv] [nchar](10) NULL,
 CONSTRAINT [PK_giangday] PRIMARY KEY CLUSTERED 
(
	[namhoc] ASC,
	[hocky] ASC,
	[mamh] ASC,
	[phutrach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giangvien]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giangvien](
	[magv] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[hocvi] [nvarchar](50) NULL,
	[hocham] [nvarchar](50) NULL,
	[makhoa] [nchar](10) NULL,
 CONSTRAINT [PK_giangvien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ketqua]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ketqua](
	[namhoc] [nchar](10) NOT NULL,
	[hocky] [int] NOT NULL,
	[masv] [nchar](10) NOT NULL,
	[mamh] [nchar](10) NOT NULL,
	[lanthi] [nchar](10) NOT NULL,
	[diem] [real] NULL,
 CONSTRAINT [PK_ketqua] PRIMARY KEY CLUSTERED 
(
	[namhoc] ASC,
	[hocky] ASC,
	[masv] ASC,
	[mamh] ASC,
	[lanthi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khoa]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoa](
	[makhoa] [nchar](10) NOT NULL,
	[tenkhoa] [nvarchar](50) NOT NULL,
	[tongsocb] [int] NULL,
 CONSTRAINT [PK_khoa] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhoc](
	[mamh] [nchar](10) NOT NULL,
	[tenmh] [nvarchar](50) NULL,
	[sotinchi] [int] NULL,
	[sotietLT] [int] NULL,
	[sotietTH] [int] NULL,
	[makhoa] [nchar](10) NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qlykhoa]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qlykhoa](
	[makhoa] [nchar](10) NOT NULL,
	[chucvu] [nvarchar](50) NOT NULL,
	[tungay] [date] NOT NULL,
	[magv] [nchar](10) NULL,
	[denngay] [date] NULL,
 CONSTRAINT [PK_qlykhoa] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC,
	[chucvu] ASC,
	[tungay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [nchar](10) NOT NULL,
	[hosv] [nvarchar](50) NULL,
	[tensv] [nvarchar](10) NULL,
	[phai] [bit] NULL,
	[ngaysinh] [date] NULL,
	[matinhtp] [nchar](10) NULL,
	[tinhtranggd] [nchar](10) NULL,
	[makhoa] [nchar](10) NULL,
	[nhaphoc] [nchar](10) NULL,
	[hocbong] [real] NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thannhan]    Script Date: 28/04/2021 12:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thannhan](
	[magv] [nchar](10) NOT NULL,
	[hotentn] [nvarchar](50) NOT NULL,
	[ngaysinhtn] [date] NULL,
	[moiquanhe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_thannhan] PRIMARY KEY CLUSTERED 
(
	[magv] ASC,
	[hotentn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91002     ', N'CSDL      ', N'2         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91002     ', N'LTWB      ', N'2         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91007     ', N'CSDL      ', N'2         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91007     ', N'LTWB      ', N'2         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91023     ', N'TKMC      ', N'2         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91023     ', N'TKMC      ', N'2         ', N'2015-2016 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91024     ', N'TKMC      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91024     ', N'VLDC      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'91024     ', N'VLDC      ', N'1         ', N'2015-2016 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'92001     ', N'SHDC      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'92001     ', N'SHPT      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'92013     ', N'SHDC      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[dangky] ([masv], [mamh], [hocky], [namhoc]) VALUES (N'92013     ', N'SHPT      ', N'1         ', N'2014-2015 ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 1, N'CTDL      ', N'LT        ', N'G001      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 1, N'CTDL      ', N'TH        ', N'G002      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 1, N'SHDC      ', N'LT        ', N'G007      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 1, N'VLDC      ', N'LT        ', N'G004      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 2, N'CNGE      ', N'LT        ', N'G007      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 2, N'CNGE      ', N'TH        ', N'G008      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 2, N'CSDL      ', N'LT        ', N'G002      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 2, N'TKMC      ', N'LT        ', N'G005      ')
INSERT [dbo].[giangday] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015 ', 2, N'TKMC      ', N'TH        ', N'G006      ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G001      ', N'Nguyễn Văn Sự', N'TS', NULL, N'CNTT      ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G002      ', N'Nguyễn Ngọc Thúy', N'Ths', NULL, N'CNTT      ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G003      ', N'Trần Văn Năm', N'Ths', NULL, N'CNTT      ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G004      ', N'Trần Đồng Nai', N'TS', N'PGS', N'VL        ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G005      ', N'Nguyễn Kim Oanh', N'Ths', NULL, N'VL        ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G006      ', N'Bùi Mạnh Tứ', N'Ths', NULL, N'VL        ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G007      ', N'Nguyễn Văn Chín', N'TS', N'PGS', N'CNSH      ')
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G008      ', N'Lê Thị Mai', N'Ths', NULL, NULL)
INSERT [dbo].[giangvien] ([magv], [hoten], [hocvi], [hocham], [makhoa]) VALUES (N'G009      ', N'Nguyễn Anh', N'Ths', NULL, NULL)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'91024     ', N'TKMC      ', N'1         ', 9)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'91024     ', N'VLDC      ', N'1         ', 4)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'92001     ', N'SHDC      ', N'1         ', 3)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'92001     ', N'SHPT      ', N'1         ', 7)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'92013     ', N'SHDC      ', N'1         ', 4)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 1, N'92013     ', N'SHPT      ', N'1         ', 6)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 2, N'91002     ', N'CSDL      ', N'1         ', 9)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 2, N'91002     ', N'LTWB      ', N'1         ', 4)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 2, N'91007     ', N'CSDL      ', N'1         ', 9)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 2, N'91007     ', N'LTWB      ', N'1         ', 9)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2014-2015 ', 2, N'91023     ', N'TKMC      ', N'1         ', 4)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2015-2016 ', 1, N'91024     ', N'VLDC      ', N'2         ', 6)
INSERT [dbo].[ketqua] ([namhoc], [hocky], [masv], [mamh], [lanthi], [diem]) VALUES (N'2015-2016 ', 2, N'91023     ', N'TKMC      ', N'2         ', 6)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'CNSH      ', N'Công nghệ sinh học', 14)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'CNTT      ', N'Công nghệ thông tin', 26)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'QTKD      ', N'Quản trị kinh doanh', 12)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'VL        ', N'Vật lý', 17)
INSERT [dbo].[khoa] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'XD        ', N'Xây dựng', 25)
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CNGE      ', N'Công nghệ gen', 4, 45, 15, N'CNSH      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CSDL      ', N'Cơ sở dữ liệu', 3, 30, 15, N'CNTT      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CTDL      ', N'Cấu trúc dữ liệu', 4, 45, 15, N'CNTT      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'LTWB      ', N'Lập trình Web', 3, 30, 15, N'CNTT      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'NMLT      ', N'Nhập môn lập trình', 4, 45, 15, N'CNTT      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'SHDC      ', N'Sinh học đại cương', 3, 30, 15, N'CNSH      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'SHPT      ', N'Sinh học phân tử', 3, 45, NULL, N'CNSH      ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'TKMC      ', N'Thiết kết mạch', 4, 45, 15, N'VL        ')
INSERT [dbo].[monhoc] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'VLDC      ', N'Vật lý đại cương', 3, 45, NULL, N'VL        ')
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91002     ', N'Nguyễn Ngọc', N'An', 1, CAST(0xE51C0B00 AS Date), N'02        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 1650000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91003     ', N'Đinh Thị', N'Tâm', 1, CAST(0x051D0B00 AS Date), N'56        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 1650000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91004     ', N'Lê Kim', N'Chi', 1, CAST(0x061D0B00 AS Date), N'02        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 990000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91005     ', N'Nguyễn', N'Lam', 0, CAST(0x441D0B00 AS Date), N'02        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 1000000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91006     ', N'Lý', N'Thông', 0, CAST(0x611D0B00 AS Date), N'41        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 880000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91007     ', N'Nguyễn Đồng', N'Nai', 1, CAST(0x081E0B00 AS Date), N'41        ', N'ĐT        ', N'CNTT      ', N'2013-2014 ', 880000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91023     ', N'Nguyễn Hùng', N'Sư', 0, CAST(0x1F1E0B00 AS Date), N'56        ', N'ĐT        ', N'VL        ', N'2013-2014 ', NULL)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91024     ', N'Phạm Sĩ', N'Tử', 0, CAST(0x3E1E0B00 AS Date), N'02        ', N'ĐT        ', N'VL        ', N'2013-2014 ', 1200000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92001     ', N'Bùi Mạnh', N'An', 0, CAST(0xEB1C0B00 AS Date), N'41        ', N'ĐT        ', N'CNSH      ', N'2013-2014 ', 1000000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92009     ', N'Ngô', N'Công', 0, CAST(0xE51C0B00 AS Date), N'41        ', N'ĐT        ', N'VL        ', N'2013-2014 ', NULL)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92013     ', N'Lê Hữu', N'Chí', 0, CAST(0x221D0B00 AS Date), N'02        ', N'ĐT        ', N'CNSH      ', N'2013-2014 ', NULL)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92024     ', N'Võ Thành', N'Công', 0, CAST(0x171E0B00 AS Date), N'56        ', N'ĐT        ', N'CNSH      ', N'2013-2014 ', 900000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'93000     ', N'Nguyễn', N'Mai', 1, CAST(0x1F1E0B00 AS Date), N'02        ', N'ĐT        ', N'QTKD      ', N'2013-2014 ', 800000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'93001     ', N'Lê ', N'lộc', 1, CAST(0x421D0B00 AS Date), N'56        ', N'ĐT        ', N'QTKD      ', N'2013-2014 ', 900000)
INSERT [dbo].[sinhvien] ([masv], [hosv], [tensv], [phai], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'93002     ', N'Hoàng', N'Long', 0, CAST(0x611D0B00 AS Date), N'02        ', N'ĐT        ', N'QTKD      ', N'2013-2014 ', 1500000)
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G001      ', N'Nguyễn thị chín', CAST(0x4F140B00 AS Date), N'vợ')
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005      ', N'Trần Hữu Bình', CAST(0xCD230B00 AS Date), N'con trai')
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005      ', N'Trần Hữu Thắng', CAST(0x44FA0A00 AS Date), N'Chồng')
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005      ', N'Trần Kiều Oanh', CAST(0xE8260B00 AS Date), N'Con gái')
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G006      ', N'Bùi Mạnh Ngọc', CAST(0xB4F20A00 AS Date), N'Bố')
INSERT [dbo].[thannhan] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G007      ', N'Nguyễn Thị An', CAST(0xEF210B00 AS Date), N'Con gái')
ALTER TABLE [dbo].[dangky]  WITH CHECK ADD  CONSTRAINT [FK_dangky_monhoc] FOREIGN KEY([mamh])
REFERENCES [dbo].[monhoc] ([mamh])
GO
ALTER TABLE [dbo].[dangky] CHECK CONSTRAINT [FK_dangky_monhoc]
GO
ALTER TABLE [dbo].[dangky]  WITH CHECK ADD  CONSTRAINT [FK_dangky_sinhvien] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[dangky] CHECK CONSTRAINT [FK_dangky_sinhvien]
GO
ALTER TABLE [dbo].[giangday]  WITH CHECK ADD  CONSTRAINT [FK_giangday_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[giangday] CHECK CONSTRAINT [FK_giangday_giangvien]
GO
ALTER TABLE [dbo].[giangday]  WITH CHECK ADD  CONSTRAINT [FK_giangday_monhoc] FOREIGN KEY([mamh])
REFERENCES [dbo].[monhoc] ([mamh])
GO
ALTER TABLE [dbo].[giangday] CHECK CONSTRAINT [FK_giangday_monhoc]
GO
ALTER TABLE [dbo].[giangvien]  WITH CHECK ADD  CONSTRAINT [FK_giangvien_khoa] FOREIGN KEY([makhoa])
REFERENCES [dbo].[khoa] ([makhoa])
GO
ALTER TABLE [dbo].[giangvien] CHECK CONSTRAINT [FK_giangvien_khoa]
GO
ALTER TABLE [dbo].[ketqua]  WITH CHECK ADD  CONSTRAINT [FK_ketqua_monhoc1] FOREIGN KEY([mamh])
REFERENCES [dbo].[monhoc] ([mamh])
GO
ALTER TABLE [dbo].[ketqua] CHECK CONSTRAINT [FK_ketqua_monhoc1]
GO
ALTER TABLE [dbo].[ketqua]  WITH CHECK ADD  CONSTRAINT [FK_ketqua_sinhvien1] FOREIGN KEY([masv])
REFERENCES [dbo].[sinhvien] ([masv])
GO
ALTER TABLE [dbo].[ketqua] CHECK CONSTRAINT [FK_ketqua_sinhvien1]
GO
ALTER TABLE [dbo].[monhoc]  WITH CHECK ADD  CONSTRAINT [FK_monhoc_khoa] FOREIGN KEY([makhoa])
REFERENCES [dbo].[khoa] ([makhoa])
GO
ALTER TABLE [dbo].[monhoc] CHECK CONSTRAINT [FK_monhoc_khoa]
GO
ALTER TABLE [dbo].[qlykhoa]  WITH CHECK ADD  CONSTRAINT [FK_qlykhoa_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[qlykhoa] CHECK CONSTRAINT [FK_qlykhoa_giangvien]
GO
ALTER TABLE [dbo].[qlykhoa]  WITH CHECK ADD  CONSTRAINT [FK_qlykhoa_khoa] FOREIGN KEY([makhoa])
REFERENCES [dbo].[khoa] ([makhoa])
GO
ALTER TABLE [dbo].[qlykhoa] CHECK CONSTRAINT [FK_qlykhoa_khoa]
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_khoa] FOREIGN KEY([makhoa])
REFERENCES [dbo].[khoa] ([makhoa])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_khoa]
GO
ALTER TABLE [dbo].[thannhan]  WITH CHECK ADD  CONSTRAINT [FK_thannhan_giangvien] FOREIGN KEY([magv])
REFERENCES [dbo].[giangvien] ([magv])
GO
ALTER TABLE [dbo].[thannhan] CHECK CONSTRAINT [FK_thannhan_giangvien]
GO