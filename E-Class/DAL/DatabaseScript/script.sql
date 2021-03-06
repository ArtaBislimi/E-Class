USE [master]
GO
/****** Object:  Database [MenaxhimiIOrarit]    Script Date: 12/30/2020 1:56:38 PM ******/
CREATE DATABASE [MenaxhimiIOrarit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MenaxhimiIOrarit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MenaxhimiIOrarit.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MenaxhimiIOrarit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MenaxhimiIOrarit_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MenaxhimiIOrarit] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MenaxhimiIOrarit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ARITHABORT OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET  MULTI_USER 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MenaxhimiIOrarit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MenaxhimiIOrarit] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MenaxhimiIOrarit]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GRUPI]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRUPI](
	[GrupiID] [int] IDENTITY(1,1) NOT NULL,
	[EmriGrupit] [int] NULL,
	[VitiAkademik] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GrupiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LENDA]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENDA](
	[LendaID] [int] IDENTITY(1,1) NOT NULL,
	[Emertimi] [nvarchar](50) NULL,
	[Libri] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LendaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROFESORAT]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESORAT](
	[ProfesoratID] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [nvarchar](50) NULL,
	[Mbiemri] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfesoratID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rezervimet]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervimet](
	[RezervimetID] [int] IDENTITY(1,1) NOT NULL,
	[GrupiID] [int] NULL,
	[ProfesoriID] [int] NULL,
	[SallaID] [int] NULL,
	[LendaID] [int] NULL,
	[Fillimi] [datetime] NULL,
	[Mbarimi] [datetime] NULL,
	[Statusi] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervimetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALLAT]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALLAT](
	[SallaID] [int] IDENTITY(1,1) NOT NULL,
	[NumriSalles] [int] NULL,
	[Tipi] [char](1) NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SallaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202012112216423_Init', N'E_Class.Migrations.Configuration', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829E7A0EB2562E6717DBC06E913AC939C1D95CB0CE167D0B68897684952855A2D204457F591FFA93FA173A942859BCE9622BB6532CB0B0C8E137C3E1901C0E87F9F3F73FC6DF3F8781F58493D48FC8C43E1A1DDA16266EE4F96439B133BA78F7D1FEFEBB7FFE637CE185CFD68F25DD09A38396249DD88F94C6A78E93BA8F3844E928F4DD244AA3051DB951E8202F728E0F0FBF758E8E1C0C10366059D6F87346A81FE2FC033EA71171714C33145C471E0E525E0E35B31CD5BA41214E63E4E2897DF1300D509A8E0A4ADB3A0B7C0452CC70B0B02D4448441105194FBFA4784693882C673114A0E0FE25C640B740418AB9ECA72BF2AEDD383C66DD70560D4B28374B6914F6043C3AE17A71E4E66B69D7AEF4069ABB000DD317D6EB5C7B13FBCAC379D1E7280005C80C4FA741C28827F675C5E22C8D6F301D950D4705E4650270BF44C9D7511DF1C0EADCEEA0B2A3E3D121FB77604DB38066099E109CD1040507D65D360F7CF7FFF8E53EFA8AC9E4E468BE38F9F8FE03F24E3EFC079FBCAFF714FA0A74420114DD25518C13900D2FAAFEDB9623B673E48655B35A9B422B604B30256CEB1A3D7FC264491F61B21C7FB4AD4BFF197B650937AE2FC48719048D6892C1E74D1604681EE0AADE69E4C9FE6FE07AFCFEC3205C6FD093BFCC875EE20F13278179F51907796DFAE8C7C5F412C6FB81935D2651C8BE45FB2A6A1F665196B8AC339191E41E254B4C45E9C6CECA783B9934831ADEAC4BD4FD376D26A96ADE5A52D6A1756642C962DBB3A194F775F976B6B8B33886C1CB4D8B69A4C9E0C48D6A24B53CB02EDEE5F52B9339EA6A3204BAF2775E012F42E407032C811DB880E7B1F0931057BDFC21028343A4B7CC773094B00278FF43E96383E8F07300D167D8CD1230CC194561FCEADCEE1E23826FB270CEEC7D7BBC061B9AFB5FA24BE4D228B920ACD5C6789F22F76B94D10BE29D238ABF50B704649FF77ED81D601071CE5C17A7E9251833F6A61138D625E015A127C7BDE1D8E2B46B170416463FD4FB20D232FA5092AEFC103D85E28B18C874FE4893A89FA2A54FBA895A929A452D285A45E5647D456560DD24E5946641738256390BAAC13CBC7C848677F172D8FDF7F136DBBC4D6B414D8D335821F17F31C1092C63DE1DA214276435025DD68D5D380BF9F031A6AFBE37E59C7E44413634ABB56643BE080C3F1B72D8FD9F0DB99850FCE47BCC2BE970F0298901BE13BDFE4CD53EE724C9B63D1D846E6E9BF976D600D374394BD3C8F5F359A00979F18085283FF870567BF4A2E88D1C01818E81A1FB6CCB8312E89B2D1BD52D39C701A6D83A738B90E014A52EF254354287BC1E82953BAA46B055244414EEDF0A4FB0749CB046881D825298A93EA1EAB4F089EBC72868D592D4B2E316C6FA5EF1906BCE718C0963D8AA892ECCF5810F2640C5471A94360D8D9D9AC5351BA2C16B358D799B0BBB1A77251EB1159B6CF19D0D76C9FDB75731CC668D6DC1389B55D2450063106F1706CACF2A5D0D403EB8EC9B814A2726838172976A2B062A6A6C07062AAAE4CD19687144ED3AFED27975DFCC533C286F7F5B6F54D70E6C53D0C79E9966E17B421B0A2D70A29AE7F99C55E267AA399C819CFC7C967257573611063EC3540CD9ACFC5DAD1FEA3483C846D404B832B416507EFDA7002913AA8770652CAF513AEE45F4802DE36E8DB07CED97606B36A062D7AF416B84E6CB52D9383B9D3EAA9E55D6A01879A7C3420D476310F2E22576BC83524C715955315D7CE13EDE70AD637C301A14D4E2B91A94547666702D95A6D9AE259D43D6C725DB484B92FB64D052D999C1B5C46DB45D491AA7A0875BB0918AC42D7CA0C956463AAADDA6AA1B3B4566142F183B8614AAF1358A639F2C6B2955BCC49A15F954D377B3FEC9466181E1B8A926E7A892B6E244A3042DB1540BAC41D24B3F49E939A2688E589C67EA850A99766F352CFF25CBFAF6A90E62B90F94D4EC37BF14162FED857D56754478FB4BE85DC8BC993C84AE197B7D738BA5B7A100259AA8FD340AB290989D2B73EBE2EEAEDEBE285111C68E24BFE23C299A525C5C51ED9D06459D10030C50E5B7AC3F48660893AA4BAFB3AE6C93276A46290353751453B06A67836672603A0F94EC17F61FA75684D7994F3C19A50EC08B7A62D4F21914B05A5D775431E5A48E29D6744794F24AEA9052550F29EBD9238290F58AB5F00C1AD55374E7A0E68BD4D1D5DAEEC89ACC913AB4A67A0D6C8DCC725D77544D72491D5853DD1D7B9569222FA07BBC63194F2B6B6D59C56176B33DCB80F13AABE1305B5EEDCEBE0E542BEE89C56FE515305EBE9796643CD1AD654945FC62334B326098571CE1A65B5C701AAFE7CD98C2F5B5B0A8375DDF9BF1FAD9EBAB5A85729893492AEED5A14E3ABC8DF941AAFD918C72B22A486CAB54236CE82F29C5E188118C663F07D3C0C76CF92E09AE11F11738A545CA867D7C78742CBDB5D99F772F4E9A7A81E6206A7AFC228ED916B2AFC8134ADC4794A8B9101BBC0D59812A61E62BE2E1E789FD6BDEEA348F58B05F79F18175957E21FECF1954DC2719B67E53733B87C995EFF03AA312F4B737F1ECA1BBCAAF7E7A289A1E58B7094CA753EB5052F43AC32F3E86E8254DD1740369D67E22F176679BF00E418B2ACD96F59F1DCC7D3AC8938352CA6F42F4FCAFBEA2699F156C84A8793A3014DE202A343D0D5807CBF82CC0834F9A3F0BE8D759FD33817544333E11F0497F30F98140F765A86CB9C37D487358DAC69294EBB935C17AA36CCB5DEF4D4A1EF646135DCDB5EE0137683EF5662ECA1BCB531E6CEBD4A4210F86BD4BBB7FF5DCE37D49375E39EDBBCD32DE666271C325D2DF2A9F780F32E034193DBBCF1ADEB6AD99A2BF7B9E7AD92F3778CF8C8D6FF3BBCF00DEB6B19902C47B6E6CBDF27CF7CCD676B57FEED8D23A6FA13BCFDA5513900CB738BA28725B566E117287E3FF3C0223283CCAE231A53E0DAC2985B585E18AC4CCD49C7F263356268EC257A16866DBAFAF7CC36FEC2CA769666BC8DA6CE2CDD7FF46DE9CA699B721177217F9C4DA6C445D8E77CB3AD69432F596F287859EB4A4ABB7F9AC8D57F26F295D7810A508B3C770BBFC76B2830751C99053A74736B07A510C7B67ED6F2EC2FE9DFACB1504FB0B8C04BBC2AE59D15C9145546EDE9244258914A1B9C61479B0A59E25D45F209742350B40E7AFC1F3A01EBB069963EF8ADC6634CE28741987F34008783127A0897F9EF22CCA3CBE8DD9573A4417404C9F05EE6FC90F991F7895DC979A9890018279173CDCCBC692B2B0EFF2A542BA89484720AEBECA29BAC7611C00587A4B66E809AF231B98DF27BC44EECB2A026802691F0851EDE3731F2D1314A61C63D51E3EC186BDF0F9BBBF0007DA33E27A540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'prof')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'student')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4d848a3-224b-4540-a209-bd5c195448e2', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2f0b721d-9c1d-4d2d-aafa-8b56b45c68c5', N'arta.bislimi@riinvest.net', 0, N'AEo+lEU7wYSfecxx61hdD5VukuKxEmpQgXKLglt3ep2s6XZiACXAyOXXU06aW9u5BQ==', N'0e0208bf-dd2e-4dc3-a702-ec6544498e90', NULL, 0, 0, NULL, 1, 0, N'arta.bislimi@riinvest.net')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c4d848a3-224b-4540-a209-bd5c195448e2', N'admin@riinvest.net', 0, N'AL+CyKc66Pq7Pc7n9UBT9S2MS7vVgj6imbYIczrR76vD36p4Jn5bUdfQlaSUE7QBTg==', N'd151212c-9d4f-41bd-81b8-06f9fb257bf7', NULL, 0, 0, NULL, 1, 0, N'admin@riinvest.net')
SET IDENTITY_INSERT [dbo].[GRUPI] ON 

INSERT [dbo].[GRUPI] ([GrupiID], [EmriGrupit], [VitiAkademik], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (1, 2, 2020, CAST(N'2020-12-01 16:05:59.747' AS DateTime), NULL, 1)
INSERT [dbo].[GRUPI] ([GrupiID], [EmriGrupit], [VitiAkademik], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (2, 1, 2020, CAST(N'2020-12-01 16:06:12.713' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[GRUPI] OFF
SET IDENTITY_INSERT [dbo].[LENDA] ON 

INSERT [dbo].[LENDA] ([LendaID], [Emertimi], [Libri], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (2, N'Projekti TI 2', N'"Windows Forms"', CAST(N'2020-12-02 11:27:55.170' AS DateTime), NULL, 0)
INSERT [dbo].[LENDA] ([LendaID], [Emertimi], [Libri], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (3, N'Projekti TI 2', N'"ASP.Net MVC"', CAST(N'2020-12-02 11:33:02.437' AS DateTime), NULL, 0)
INSERT [dbo].[LENDA] ([LendaID], [Emertimi], [Libri], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (4, N'TI 2', N'asp.net mvc .net core', CAST(N'2020-12-16 10:19:33.547' AS DateTime), NULL, 0)
INSERT [dbo].[LENDA] ([LendaID], [Emertimi], [Libri], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (5, N'Baza te Dhena', N'database', CAST(N'2020-12-16 16:24:22.010' AS DateTime), NULL, 0)
INSERT [dbo].[LENDA] ([LendaID], [Emertimi], [Libri], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (6, N'TI 2', N'asp.net mvc', CAST(N'2020-12-16 16:46:42.997' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[LENDA] OFF
SET IDENTITY_INSERT [dbo].[PROFESORAT] ON 

INSERT [dbo].[PROFESORAT] ([ProfesoratID], [Emri], [Mbiemri], [Mail], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (1, N'Astrit', N'Desku', N'astrit.desku@riinvest.net', CAST(N'2020-12-02 14:48:48.830' AS DateTime), NULL, 0)
INSERT [dbo].[PROFESORAT] ([ProfesoratID], [Emri], [Mbiemri], [Mail], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (1003, N'Naim', N'Hoxha', N'naim.hoxha@riinvest.net', CAST(N'2020-12-15 15:27:07.143' AS DateTime), NULL, 0)
INSERT [dbo].[PROFESORAT] ([ProfesoratID], [Emri], [Mbiemri], [Mail], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (1005, N'Arben', N'Ahmeti', N'arben.ahmeti@riinvest.net', CAST(N'2020-12-16 09:56:56.623' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[PROFESORAT] OFF
SET IDENTITY_INSERT [dbo].[SALLAT] ON 

INSERT [dbo].[SALLAT] ([SallaID], [NumriSalles], [Tipi], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (1, 201, N'L', CAST(N'2020-12-02 11:12:15.830' AS DateTime), NULL, 0)
INSERT [dbo].[SALLAT] ([SallaID], [NumriSalles], [Tipi], [CreatedOn], [LastUpdate], [IsDeleted]) VALUES (2, 202, N'S', CAST(N'2020-12-02 11:13:07.613' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[SALLAT] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/30/2020 1:56:39 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Rezervimet]  WITH CHECK ADD FOREIGN KEY([GrupiID])
REFERENCES [dbo].[GRUPI] ([GrupiID])
GO
ALTER TABLE [dbo].[Rezervimet]  WITH CHECK ADD FOREIGN KEY([LendaID])
REFERENCES [dbo].[LENDA] ([LendaID])
GO
ALTER TABLE [dbo].[Rezervimet]  WITH CHECK ADD FOREIGN KEY([ProfesoriID])
REFERENCES [dbo].[PROFESORAT] ([ProfesoratID])
GO
ALTER TABLE [dbo].[Rezervimet]  WITH CHECK ADD FOREIGN KEY([SallaID])
REFERENCES [dbo].[SALLAT] ([SallaID])
GO
/****** Object:  StoredProcedure [dbo].[usp_Grupi_Add]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Grupi_Add](
@EmriGrupit int,
@VitiAkademik int,
@CreatedOn datetime
)
as
begin
insert GRUPI(EmriGrupit,VitiAkademik,CreatedOn,IsDeleted)
values(@EmriGrupit,@VitiAkademik,@CreatedOn,0)
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Grupi_Delete]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Grupi_Delete](
@GrupiId int
)
as 
Begin 
DELETE
From GRUPI
where GrupiID=@GrupiId
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Grupi_Edit]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Grupi_Edit](
@GrupiId int,
@EmriGrupit int,
@VitiAkademik int,
@LastUpdate datetime
)
as
begin
update GRUPI
set
	EmriGrupit=@EmriGrupit,
	VitiAkademik=@VitiAkademik,
	LastUpdate=@LastUpdate
  where GrupiID=@GrupiId
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Grupi_List]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Grupi_List]
as
begin
select * from GRUPI
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Grupi_Read]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Grupi_Read](
@GrupiId int
)
as 
begin
  select * from GRUPI
  where IsDeleted=0
end 


GO
/****** Object:  StoredProcedure [dbo].[usp_Lenda_Add]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Lenda_Add](
@Emertimi nvarchar(50),
@Libri nvarchar(50),
@CreatedOn datetime
)
as
begin
insert LENDA(Emertimi,Libri,CreatedOn,IsDeleted)
values(@Emertimi,@Libri,@CreatedOn,0)
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Lenda_Delete]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_Lenda_Delete](
@LendaId int
)
as 
Begin 
DELETE
From LENDA
where LendaID=@LendaId
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Lenda_Edit]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Lenda_Edit]
@LendaID int,
@Emertimi nvarchar(50),
@Libri nvarchar(50)
as
begin
update LENDA
set
	Emertimi=@Emertimi,
	Libri=@Libri
  where LendaID=@LendaID
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Lenda_List]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Lenda_List]
as
begin
select * from LENDA
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Lenda_Read]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Lenda_Read](
@LendaID int
)
as 
begin
  select * from LENDA
  where LendaID=@LendaID
end 

GO
/****** Object:  StoredProcedure [dbo].[usp_Profesorat_Add]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Profesorat_Add](
@Emri nvarchar(50),
@Mbiemri nvarchar(50),
@Mail nvarchar(50),
@CreatedOn datetime
)
as
begin
insert PROFESORAT(Emri,Mbiemri,Mail,CreatedOn,IsDeleted)
values(@Emri,@Mbiemri,@Mail,@CreatedOn,0)
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Profesorat_Delete]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Profesorat_Delete](
@ProfesoratID int
)
as 
Begin 
DELETE
From PROFESORAT
where ProfesoratID=@ProfesoratID
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Profesorat_Edit]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Profesorat_Edit](
@ProfesoratID int,
@Emri nvarchar(50),
@Mbiemri nvarchar(50),
@Mail nvarchar(50),
@LastUpdate datetime
)
as
begin
update PROFESORAT
set
	Emri=@Emri,
	Mbiemri=@Mbiemri,
	Mail=@Mail,
	LastUpdate=@LastUpdate
  where ProfesoratID=@ProfesoratID
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Profesorat_List]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Profesorat_List]
as
begin
select * from PROFESORAT
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Profesorat_Read]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_Profesorat_Read](
@ProfesoratID int
)
as 
begin
  select * from PROFESORAT
  where ProfesoratID = @ProfesoratID
end 


GO
/****** Object:  StoredProcedure [dbo].[usp_Rezervimet_Add]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Rezervimet_Add](
@RezervimetID int,
@GrupiID int,
@ProfesoriID int,
@SallaID int,
@LendaId int,
@Fillimi datetime,
@Mbarimi datetime,
@statusi int,
@CreatedOn datetime
)
as
begin
insert Rezervimet(RezervimetID,GrupiID,ProfesoriID,SallaID,LendaID,Fillimi,Mbarimi,Statusi,CreatedOn)
values(@RezervimetID,@GrupiID,@ProfesoriID,@SallaID,@LendaId,@Fillimi,@Mbarimi,@statusi,@CreatedOn)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Rezervimet_Delete]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Rezervimet_Delete](
@RezervimetID int
)
as 
Begin 
DELETE
From Rezervimet
where RezervimetID=@RezervimetID
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Rezervimet_Edit]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_Rezervimet_Edit](
@RezervimetID int,
@GrupiID int,
@ProfesoriID int,
@SallaID int,
@LendaID int,
@Fillimi datetime,
@Mbarimi datetime,
@statusi int,
@LastUpdate datetime
)
as
begin
update Rezervimet
set
	GrupiID=@GrupiID,
	ProfesoriID=@ProfesoriID,
	SallaID=@SallaID,
	LendaID=@LendaID,
	@Fillimi=@ProfesoriID,
	Mbarimi=@Mbarimi,
	statusi=@statusi,
	LastUpdate=@LastUpdate
  where RezervimetID=@RezervimetID
end

GO
/****** Object:  StoredProcedure [dbo].[usp_Rezervimet_List]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Rezervimet_List]
as
begin
select * from Rezervimet
end

GO
/****** Object:  StoredProcedure [dbo].[usp_Rezervimet_Read]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Rezervimet_Read](
@RezervimetID int
)
as 
begin
  select * from Rezervimet
  where IsDeleted=0
end 

GO
/****** Object:  StoredProcedure [dbo].[usp_Sallat_Add]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Sallat_Add](
@NumriSalles int,
@Tipi char(1),
@CreatedOn datetime
)
as
begin
insert SALLAT(NumriSalles,Tipi,CreatedOn,IsDeleted)
values(@NumriSalles,@Tipi,@CreatedOn,0)
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Sallat_Delete]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Sallat_Delete](
@SallatID int
)
as
begin
  DELETE 
  FROM SALLAT
	where SallaID=@SallatID
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Sallat_Edit]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Sallat_Edit](
@SallaID int,
@NumriSalles int,
@Tipi char(1),
@LastUpdate datetime
)
as
begin
update SALLAT
set
	NumriSalles=@NumriSalles,
	Tipi=@Tipi,
	LastUpdate=@LastUpdate
  where SallaID=@SallaID
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Sallat_List]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Sallat_List]
as
begin
select * from SALLAT
end


GO
/****** Object:  StoredProcedure [dbo].[usp_Sallat_Read]    Script Date: 12/30/2020 1:56:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_Sallat_Read](
@GrupiId int
)
as 
begin
  select * from SALLAT
  where IsDeleted=0
end 


GO
USE [master]
GO
ALTER DATABASE [MenaxhimiIOrarit] SET  READ_WRITE 
GO
