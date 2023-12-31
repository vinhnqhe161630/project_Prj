USE [AssignmentPRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ac_id] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](150) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](150) NULL,
	[firstname] [nvarchar](150) NULL,
	[lastname] [nvarchar](150) NULL,
	[gender] [int] NULL,
	[status] [int] NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ac_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ca_id] [int] NOT NULL,
	[ca_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ca_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_stories]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_stories](
	[cs_id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [int] NULL,
	[ca_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapters]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapters](
	[ch_id] [int] IDENTITY(1,1) NOT NULL,
	[ch_number] [int] NOT NULL,
	[upchap_at] [datetime2](7) NULL,
	[s_id] [int] NULL,
 CONSTRAINT [PK_Chapters] PRIMARY KEY CLUSTERED 
(
	[ch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment1]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment1](
	[commentid] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[create_at] [datetime2](7) NULL,
	[s_id] [int] NULL,
	[ac_id] [int] NULL,
 CONSTRAINT [PK_Comment1] PRIMARY KEY CLUSTERED 
(
	[commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stories]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stories](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [nvarchar](150) NOT NULL,
	[view] [int] NULL,
	[image] [nvarchar](150) NOT NULL,
	[create_at] [datetime2](7) NULL,
	[upchap_at] [date] NULL,
	[country] [int] NOT NULL,
	[a_id] [int] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Stories] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoryViews]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoryViews](
	[sv_id] [int] IDENTITY(1,1) NOT NULL,
	[view_date] [datetime2](7) NOT NULL,
	[view_count] [int] NOT NULL,
 CONSTRAINT [PK_StoryViews] PRIMARY KEY CLUSTERED 
(
	[sv_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Translate]    Script Date: 19/10/2023 10:56:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translate](
	[tranid] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [int] NULL,
	[ac_id] [int] NULL,
 CONSTRAINT [PK_Translate] PRIMARY KEY CLUSTERED 
(
	[tranid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (1, N'sa', N'123', NULL, N'admin', N'1', 1, 1, 0)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (2, N'admin', N'abc', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (3, N'author', N'123', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (4, N'vinh', N'123', N'abc@gmail.com', N'ab', N'a', 1, 0, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (5, N'vinhnq', N'123', N'abc@gmail.com', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (6, N'toan', N'123', N'abc@gmail.com', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (7, N'hoa', N'123', NULL, N'Hoa', N'Hòe', 1, 0, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (15, N'user1', N'123', N'vinhnqhe161630@fpt.edu.vn', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (16, N'Hoalacai', N'123', N'abc@gmail.co', NULL, NULL, NULL, 0, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (17, N'sadda', N'123456', NULL, N'123', N'123', 0, 1, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (18, N'a', N'a', NULL, N'a', N'', 0, 1, 1)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (19, N'translator1', N'123', N'contho@gmail.com', N'Con', N'thỏ', 1, 1, 2)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (20, N'translator2', N'123', N'uoa@gmail.com', N'Ú', N'òa', 0, 1, 2)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (21, N'translator3', N'123', N'run@gmail.com', N'Run ', N'', 0, 1, 2)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (22, N'translator4', N'123', N'conho@gmail.com', N'Hổ', N'con', 1, 1, 2)
INSERT [dbo].[Account] ([ac_id], [user], [password], [email], [firstname], [lastname], [gender], [status], [role]) VALUES (23, N'dat3d', N'abc', N'blala@gmail.com', NULL, NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (1, N'Robo, Meka')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (2, N'Tabata Yuuki')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (3, N'Aoyama Gosho')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (4, N'Riichiro Inagaki and illustrated')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (5, N'Chong Myung')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (6, N'Hajime Komoto')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (7, N'Hajime')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (10, N'Đang cập nhập')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (11, N'123')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (12, N'23')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (18, N'Kinoko Nasu')
INSERT [dbo].[Authors] ([a_id], [a_name]) VALUES (19, N'')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (1, N'Action')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (2, N'Adventure')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (3, N'Drama')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (4, N'Huyền Huyễn')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (5, N'Manhwa')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (6, N'Xuyên Không')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (7, N'Sports')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (8, N'Comedy')
INSERT [dbo].[Categories] ([ca_id], [ca_name]) VALUES (9, N'Romantic')
GO
SET IDENTITY_INSERT [dbo].[Category_stories] ON 

INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (5, 2, 8)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (6, 2, 9)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (7, 2, 3)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (10, 4, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (11, 4, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (12, 5, 8)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (13, 5, 9)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (14, 5, 6)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (15, 6, 8)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (16, 6, 9)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (17, 6, 6)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (18, 7, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (19, 7, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (20, 7, 4)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (21, 7, 6)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (24, 9, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (25, 9, 5)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (34, 22, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (35, 22, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (36, 22, 4)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (37, 22, 6)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (43, 25, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (44, 25, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (45, 25, 5)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (48, 16, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (49, 16, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (50, 16, 8)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (51, 24, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (52, 24, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (111, 23, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (112, 23, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (113, 3, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (114, 3, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (115, 3, 5)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (128, 1, 1)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (129, 1, 2)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (130, 1, 3)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (131, 1, 5)
INSERT [dbo].[Category_stories] ([cs_id], [s_id], [ca_id]) VALUES (132, 1, 9)
SET IDENTITY_INSERT [dbo].[Category_stories] OFF
GO
SET IDENTITY_INSERT [dbo].[Chapters] ON 

INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (5, 1, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 2)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (6, 2, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 2)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (7, 3, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 2)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (8, 4, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 2)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (9, 5, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 2)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (10, 1, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 3)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (11, 2, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 3)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (12, 3, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 3)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (13, 4, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 3)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (14, 5, CAST(N'2023-07-02T09:08:48.5033333' AS DateTime2), 3)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (15, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 4)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (16, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 4)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (17, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 4)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (18, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 4)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (19, 5, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 4)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (20, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 5)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (21, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 5)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (22, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 5)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (23, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 5)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (24, 5, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 5)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (25, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 6)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (26, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 6)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (27, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 6)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (28, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 6)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (29, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 7)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (30, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 7)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (31, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 7)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (32, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 7)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (37, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 9)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (38, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 9)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (39, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 9)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (40, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 9)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (41, 1, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 10)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (42, 2, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 10)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (43, 3, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 10)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (44, 4, CAST(N'2023-07-02T09:08:48.5066667' AS DateTime2), 10)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (45, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 11)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (46, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 12)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (48, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 14)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (49, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 15)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (50, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 16)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (51, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 17)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (53, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 19)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (54, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 20)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (55, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 21)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (56, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 22)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (58, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 24)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (59, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 25)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (60, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 26)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (61, 1, CAST(N'2023-07-02T09:08:48.5100000' AS DateTime2), 27)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (84, 2, CAST(N'2023-07-07T08:44:45.0000000' AS DateTime2), 24)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (85, 3, CAST(N'2023-07-07T08:44:48.0000000' AS DateTime2), 24)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (86, 4, CAST(N'2023-07-07T08:44:50.0000000' AS DateTime2), 24)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (95, 0, CAST(N'2023-07-07T09:39:27.0000000' AS DateTime2), 23)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (96, 1, CAST(N'2023-07-07T09:39:32.0000000' AS DateTime2), 23)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (97, 2, CAST(N'2023-07-07T10:01:19.0000000' AS DateTime2), 23)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (98, 2, CAST(N'2023-07-07T14:06:25.0000000' AS DateTime2), 22)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (99, 3, CAST(N'2023-07-07T14:06:29.0000000' AS DateTime2), 22)
INSERT [dbo].[Chapters] ([ch_id], [ch_number], [upchap_at], [s_id]) VALUES (158, 0, CAST(N'2023-07-11T13:54:15.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Chapters] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment1] ON 

INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (1, N'good', CAST(N'2023-07-03T10:50:43.5333333' AS DateTime2), 23, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (2, N'lol', CAST(N'2023-07-03T10:51:11.0866667' AS DateTime2), 24, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (3, N'oh shit main', CAST(N'2023-07-03T10:51:35.8633333' AS DateTime2), 19, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (4, N'i hate man', CAST(N'2023-07-03T10:52:34.2033333' AS DateTime2), 19, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (5, N'iioo', CAST(N'2023-07-03T10:53:14.5233333' AS DateTime2), 22, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (6, N'hahaha', CAST(N'2023-07-03T10:58:43.7400000' AS DateTime2), 9, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (7, N'ụ', CAST(N'2023-07-03T11:03:04.0866667' AS DateTime2), 20, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (8, N'like ', CAST(N'2023-07-03T11:03:42.8333333' AS DateTime2), 24, 4)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (9, N'main so cool', CAST(N'2023-07-03T11:04:23.6566667' AS DateTime2), 7, 6)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (10, N'ohhhhhhhhhh', CAST(N'2023-07-07T14:41:07.0366667' AS DateTime2), 2, 2)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (11, N'ụ', CAST(N'2023-07-07T16:00:33.3566667' AS DateTime2), 7, 2)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (14, N'a', CAST(N'2023-07-08T11:18:36.4733333' AS DateTime2), 23, 1)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (16, N'i love u', CAST(N'2023-07-09T21:46:10.7200000' AS DateTime2), 24, 1)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (17, N'good', CAST(N'2023-07-10T09:15:52.5066667' AS DateTime2), 1, 2)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (19, N'run away', CAST(N'2023-07-10T10:42:13.1433333' AS DateTime2), 14, 5)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (20, N'braaaaaaa', CAST(N'2023-07-10T10:42:38.6700000' AS DateTime2), 4, 18)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (21, N'get go', CAST(N'2023-07-10T11:28:48.5200000' AS DateTime2), 14, 23)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (22, N'bla bla', CAST(N'2023-07-10T11:28:58.6666667' AS DateTime2), 4, 23)
INSERT [dbo].[Comment1] ([commentid], [content], [create_at], [s_id], [ac_id]) VALUES (23, N'a', CAST(N'2023-07-11T13:49:36.0366667' AS DateTime2), 23, 1)
SET IDENTITY_INSERT [dbo].[Comment1] OFF
GO
SET IDENTITY_INSERT [dbo].[Stories] ON 

INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (1, N'Bậc thầy thiết kế 1', 1001, N'img/bac-thay-thiet-ke-dien-trang_1635303545.jpg', CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-11' AS Date), 1, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (2, N'Cuộc sống thứ 2 của thần tượng toàn năng', 3235, N'img/cuoc-song-thu-2-cua-than-tuong-toan-nang_1679399182.jpg', CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-02' AS Date), 1, 1, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (3, N'Bậc thầy thuần hóa', 2130, N'img/bac-thay-thuan-hoa_1604461416.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-02' AS Date), 2, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (4, N'Black Clover', 5130, N'img/black-clover_1552555341.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-20' AS Date), 4, 2, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (5, N'Boss nhà giàu là nữ sinh trung học', 530, N'img/boss-nha-giau-lai-la-nu-sinh-trung-hoc_1665135506.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-20' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (6, N'Cháu trai của ta', 2130, N'img/chau-trai-cua-nam-chinh-rat-thich-toi_1687075484.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (7, N'Chưởng môn khiêm tốn chút', 5133, N'img/chuong-mon-khiem-ton-chut_1630928445.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (9, N'Cuồng ma tái thế', 541, N'img/cuong-ma-tai-the_1627102546.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (10, N'Đồ đệ của ta là đại phản diện', 4123, N'img/do-de-cua-ta-deu-la-dai-phan-phai_1670692557.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (11, N'Dr-Stone', 1234, N'img/dr-stone_1553497037.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 4, 4, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (12, N'Fairy-tail', 1231, N'img/fairy-tail_1552225441.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 4, 5, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (14, N'Hoa sơn tái xuất', 5123, N'img/hoa-son-tai-xuat_1625218263.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 2, 6, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (15, N'Mashle magic an muscles', 3120, N'img/mashle-magic-and-muscles_1580393483.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 4, 7, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (16, N'Ma thú siêu thần', 612, N'img/ma-thu-sieu-than_1664880426.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 2, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (17, N'Nanatsu no taizai', 2000, N'img/nanatsu-no-taizai_1442987070.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 4, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (19, N'Người trái đất quá tàn ác', 2125, N'img/nguoi-trai-dat-qua-that-rat-tan-ac_1636536333.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (20, N'Nương tử nhà ta là nữ đế', 1234, N'img/nuong-tu-nha-ta-la-bao-quan-nu-de-trong-tuong-lai_1667641123.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (21, N'Sự phụ ta thật là', 2001, N'img/su-phu-cua-ta-moi-khi-den-dai-nan-moi-dot-pha_1672631124.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (22, N'Ta có một tòa sơn trại', 2001, N'img/ta-co-mot-son-trai_1611192599.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 3, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (23, N'Ta là Tà đế ', 6020, N'img/ta-la-ta-de_1573619796.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 1, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (24, N'Toàn cầu dị năng', 3221, N'img/toan-cau-di-nang-toi-co-toan-bo-nguyen-to_1680234942.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 1, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (25, N'Tôi thăng cấp lúc ngủ', 1234, N'img/toi-thang-cap-trong-luc-ngu_1647761477.jpg', CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 2, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (26, N'Trọng sinh đô thị', 2000, N'img/trong-sinh-do-thi-tu-tien_1562305871.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 1, 10, 1)
INSERT [dbo].[Stories] ([s_id], [s_name], [view], [image], [create_at], [upchap_at], [country], [a_id], [status]) VALUES (27, N'Spy X family', 2000, N'img/spy-x-family_1555384708.jpg', CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-09' AS Date), 4, 10, 1)
SET IDENTITY_INSERT [dbo].[Stories] OFF
GO
SET IDENTITY_INSERT [dbo].[StoryViews] ON 

INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (1, CAST(N'2023-06-18T19:23:55.0000000' AS DateTime2), 1000)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (2, CAST(N'2023-06-25T19:23:55.0000000' AS DateTime2), 12340)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (3, CAST(N'2023-07-02T19:23:55.0000000' AS DateTime2), 14536)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (4, CAST(N'2023-07-09T19:23:55.0000000' AS DateTime2), 31301)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (5, CAST(N'2023-07-16T19:23:55.0000000' AS DateTime2), 37823)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (1002, CAST(N'2023-07-31T17:23:27.0000000' AS DateTime2), 31310)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (1003, CAST(N'2023-09-21T17:19:37.0000000' AS DateTime2), 37824)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (2003, CAST(N'2023-10-01T22:10:03.0000000' AS DateTime2), 31311)
INSERT [dbo].[StoryViews] ([sv_id], [view_date], [view_count]) VALUES (3003, CAST(N'2023-10-19T10:50:30.0000000' AS DateTime2), 27798)
SET IDENTITY_INSERT [dbo].[StoryViews] OFF
GO
SET IDENTITY_INSERT [dbo].[Translate] ON 

INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (1, 1, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (2, 2, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (3, 3, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (4, 4, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (5, 5, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (6, 6, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (7, 7, 19)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (9, 9, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (10, 10, 22)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (11, 11, 20)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (12, 12, 20)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (13, 14, 20)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (14, 16, 20)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (16, 17, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (17, 19, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (18, 20, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (19, 21, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (20, 22, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (21, 23, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (22, 24, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (23, 25, 21)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (24, 26, 22)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (25, 27, 22)
INSERT [dbo].[Translate] ([tranid], [s_id], [ac_id]) VALUES (31, 15, 22)
SET IDENTITY_INSERT [dbo].[Translate] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('1') FOR [status]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('1') FOR [role]
GO
ALTER TABLE [dbo].[Chapters] ADD  DEFAULT (getdate()) FOR [upchap_at]
GO
ALTER TABLE [dbo].[Comment1] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[Stories] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[Stories] ADD  DEFAULT ('1') FOR [status]
GO
ALTER TABLE [dbo].[Category_stories]  WITH CHECK ADD FOREIGN KEY([ca_id])
REFERENCES [dbo].[Categories] ([ca_id])
GO
ALTER TABLE [dbo].[Category_stories]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[Stories] ([s_id])
GO
ALTER TABLE [dbo].[Chapters]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[Stories] ([s_id])
GO
ALTER TABLE [dbo].[Comment1]  WITH CHECK ADD FOREIGN KEY([ac_id])
REFERENCES [dbo].[Account] ([ac_id])
GO
ALTER TABLE [dbo].[Comment1]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[Stories] ([s_id])
GO
ALTER TABLE [dbo].[Stories]  WITH CHECK ADD FOREIGN KEY([a_id])
REFERENCES [dbo].[Authors] ([a_id])
GO
ALTER TABLE [dbo].[Translate]  WITH CHECK ADD FOREIGN KEY([ac_id])
REFERENCES [dbo].[Account] ([ac_id])
GO
ALTER TABLE [dbo].[Translate]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[Stories] ([s_id])
GO
