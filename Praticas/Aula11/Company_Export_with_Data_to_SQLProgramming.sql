USE [company]
GO
/****** Object:  Table [dbo].[department]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[Dname] [varchar](20) NULL,
	[Dnumber] [int] NOT NULL,
	[Mgr_ssn] [char](9) NULL,
	[Mgr_start_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Dname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[department] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Investigacao', 1, N'21312332 ', CAST(0x21330B00 AS Date))
INSERT [dbo].[department] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Comercial', 2, N'321233765', CAST(0x1B370B00 AS Date))
INSERT [dbo].[department] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Logistica', 3, N'41124234 ', CAST(0x1B370B00 AS Date))
INSERT [dbo].[department] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Recursos Humanos', 4, NULL, NULL)
/****** Object:  Table [dbo].[project]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[project](
	[Pname] [varchar](15) NOT NULL,
	[Pnumber] [int] NOT NULL,
	[Plocation] [varchar](15) NULL,
	[Dnum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Pname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[project] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Aveiro Digital', 1, N'Aveiro', 3)
INSERT [dbo].[project] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'BD Open Day', 2, N'Espinho', 2)
INSERT [dbo].[project] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Dicoogle', 3, N'Aveiro', 3)
INSERT [dbo].[project] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'GOPACS', 4, N'Aveiro', 3)
/****** Object:  Table [dbo].[employee]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[Fname] [varchar](15) NOT NULL,
	[Minit] [char](1) NULL,
	[Lname] [varchar](15) NOT NULL,
	[Ssn] [char](9) NOT NULL,
	[Bdate] [date] NULL,
	[Address] [varchar](30) NULL,
	[Sex] [char](1) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Super_ssn] [char](9) NULL,
	[Dno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ssn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[employee] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Paula', N'A', N'Martins', N'183623612', CAST(0x53260B00 AS Date), N'Rua da FRENTE', N'F', CAST(1450.00 AS Decimal(10, 2)), N'321233765', 3)
INSERT [dbo].[employee] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Carlos', N'M', N'Costa', N'21312332 ', CAST(0x07240B00 AS Date), N'Rua XPTO', N'M', CAST(1200.00 AS Decimal(10, 2)), NULL, 1)
INSERT [dbo].[employee] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Juliana', N'A', N'Amaral', N'321233765', CAST(0x5D080B00 AS Date), N'Rua BZZZZ', N'F', CAST(1350.00 AS Decimal(10, 2)), NULL, 3)
INSERT [dbo].[employee] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Maria', N'I', N'Costa', N'342343434', CAST(0xED250B00 AS Date), N'Rua JANOTA', N'F', CAST(1250.00 AS Decimal(10, 2)), N'21312332 ', 2)
INSERT [dbo].[employee] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Joao', N'G', N'Costa', N'41124234 ', CAST(0xB9330B00 AS Date), N'Rua YGZ', N'M', CAST(1300.00 AS Decimal(10, 2)), N'21312332 ', 2)
/****** Object:  Table [dbo].[works_on]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[works_on](
	[Essn] [char](9) NOT NULL,
	[Pno] [int] NOT NULL,
	[Hours] [decimal](3, 1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Pno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'183623612', 1, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'183623612', 3, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'21312332 ', 1, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'321233765', 1, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'342343434', 1, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'342343434', 4, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[works_on] ([Essn], [Pno], [Hours]) VALUES (N'41124234 ', 3, CAST(30.0 AS Decimal(3, 1)))
/****** Object:  Table [dbo].[dept_locations]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept_locations](
	[Dnumber] [int] NOT NULL,
	[Dlocation] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC,
	[Dlocation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dependent]    Script Date: 05/17/2013 11:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dependent](
	[Essn] [char](9) NOT NULL,
	[Dependent_name] [varchar](15) NOT NULL,
	[Sex] [char](1) NULL,
	[Bdate] [date] NULL,
	[Relationship] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Dependent_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'21312332 ', N'Joana Costa', N'F', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'21312332 ', N'Maria Costa', N'F', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'21312332 ', N'Rui Costa', N'M', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'321233765', N'Filho Lindo', N'M', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'342343434', N'Rosa Lima', N'F', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'41124234 ', N'Ana Sousa', N'F', NULL, NULL)
INSERT [dbo].[dependent] ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship]) VALUES (N'41124234 ', N'Gaspar Pinto', N'M', NULL, NULL)
/****** Object:  ForeignKey [EMPTPNOFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[works_on]  WITH CHECK ADD  CONSTRAINT [EMPTPNOFK] FOREIGN KEY([Pno])
REFERENCES [dbo].[project] ([Pnumber])
GO
ALTER TABLE [dbo].[works_on] CHECK CONSTRAINT [EMPTPNOFK]
GO
/****** Object:  ForeignKey [EMPTSSNFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[works_on]  WITH CHECK ADD  CONSTRAINT [EMPTSSNFK] FOREIGN KEY([Essn])
REFERENCES [dbo].[employee] ([Ssn])
GO
ALTER TABLE [dbo].[works_on] CHECK CONSTRAINT [EMPTSSNFK]
GO
/****** Object:  ForeignKey [DEPTPNOFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [DEPTPNOFK] FOREIGN KEY([Dnum])
REFERENCES [dbo].[department] ([Dnumber])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [DEPTPNOFK]
GO
/****** Object:  ForeignKey [EMPDEPTFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [EMPDEPTFK] FOREIGN KEY([Dno])
REFERENCES [dbo].[department] ([Dnumber])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [EMPDEPTFK]
GO
/****** Object:  ForeignKey [EMPSUPERFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [EMPSUPERFK] FOREIGN KEY([Super_ssn])
REFERENCES [dbo].[employee] ([Ssn])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [EMPSUPERFK]
GO
/****** Object:  ForeignKey [DEPTNOFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[dept_locations]  WITH CHECK ADD  CONSTRAINT [DEPTNOFK] FOREIGN KEY([Dnumber])
REFERENCES [dbo].[department] ([Dnumber])
GO
ALTER TABLE [dbo].[dept_locations] CHECK CONSTRAINT [DEPTNOFK]
GO
/****** Object:  ForeignKey [EMPTESSNFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[dependent]  WITH CHECK ADD  CONSTRAINT [EMPTESSNFK] FOREIGN KEY([Essn])
REFERENCES [dbo].[employee] ([Ssn])
GO
ALTER TABLE [dbo].[dependent] CHECK CONSTRAINT [EMPTESSNFK]
GO
/****** Object:  ForeignKey [DEPTMGRFK]    Script Date: 05/17/2013 11:47:32 ******/
ALTER TABLE [dbo].[department]  WITH CHECK ADD  CONSTRAINT [DEPTMGRFK] FOREIGN KEY([Mgr_ssn])
REFERENCES [dbo].[employee] ([Ssn])
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [DEPTMGRFK]
GO
