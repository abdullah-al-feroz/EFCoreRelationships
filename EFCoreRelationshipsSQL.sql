/****** Object:  Database [efcorerelationship]    Script Date: 12/20/2021 3:35:27 PM ******/
CREATE DATABASE [efcorerelationship]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'efcorerelationship', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\efcorerelationship.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'efcorerelationship_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\efcorerelationship_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [efcorerelationship] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [efcorerelationship].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [efcorerelationship] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [efcorerelationship] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [efcorerelationship] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [efcorerelationship] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [efcorerelationship] SET ARITHABORT OFF 
GO
ALTER DATABASE [efcorerelationship] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [efcorerelationship] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [efcorerelationship] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [efcorerelationship] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [efcorerelationship] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [efcorerelationship] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [efcorerelationship] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [efcorerelationship] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [efcorerelationship] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [efcorerelationship] SET  ENABLE_BROKER 
GO
ALTER DATABASE [efcorerelationship] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [efcorerelationship] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [efcorerelationship] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [efcorerelationship] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [efcorerelationship] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [efcorerelationship] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [efcorerelationship] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [efcorerelationship] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [efcorerelationship] SET  MULTI_USER 
GO
ALTER DATABASE [efcorerelationship] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [efcorerelationship] SET DB_CHAINING OFF 
GO
ALTER DATABASE [efcorerelationship] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [efcorerelationship] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [efcorerelationship] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [efcorerelationship] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [efcorerelationship] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Characters]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[RpgClass] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterSkill]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSkill](
	[CharactersId] [int] NOT NULL,
	[SkillsId] [int] NOT NULL,
 CONSTRAINT [PK_CharacterSkill] PRIMARY KEY CLUSTERED 
(
	[CharactersId] ASC,
	[SkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Damage] [int] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weapons]    Script Date: 12/20/2021 3:35:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weapons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Damage] [int] NOT NULL,
	[CharacterId] [int] NOT NULL,
 CONSTRAINT [PK_Weapons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211206113014_UserEntity', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211206113610_UserCharacterRelation', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211206120259_CharacterWeaponRelationship', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211206122014_CharacterSkillRelationship', N'6.0.0')
GO
SET IDENTITY_INSERT [dbo].[Characters] ON 

INSERT [dbo].[Characters] ([Id], [Name], [RpgClass], [UserId]) VALUES (1, N'Frodo', N'Knight', 1)
INSERT [dbo].[Characters] ([Id], [Name], [RpgClass], [UserId]) VALUES (2, N'Raistlin', N'Wizrad', 1)
INSERT [dbo].[Characters] ([Id], [Name], [RpgClass], [UserId]) VALUES (3, N'Sam', N'Knight', 2)
INSERT [dbo].[Characters] ([Id], [Name], [RpgClass], [UserId]) VALUES (5, N'Legolas', N'Archer', 2)
SET IDENTITY_INSERT [dbo].[Characters] OFF
GO
INSERT [dbo].[CharacterSkill] ([CharactersId], [SkillsId]) VALUES (1, 1)
INSERT [dbo].[CharacterSkill] ([CharactersId], [SkillsId]) VALUES (2, 1)
INSERT [dbo].[CharacterSkill] ([CharactersId], [SkillsId]) VALUES (2, 2)
INSERT [dbo].[CharacterSkill] ([CharactersId], [SkillsId]) VALUES (1, 3)
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Name], [Damage]) VALUES (1, N'Fireball', 20)
INSERT [dbo].[Skills] ([Id], [Name], [Damage]) VALUES (2, N'Bizzard', 50)
INSERT [dbo].[Skills] ([Id], [Name], [Damage]) VALUES (3, N'Heal', -30)
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username]) VALUES (1, N'Dude')
INSERT [dbo].[Users] ([Id], [Username]) VALUES (2, N'Master')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Weapons] ON 

INSERT [dbo].[Weapons] ([Id], [Name], [Damage], [CharacterId]) VALUES (1, N'The Master Sword', 100, 1)
INSERT [dbo].[Weapons] ([Id], [Name], [Damage], [CharacterId]) VALUES (2, N'Magic Staff', 200, 2)
SET IDENTITY_INSERT [dbo].[Weapons] OFF
GO
/****** Object:  Index [IX_Characters_UserId]    Script Date: 12/20/2021 3:35:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Characters_UserId] ON [dbo].[Characters]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CharacterSkill_SkillsId]    Script Date: 12/20/2021 3:35:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_CharacterSkill_SkillsId] ON [dbo].[CharacterSkill]
(
	[SkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Weapons_CharacterId]    Script Date: 12/20/2021 3:35:27 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Weapons_CharacterId] ON [dbo].[Weapons]
(
	[CharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_Users_UserId]
GO
ALTER TABLE [dbo].[CharacterSkill]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSkill_Characters_CharactersId] FOREIGN KEY([CharactersId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSkill] CHECK CONSTRAINT [FK_CharacterSkill_Characters_CharactersId]
GO
ALTER TABLE [dbo].[CharacterSkill]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSkill_Skills_SkillsId] FOREIGN KEY([SkillsId])
REFERENCES [dbo].[Skills] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSkill] CHECK CONSTRAINT [FK_CharacterSkill_Skills_SkillsId]
GO
ALTER TABLE [dbo].[Weapons]  WITH CHECK ADD  CONSTRAINT [FK_Weapons_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Weapons] CHECK CONSTRAINT [FK_Weapons_Characters_CharacterId]
GO
ALTER DATABASE [efcorerelationship] SET  READ_WRITE 
GO
