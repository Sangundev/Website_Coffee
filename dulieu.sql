USE [master]
GO
/****** Object:  Database [QuanlybanCafeRuNam]    Script Date: 6/28/2024 5:37:13 PM ******/
CREATE DATABASE [QuanlybanCafeRuNam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanlybanCafeRuNam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanlybanCafeRuNam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanlybanCafeRuNam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanlybanCafeRuNam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanlybanCafeRuNam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET  MULTI_USER 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanlybanCafeRuNam', N'ON'
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET QUERY_STORE = OFF
GO
USE [QuanlybanCafeRuNam]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/28/2024 5:37:14 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/28/2024 5:37:14 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/28/2024 5:37:14 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/28/2024 5:37:14 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/28/2024 5:37:14 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaCTHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuNhap] [int] NOT NULL,
	[TenNVL] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Dvt] [nvarchar](20) NOT NULL,
	[Gia] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[ChuThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NgayLapHoaDon] [date] NOT NULL,
	[TongTien] [money] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[LoaiKhachHang] [int] NOT NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKhachHang] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[ChuThich] [text] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[ChucVu] [int] NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDT] [varchar](11) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[MaNhaCungCap] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[ChuThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
	[ChuThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaLoaiSanPham] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
	[Hinhanh] [text] NOT NULL,
	[ChuThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/28/2024 5:37:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Quyen] [int] NOT NULL,
	[ChuThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202406280452259_InitialCreate', N'Web_Coffee.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC2E522769836E2E5867DBBE05B4443BC24A9456A2B2098A7E591FFA49FD850E25EAC68B2EB6623B8B051616393C331C0EC9E17098FFFEF977FCF6D1F78C071CC56E4026E6C168DF3430B103C725CB8999D0C5F76FCCB73F7DFDD5F8CCF11F8DDF73BA2346072D493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF681D1C5818204CC0328CF1FB8450D7C7E9077C4E0362E39026C8BB0C1CECC5BC1C6A6629AA71857C1C87C8C613F30F3CBF9B068B05C6A38CD8344E3C17812033EC2D4C031112504441CCE30F319ED12820CB590805C8BB7D0A31D02D9017632EFE7149DEB527FB87AC2756D93087B29398067E4FC08323AE1A4B6CBE9282CD4275A0BC3350327D62BD4E1538312F1C9C16BD0F3C5080C8F078EA458C78625E162C4EE2F00AD351DE7094419E4700F739883E8EAA887B46E7767B85291D8EF6D9BF3D639A783489F084E08446C8DB336E92B9E7DABFE1A7DBE0232693A383F9E2E8CDABD7C8397AFD033E7A55ED29F415E86A0550741305218E4036BC28FA6F1A56BD9D25362C9A55DA645A015B8259611A97E8F11D264B7A0FF3E5F08D699CBB8FD8C94BB8717D202E4C226844A3043EAF12CF43730F17F556234FF67F03D7C357AF07E17A851EDC653AF4027F983811CCABF7D84B6BE37B37CCA6576DBCEF38D97914F8ECBB6E5F59EDDD2C48229B7526D092DCA26889695DBAB1551A6F27936650C39B758EBAFBA6CD2495CD5B49CA3AB4CA4CC8596C7A36E4F23E2FDFCE167712863078A969318D34199CB4578D84C67B4649521ACE4157C321D0A12F791D3CF391EB0DB01076E0022EC8C28D7C5CF4F2E700CC0E91DE32DFA0388675C0F915C5F70DA2C3CF01449F613B89C03C6714F9E1B373BBB90F08BE4AFC39B3FACDF11A6C686E3F07E7C8A641744658ABB5F1DE05F6C720A167C43945147FA0760EC83E6F5DBF3BC020E29CD8368EE3733066EC4C03F0B073C00B428F0E7BC3B1F569DB8EC8D443AEAFF6448495F42E272DBD113585E49168C8545E4993A8EF82A54BBA899A93EA45CD285A45E5647D456560DD24E5947A415382563933AAC1FCBC74848677F452D8DDF7F4D6DBBC756B41458D335821F12F98E0089631E706518A23528E409775631BCE423A7C8CE9B3EF4D29A7DF91970CCD6AA5D9902E02C3CF861476F767432A26143FB80EF34A3A1C7F726280EF44AF3E59B5CF3941B24D4F875A3737CD7C336B806EBA9CC47160BBE92C5004BE78D8A22E3FF870467B0C23EB8D1807818E81A1BB6CCB8312E89B291AD53539C51EA6D838B1B3C0E014C53672643542879C1E82E53BAA42B0321E5217EE3B8927583A8E5823C40E4131CC549750795AB8C47643E4B56A4968D9710B637D2F788835A738C484316CD54417E6EAF00713A0E0230C4A9B86C656C5E29A0D51E3B5EAC6BCCD852DC75D8A4A6CC4265B7C678D5D72FFED590CB359631B30CE66957411401BCADB8681F2B34A5703100F2EBB66A0C2894963A0DCA5DA8881D635B60503ADABE4C519687644ED3AFEC27975D7CCB37E50DEFCB6DEA8AE2DD8664D1F3B669A99EF096D28B4C0916C9EA77356891FA9E2700672F2F359CC5D5DD14418F80CD37AC8A6F477957EA8D50C221A51136069682DA0FC1250029226540FE1F2585EA374DC8BE8019BC7DD1A61F9DA2FC0566C40C6AE5E865608F557A6A271763A7D143D2BAC4132F24E87850A8EC220C4C5ABDEF10E4AD1C56565C574F185FB78C3958EF1C16850508BE7AA5152DE99C1B5949B66BB96540E591F976C2D2D09EE93464B796706D712B7D17625299C821E6EC15A2AAA6FE1034DB63CD251EC3645DDD8CA52A478C1D8D2E4528D2F5118BA6459C9ADE225C62C4BAC9A7E3FEB9F72E46718961D2B328F0A690B4E3488D0120BB5C01A243D77A3989E228AE688C579A68E2F9129F756CDF29FB3AC6E9FF220E6FB404ECD7E672DE4ABFBDA562BFB221CE21C3AE83387268DA22B865FDDDC60A96EC8439122703F0DBCC4277AFF4ADF3ABBBEABB6CF4A6484B125C82FF94F92B2242FB7AEF94EE322CF8961C6A8F05E561F273D844EDBB9EF59D5B7CE1FD5A3E4E1A92A8A2E64B5B571D3B9317DC64A7410FB0F552BC2F3CC2A9E955205E0453D312A890D1258A5AE3B6A3DF7A48A59AFE98E282498542185AA1E5256D3486A42562B56C2D368544DD19D839C385245976BBB232B5248AAD08AEA15B015328B75DD511559265560457577EC32E5445C437778DFD21E5B56DDB8B283ED7A3B9706E37916C46136BECAFD7D15A852DC138BDFD04B60BC7C278D497BBA5BD598B270C67AC6A4C1D0AF3BB58BEFFAB2D3785BAFC7ACDD66D796F6A6DB7C3D5E3F937D56C390CE762249C1BD38E30967B9313F57B53F9E910E5A198969E46A846DFD29A6D81F3182D1EC9337F55CCC16F19CE012117781639A65709887FB0787C2039CDD790C63C5B1E329CEA5BA1731F531DB4032167940917D8F223935628D072325A81475BE200E7E9C987FA5AD8ED30006FB9516EF1917F107E27E4AA0E2364AB0F1B79CEA394C027D87271B85A07FBF88B710DD557EF1E75DD674CFB88E603A1D1BFB82A25719FEFA0B895ED2644DD79066E577132F77B6D59E25285185D9B2FA2B84B94B077981904BF98D8F1EBFED2B9AF295C15A888A970443E10DA242DD4B8155B0B4AF041CF8A4E92B817E9D55BF1A584534ED8B0197F40713DF0B745F86F2965BDC8714E7A54D2C49A99E5BF3ADD74ABEDCF6DE24A565AF35D1E5D4EB1E7083A657AFE7A2BCB0B4E5C1B64E4556F260D8DBB4FB674F45DE95ECE3D269DF6ED2F126F38C1B6E93BEA8F4E21D48885324F86C3F8978D3B6A60B00EF782666BF54E11D3336BECD6F3F2178D3C6A60B10EFB8B1F54AFBDD315BDBD6FEB9654BEBBC856E3D8957CE47D25CE4A8A2C86D49BA59C81D8EFFF3008C20F328B3B795EAACB0A68CD6168625899EA93E1D4D642C4D1C89AF44D1CCB65F5FF986DFD8594ED3CC5693C4D9C49BAFFF8DBC394D336F4D6AE436D28B95C989AA94EF9675AC2977EA25A513D77AD292BDDEE6B336DECABFA4ECE14194529B3D9ADBE597932C3C884A869C3A3D9283E58B62D83B2B7F8B11F6EFD85D9610EC2F33126CD776CD82E6822C827CF31624CA498408CD25A6C8812DF524A2EE02D914AA59003A7D1C9E06F5D835C81C3B17E43AA16142A1CBD89F7BB5801773029AF8A719D07599C7D721FB8A87E80288E9B2C0FD35F939713DA790FB5C1113D24030EF82877BD9585216F65D3E15485701E908C4D5573845B7D80F3D008BAFC90C3DE0556403F37B8797C87E2A23803A90F681A8AB7D7CEAA26584FC986394EDE1136CD8F11F7FFA1FA431CDED92540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'User')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'698a6f98-7d97-476a-a1ab-b6c1cde3b088', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'030d356f-898e-45de-8aa8-02990eed17da', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0842d10e-db3e-4f88-ae45-a6236a9523b8', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'46aa5df4-290b-4fe4-aa5c-9bdd067ebf28', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64727686-dd05-4f2c-a7e4-e6ebcb2c43c6', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6dbe5162-f5c2-4d69-a1a9-ed517332f2e9', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'030d356f-898e-45de-8aa8-02990eed17da', N'sang12@gmail.com', 0, N'AC8GbgId6EWCKInjrzRYUMAYv6OF3ibyd8hrQ6VRFBW2gt+vCp+QzHnoTmNusESzqQ==', N'791294e1-226c-48a3-bc21-179ebc1ed090', NULL, 0, 0, NULL, 1, 0, N'sang12@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0842d10e-db3e-4f88-ae45-a6236a9523b8', N'Hang@gmail.com', 0, N'AB/ONr50LVSwD0jfDH6K9Rxgv4ePK7IFFAauLsAdqaenekpZu0DUy0x2C6zzScQ22w==', N'05c9a377-55c6-4916-947e-de501ed2890e', NULL, 0, 0, NULL, 1, 0, N'Hang@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'09b2feee-f356-41c8-b75e-141275bd3ba6', N'sang@gmail.com', 0, N'AAQfADL00rHJlbqiqTXWlhR3FkVsV8ZyAySjkLBtvc4ste4T8mDjNEczPSAlE53ngg==', N'9e832075-8503-4c4f-997a-d0dba7534c45', NULL, 0, 0, NULL, 1, 0, N'sang@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'21d735cf-c511-4a52-b97c-f738b0de0cca', N'admin1@gmail.com', 0, N'ALmP7b3g7RDlcCB2euc3cOqk0kXIFKgTjtYP8eRkSpNiPUiB3q/7qi9z2PMP2MBPFA==', N'2e442cf5-6a36-4e98-a4f1-04bd4e61cc8c', NULL, 0, 0, NULL, 1, 0, N'admin1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'46aa5df4-290b-4fe4-aa5c-9bdd067ebf28', N'Store2@gmail.com', 0, N'ALoZcRgxu9wAoHkZ+0V/qIPJQzxIaz0sr2NAwX+7Jv4/Vi0j+AcfaLIW01vC5aHDcg==', N'932c84a8-1a7b-4aa6-8251-44ac3a5a418c', NULL, 0, 0, NULL, 1, 0, N'Store2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'64727686-dd05-4f2c-a7e4-e6ebcb2c43c6', N'member124@gmail.com', 0, N'AK1VqTmmwoHJFmeRdet0iVzM40dPUmXn6htfLNkI7+BJm58EIyb5RctIWZZLVdaraQ==', N'412ad448-4f5a-4d49-87c7-4974421f9353', NULL, 0, 0, NULL, 1, 0, N'member124@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'698a6f98-7d97-476a-a1ab-b6c1cde3b088', N'admin@gmail.com', 0, N'AEPdMG4/5TNLItlEQH3aTwUZBV6ciwqwa49u8MGO+9cz2jmcAPqFD8ZntP0NvI+osQ==', N'83d71789-ec2d-4b4e-8b2b-dfe86227a881', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6dbe5162-f5c2-4d69-a1a9-ed517332f2e9', N'Hang@11122', 0, N'AGfYfmju0e16oN+lfPukBys1peJQgbZMDAO0ncm/BKgV7nFd19NKgACLhU2qG/Y/eA==', N'55884692-3591-4603-8e60-8f6611e6ca31', NULL, 0, 0, NULL, 1, 0, N'Hang@11122')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7a692702-3925-4687-890b-906781c1a404', N'sang@gmail', 0, N'AGXVGNJKK/gktXMEUrEdNK1/Kk8QA60hk0kG7B9pUoaRRdCcq/n8vaQL5A1T74N+Xg==', N'a98760f9-cc6f-45ff-aa36-d7c21b51c97f', NULL, 0, 0, NULL, 1, 0, N'sang@gmail')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a6b579dc-a1a4-42d9-884b-3c0bd6a8c611', N'member1243@gmail.com', 0, N'AE9PE2xZ7a4Cj32+sVK0bYelgVHgUHtY1zQmrl975wUdmXdeokDaPxs+qOU1Wc14YQ==', N'13b0ae93-1066-4aed-b7ae-21541b4de594', NULL, 0, 0, NULL, 1, 0, N'member1243@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (1, 1000, 1, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (2, 1001, 1, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (3, 1002, 2, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (4, 1003, 3, 1, 85000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (5, 1004, 2, 2, 150000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (6, 1005, 2, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (7, 1006, 4, 1, 85000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (8, 1007, 4, 1, 85000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (9, 1008, 7, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (10, 1009, 7, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (11, 1010, 8, 1, 95000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (12, 1011, 8, 1, 95000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (13, 1012, 11, 1, 135000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (14, 1013, 7, 1, 75000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (15, 1014, 16, 2, 280000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (16, 1015, 19, 2, 280000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (17, 1016, 20, 1, 60000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (18, 1017, 13, 1, 85000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (19, 1018, 13, 1, 85000, N'')
INSERT [dbo].[ChiTietHoaDon] ([MaCTHD], [MaHoaDon], [MaSanPham], [SoLuong], [TongTien], [GhiChu]) VALUES (20, 1019, 14, 1, 85000, N'')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (1, 1, N'Bình lắc', 3, N'cái', 150000, 450000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (2, 2, N'Máy tạo bọt Cafe', 2, N'cái', 355000, 1065000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (3, 3, N'Ống hút', 50, N'bịch', 35000, 1750000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (4, 4, N'Sữa tươi nguyên chất tuyệt trùng', 50, N'hộp', 120000, 6000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (5, 5, N'Siro Davinci Đào', 30, N'chai', 100000, 3000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (6, 6, N'Sữa tươi nguyên kem', 50, N'hộp', 120000, 6000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (7, 7, N'Bình lắc cocktail size nhỏ', 3, N'cái', 85000, 4250000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (8, 8, N'Máy xay cà phê', 2, N'cái', 700000, 1400000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (9, 9, N'Máy tạo bọt Cafe loại 2', 3, N'cái', 300000, 900000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (10, 10, N'Ly pha chế', 5, N'cái', 60000, 3000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (11, 11, N'Cân điện tử', 5, N'cái', 200000, 1000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (12, 12, N'Muỗng khuấy size nhỏ', 20, N'cái', 34000, 1700000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (13, 13, N'Bột Matcha Uji Nhật Bản', 20, N'hộp', 120000, 6000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (14, 14, N'Bột sữa béo nguyên kem', 20, N'hộp', 120000, 6000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (15, 15, N'Vang nho Pháp', 10, N'chai', 700000, 7000000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (16, 16, N'Sốt syrup hershey', 15, N'chai', 80000, 1200000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (17, 17, N'Sốt syrup monin', 15, N'chai', 80000, 1200000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (18, 18, N'Sốt syrup Teisseire', 15, N'chai', 80000, 1200000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (19, 19, N'Kem sữa thực vật', 5, N'hộp', 120000, 600000, N'')
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPhieuNhap], [TenNVL], [SoLuong], [Dvt], [Gia], [TongTien], [ChuThich]) VALUES (20, 20, N'Mứt(Osterberg, Berrino…)', 7, N'hộp', 108000, 756000, N'')
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (1, N'Quản lý', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (2, N'Trực quầy', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (3, N'Kiểm toán', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (4, N'Pha chế', N'')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu], [GhiChu]) VALUES (5, N'Quản lý NVL', N'')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1000, 1, 2, CAST(N'2023-01-01' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1001, 4, 2, CAST(N'2023-01-01' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1002, 3, 4, CAST(N'2023-01-02' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1003, 2, 4, CAST(N'2023-01-03' AS Date), 85000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1004, 6, 3, CAST(N'2023-01-04' AS Date), 150000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1005, 5, 5, CAST(N'2023-02-05' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1006, 7, 8, CAST(N'2023-02-06' AS Date), 85000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1007, 8, 13, CAST(N'2023-02-06' AS Date), 85000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1008, 11, 5, CAST(N'2023-02-09' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1009, 10, 14, CAST(N'2023-02-10' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1010, 12, 15, CAST(N'2023-02-12' AS Date), 95000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1011, 14, 18, CAST(N'2023-02-14' AS Date), 95000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1012, 15, 20, CAST(N'2023-02-17' AS Date), 135000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1013, 17, 15, CAST(N'2023-02-20' AS Date), 75000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1014, 16, 18, CAST(N'2023-02-22' AS Date), 280000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1015, 19, 3, CAST(N'2023-02-23' AS Date), 280000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1016, 9, 13, CAST(N'2023-02-02' AS Date), 60000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1017, 13, 20, CAST(N'2023-03-03' AS Date), 85000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1018, 18, 8, CAST(N'2023-03-04' AS Date), 85000.0000, N'')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon], [TongTien], [GhiChu]) VALUES (1019, 20, 5, CAST(N'2023-03-05' AS Date), 85000.0000, N'')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (1, N'Nguyễn Hữu Huy', CAST(N'1999-03-02' AS Date), 1, N'Hà Nội', N'0909898964', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (2, N'Lê Cúc', CAST(N'2003-05-12' AS Date), 0, N'Hà Nội', N'0914232372', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (3, N'Trịnh Thùy Dung', CAST(N'2001-09-04' AS Date), 0, N'Thái Nguyên', N'0745322222', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (4, N'Lê Văn Nam', CAST(N'1992-06-09' AS Date), 1, N'152 Nguyễn Trọng Tuyển - q.Tân Bình - TP.HCM', N'0166542753', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (5, N'Nguyễn Tuấn Hào', CAST(N'2000-06-09' AS Date), 1, N'123A Nguyễn Kiệm - q. Gò Vấp - TP.HCM', N'0166554322', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (6, N'Nguyễn Minh Thư', CAST(N'2000-06-09' AS Date), 0, N'65 Nam Kỳ Khởi Nghĩa -q.3 - TP.HCM', N'0166542753', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (7, N'Lê Thị Sang', CAST(N'2010-05-03' AS Date), 0, N'5 Dương Quảng hàm - q.Gò Vấp - TPHCM', N'0225678934', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (8, N'Nguyễn Thái Huy', CAST(N'1999-06-05' AS Date), 1, N'Hà Nội', N'0909898964', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (9, N'Lê Thị Nam', CAST(N'2004-10-05' AS Date), 0, N'Thái Bình', N'0745322222', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (10, N'Lê Văn Minh', CAST(N'2002-04-10' AS Date), 1, N'53 Nguyễn Tất Thành - TP.Pleilu - Gia Lai', N'0914232372', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (11, N'Lê Kiệt', CAST(N'1998-06-09' AS Date), 1, N'100 Đỗ Xuân Hợp - Thủ Đức - HCM', N'0166542753', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (12, N'Nguyễn Anh Tuấn', CAST(N'2000-06-09' AS Date), 1, N'123A Nguyễn Kiệm - q. Gò Vấp - TP.HCM', N'0166554322', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (13, N'Nguyễn Anh Thư', CAST(N'2000-06-09' AS Date), 0, N'98 Nam Kỳ Khởi Nghĩa -q.3 - TP.HCM', N'0166542753', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (14, N'Lê Thái Toàn', CAST(N'2010-05-03' AS Date), 1, N'5 Dương Quảng hàm - q.Gò Vấp - TP.HCM', N'0225678934', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (15, N'Thái Thị Thu', CAST(N'1994-03-02' AS Date), 1, N'34 Mạc Thị Bưởi - p.12 - TP.Đà Lạt', N'0909898964', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (16, N'Tô Ánh Nguyệt', CAST(N'2003-09-08' AS Date), 0, N'Đồng Tháp', N'0745322222', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (17, N'Lê Phạm Hiền', CAST(N'2005-07-10' AS Date), 0, N'Hà Nội', N'0914232372', 3, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (18, N'Đỗ Văn Linh', CAST(N'1995-06-10' AS Date), 1, N'Sơn La', N'0166542753', 2, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (19, N'Nguyễn Hồng Nhung', CAST(N'2000-06-09' AS Date), 1, N'KomTum', N'0166554322', 1, N'          ')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Ngaysinh], [GioiTinh], [DiaChi], [SDT], [LoaiKhachHang], [GhiChu]) VALUES (20, N'Nguyễn Trí', CAST(N'2000-06-09' AS Date), 0, N'DakLak', N'0166542753', 2, N'          ')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] ON 

INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [GhiChu]) VALUES (1, N'Vip', N'giảm 10%')
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [GhiChu]) VALUES (2, N'Thường', N'giảm 0%')
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [GhiChu]) VALUES (3, N'Học sinh - Sinh Viên', N'giảm 5%')
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'Cà phê')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (2, N'Quà tặng')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email], [ChuThich]) VALUES (1, N'Glofood', N'561A Điện Biên Phủ, p.25, Bình Thạnh, TP.HCM', N'02838035555', N'Gigroup@gigroup.net', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email], [ChuThich]) VALUES (2, N'Vinbar', N'625 XVNT, p.26, Bình Thạnh, TP.HCM', N'0907095295', N'hotro@vinbar.vn', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email], [ChuThich]) VALUES (3, N'Abby', N'277/31 XVNT, p.15, q.Bình Thạnh, TP.HCM', N'1900779907', N'info@abby.vn', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email], [ChuThich]) VALUES (4, N'Best Barista', N'1154 Lê Đức Thọ, p.13, q.Gò Vấp, TP.HCM', N'0908434684 ', N'barista@barista.vn', N'')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChi], [SDT], [Email], [ChuThich]) VALUES (5, N'Bartenders’ Mart Nhất Hương ', N'21 Nguyễn Thị Thập,p.Tân Phú, q.7, TP.HCM', N'0911789697', N'support@beemart.vn', N'')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (1, N'Phạm Hoàng Huy', CAST(N'1989-03-25' AS Date), 1, CAST(N'2017-01-01' AS Date), 1, N'764/94 Phạm Văn Chiêu - p.13 - GV - TP.HCM', N'0134567832', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (2, N'Nguyễn Thành Nam', CAST(N'1997-01-02' AS Date), 1, CAST(N'2018-03-05' AS Date), 2, N'Pleiku - Gia Lai', N'0337895674', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (3, N'Đỗ Nguyễn Ánh', CAST(N'1990-08-10' AS Date), 0, CAST(N'2018-12-03' AS Date), 2, N'Hà Nội ', N'091425635', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (4, N'Phạm Minh Dực', CAST(N'2003-03-02' AS Date), 1, CAST(N'2021-05-04' AS Date), 2, N'564/1/3F Nguyễn Xí - Bình Thạnh - TP.HCM', N'01652343643', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (5, N'Nguyễn Thị Nguyên', CAST(N'1994-07-14' AS Date), 0, CAST(N'2021-09-07' AS Date), 2, N'Thái Bình', N'0258903789', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (6, N'Nguyễn Thùy Dung', CAST(N'1999-06-23' AS Date), 0, CAST(N'2020-06-04' AS Date), 3, N'2/1A Quang Trung - p.10 - GV - TP.HCM', N'06789976654', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (7, N'Lê Thị Mai', CAST(N'1992-06-03' AS Date), 0, CAST(N'2019-06-03' AS Date), 4, N'Ngõ 6 - phố Thanh Xuân - Hà Nội', N'0642221567', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (8, N'Phạm Thái Ngân', CAST(N'1996-11-25' AS Date), 1, CAST(N'2022-01-01' AS Date), 2, N'Bình Phước', N'01293223225', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (9, N'Đinh Tấn Tài', CAST(N'1997-02-02' AS Date), 1, CAST(N'2018-03-05' AS Date), 4, N'67 bis Nguyễn Thượng Hiền, Q. Bình Thạnh, TP.HCM', N'0147778912', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (10, N'Nguyễn Lâm Băng', CAST(N'2000-06-10' AS Date), 0, CAST(N'2020-12-03' AS Date), 4, N'Lâm Đồng', N'091425635', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (11, N'Phạm Bình', CAST(N'1998-03-02' AS Date), 1, CAST(N'2020-05-04' AS Date), 3, N'49/12B Nguyễn Thị Minh Khai - Q1 - TP.HCM', N'0643427896', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (12, N'Nguyễn Huy Chương', CAST(N'2004-07-05' AS Date), 1, CAST(N'2019-09-07' AS Date), 5, N'Thái Bình', N'093478912', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (13, N'Nguyễn Trúc Lâm', CAST(N'2000-06-15' AS Date), 0, CAST(N'2020-06-04' AS Date), 2, N'34 Mạc Thị Bưởi - p.12 - TP.Đà Lạt', N'06789976654', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (14, N'Lê Bảo Ngọc', CAST(N'1994-06-03' AS Date), 0, CAST(N'2018-06-03' AS Date), 2, N'Nghệ An', N'0645559127', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (15, N'Đỗ Anh Kiệt', CAST(N'1997-01-02' AS Date), 1, CAST(N'2018-03-05' AS Date), 2, N'102 Xô Viết Nghệ Tĩnh - q.Bình Thạnh - TP.HCM', N'01293223225', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (16, N'Huỳnh Quốc Dương', CAST(N'1990-06-17' AS Date), 1, CAST(N'2021-12-03' AS Date), 5, N'DakLak ', N'091425635', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (17, N'Thái Như', CAST(N'1896-03-02' AS Date), 0, CAST(N'2020-05-04' AS Date), 4, N'Bình Dương', N'0259125634', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (18, N'Thái Trịnh Phương Uyên', CAST(N'1994-07-12' AS Date), 0, CAST(N'2021-09-07' AS Date), 2, N'Tiền Giang', N'090578912', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (19, N'Chu Yến Nhi', CAST(N'1995-08-27' AS Date), 0, CAST(N'2019-06-04' AS Date), 5, N'34 Nơ Trang Long -p.Trà Bá - TP.Pleiku', N'0789976654', N'')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [NgayVaoLam], [ChucVu], [DiaChi], [SoDT], [GhiChu]) VALUES (20, N'Lê Thành Hoài', CAST(N'1997-01-03' AS Date), 1, CAST(N'2020-06-03' AS Date), 2, N'Đà Nẵng', N'0984567812', N'')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (1, 12, 5, 450000, CAST(N'2023-01-03' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (2, 12, 5, 1065000, CAST(N'2023-01-04' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (3, 16, 1, 1750000, CAST(N'2023-02-01' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (4, 19, 3, 6000000, CAST(N'2023-02-03' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (5, 19, 3, 3000000, CAST(N'2023-02-03' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (6, 12, 2, 6000000, CAST(N'2023-02-05' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (7, 12, 5, 4250000, CAST(N'2023-02-10' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (8, 16, 2, 1400000, CAST(N'2023-02-25' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (9, 19, 1, 900000, CAST(N'2023-02-26' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (10, 16, 2, 3000000, CAST(N'2023-02-27' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (11, 19, 2, 1000000, CAST(N'2023-03-02' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (12, 16, 5, 1700000, CAST(N'2023-03-02' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (13, 19, 3, 6000000, CAST(N'2023-03-03' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (14, 16, 2, 6000000, CAST(N'2023-03-04' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (15, 19, 2, 7000000, CAST(N'2023-03-04' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (16, 16, 4, 1200000, CAST(N'2023-03-05' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (17, 19, 4, 1200000, CAST(N'2023-03-06' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (18, 19, 4, 1200000, CAST(N'2023-03-07' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (19, 16, 2, 600000, CAST(N'2023-04-02' AS Date), N'')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [MaNhaCungCap], [TongTien], [NgayNhap], [ChuThich]) VALUES (20, 12, 5, 756000, CAST(N'2023-04-03' AS Date), N'')
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [ChuThich]) VALUES (1, N'Quản lý', N'')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [ChuThich]) VALUES (2, N'Khách hàng', N'')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [ChuThich]) VALUES (3, N'Kiểm toán', N'')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [ChuThich]) VALUES (4, N'Pha chế', N'')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [ChuThich]) VALUES (5, N'Quản lý NVL', N'')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (1, N'Cà phê số 1 ', 1, 75000, N'https://salt.tikicdn.com/cache/w444/ts/product/29/b9/3c/a438b402475f379414bc637a536cf427.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (2, N'Cà phê số 3 ', 1, 75000, N'https://salt.tikicdn.com/cache/w1200/ts/product/39/5b/2a/ea177a32de69567c08ced1216a156670.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (3, N'Cà phê số 5', 1, 85000, N'https://salt.tikicdn.com/cache/w1200/ts/product/e2/08/28/c6529fcb352a019a9453056808d266fe.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (4, N'Cà phê số 6', 1, 85000, N'https://salt.tikicdn.com/ts/product/c4/51/ec/5c33520ff627d27daebbddbebf06a0e2.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (5, N'Nến thơm', 2, 85000, N'	https://salt.tikicdn.com/cache/280x280/ts/product/2e/1b/b7/69ac0dc93c8ed6fd56bc5b465bdd81a9.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (6, N'Bình giữ nhiệt', 2, 85000, N'https://channel.mediacdn.vn/428462621602512896/2023/1/5/photo-8-167292502705248018701.jpg', NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (7, N'Phin cà phê RuNam', 2, 75000, N'https://salt.tikicdn.com/cache/w1200/ts/product/ff/22/ac/65c2546d497d596aa8cdb72eefae5fcc.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (8, N'Hộp quà tri ân', 2, 95000, N'	https://salt.tikicdn.com/cache/750x750/ts/product/a9/1c/51/20ab7323c571a30abfc75fe4d1489841.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (9, N'Ly sứ RuNam', 2, 95000, N'https://th.bing.com/th/id/OIP.7uSCWe3VloAFutChHIiZdQHaHa?rs=1&pid=ImgDetMain', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (10, N'Bộ trà lục ẩm', 2, 95000, N'	https://salt.tikicdn.com/cache/280x280/ts/product/52/fc/05/761091b374a6d47eb2a585460de42d6d.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (11, N'Bộ trò chơi Bầu Cua ', 2, 135000, N'	https://img.idesign.vn/2020/01/baucuacachuot-1-2.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (12, N'Bộ trò chơi LoTo', 2, 85000, N'https://channel.mediacdn.vn/428462621602512896/2023/1/5/photo-2-1672925028050371480616.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (13, N'Bộ Xếp Hình', 2, 85000, N'https://i.pinimg.com/originals/cf/e9/82/cfe9824d2c1ae6ad659d6617fced25f7.png', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (14, N'Cờ Đám cưới Chuột', 2, 85000, N'https://i.pinimg.com/736x/14/75/a9/1475a91c058798ee9a113f43bbaa5699.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (15, N'Bộ quà tặng Tri Ân', 2, 85000, N'https://salt.tikicdn.com/cache/w1200/ts/product/ce/98/69/be98a280cacee071a1e6341e191c5f33.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (16, N'Họp bánh Trung Thu', 2, 140000, N'https://dungculambanh.com.vn/wp-content/uploads/2023/08/2-banh-Nghenh-Thu.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (17, N'Hộp quà An Nhiên', 2, 140000, N'https://salt.tikicdn.com/cache/w1200/ts/product/ce/98/69/be98a280cacee071a1e6341e191c5f33.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (18, N'Hộp quà Tâm Giao', 2, 140000, N'https://salt.tikicdn.com/cache/w1200/ts/product/ce/98/69/be98a280cacee071a1e6341e191c5f33.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (19, N'Bộ trà Tứ Ẩm', 2, 140000, N'https://salt.tikicdn.com/cache/280x280/ts/product/52/fc/05/761091b374a6d47eb2a585460de42d6d.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (20, N'Bộ ly sứ Đơm Hoa Kết Trái', 2, 60000, N'https://channel.mediacdn.vn/428462621602512896/2023/1/5/photo-1-1672925017525983169688.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (22, N'Xăm Cát Tường', 2, 90000, N'	https://channel.mediacdn.vn/428462621602512896/2023/1/5/photo-6-1672925027608147364095.jpg', N'')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiSanPham], [GiaBan], [Hinhanh], [ChuThich]) VALUES (23, N'Tượng Quý Mão Cát Tường', 2, 95000, N'	https://kenh14cdn.com/203336854389633024/2023/1/6/anh-8-16729731093601359991358.jpg', N'')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (1, 1, N'admin', N'admin123', 1, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (2, 2, N'customer', N'customer123', 2, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (3, 3, N'NguyenAnh', N'NguyenAnh543', 2, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (4, 19, N'YenNhi', N'YenNhi78', 5, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (5, 4, N'MinhDuc', N'MinhDuc885', 2, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (6, 5, N'ThiNguyen', N'ThiNguyen325', 2, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (7, 6, N'ThuyDung', N'ThuyDung907', 3, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (8, 8, N'ThaiNgan', N'ThaiNgan552', 2, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (9, 7, N'ThiMai', N'ThiMai567', 4, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (10, 10, N'LamBang', N'LamBang734', 4, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (11, 9, N'TanTai', N'TanTai895', 4, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (12, 12, N'HuyChuong', N'HuyChuong122', 5, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (13, 11, N'PhamBinh', N'PhamBinh915', 3, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (14, 14, N'BaoNgoc', N'BaoNgoc336', 2, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (15, 13, N'TrucLam', N'TrucLam645', 2, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (16, 15, N'AnhKiet', N'AnhKiet776', 5, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (17, 16, N'QuocDuong', N'QuocDuong778', 4, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (18, 18, N'PhuongUyen', N'PhuongUyen31', 2, N' ')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (19, 17, N'ThaiNhu', N'ThaiNhu33', 4, N'')
INSERT [dbo].[Users] ([ID], [MaNhanVien], [TenDangNhap], [Password], [Quyen], [ChuThich]) VALUES (20, 20, N'ThanhHoai', N'Hoai685', 2, N' ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/28/2024 5:37:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] ADD  CONSTRAINT [DF_ChiTietPhieuNhap_ChuThich]  DEFAULT ('') FOR [ChuThich]
GO
ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [DF_ChucVu_GhiChu]  DEFAULT ('') FOR [GhiChu]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_NgayLapHoaDon]  DEFAULT (getdate()) FOR [NgayLapHoaDon]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_GhiChu]  DEFAULT ('') FOR [GhiChu]
GO
ALTER TABLE [dbo].[PhieuNhap] ADD  CONSTRAINT [DF_PhieuNhap_ChuThich]  DEFAULT ('') FOR [ChuThich]
GO
ALTER TABLE [dbo].[Quyen] ADD  CONSTRAINT [DF_Quyen_ChuThich]  DEFAULT ('') FOR [ChuThich]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_ChuThich]  DEFAULT ('') FOR [ChuThich]
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
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiKhachHang] FOREIGN KEY([LoaiKhachHang])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKhachHang])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([ChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_NhanVien]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Quyen] FOREIGN KEY([Quyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Quyen]
GO
USE [master]
GO
ALTER DATABASE [QuanlybanCafeRuNam] SET  READ_WRITE 
GO
