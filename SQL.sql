USE [HavaYollari]
CREATE TABLE [dbo].[HavaAlani](
	[HavaAlaniid] [int] IDENTITY(1,1) NOT NULL,
	[HavaAlaniAdi] [nvarchar](100) NULL,
	[UlkeAdi] [nvarchar](100) NULL,
	[KayitEdenKullaniciAdi] [nvarchar](50) NULL,
	[KayitTarihi] [datetime] NOT NULL DEFAULT (GETDATE()),
	[GuncelleyenKullaniciAdi] [nvarchar](50) NULL,
	[GuncellemeTarihi] [datetime] NULL,
 CONSTRAINT [PK_HavaAlani] PRIMARY KEY CLUSTERED 
(
	[HavaAlaniid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [HavaYollari]
CREATE TABLE [dbo].[UcakBilgileri](
	[UcakBilgileriid] [int] IDENTITY(1,1) NOT NULL,
	[UcakFirmaAdi] [nvarchar](100) NULL,
	[UcakAdi] [nvarchar](100) NULL,
	[UcakTuru] [nvarchar](100) NULL,
	[KayitEdenKullaniciAdi] [nvarchar](50) NULL,
	[KayitTarihi] [datetime] NOT NULL DEFAULT (GETDATE()),
	[GuncelleyenKullaniciAdi] [nvarchar](50) NULL,
	[GuncellemeTarihi] [datetime] NULL,
 CONSTRAINT [PK_UcakBilgileri] PRIMARY KEY CLUSTERED 
(
	[UcakBilgileriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [HavaYollari]
CREATE TABLE [dbo].[UcakPersonel](
	[Personelid] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdi] [nchar](10) NULL,
	[PersonelSoyadi] [nchar](10) NULL,
	[UcakFirmaAdi] [nvarchar](100) NULL,
	[UcakAdi] [nvarchar](100) NULL,
	[UcakTuru] [nvarchar](100) NULL,
	[YolcuKapasitesi] [float] NULL,
	[GorevUnvan] [nvarchar](50) NULL,
	[KayitEdenKullaniciAdi] [nvarchar](50) NULL,
	[KayitTarihi] [datetime] NOT NULL DEFAULT (GETDATE()),
	[GuncelleyenKullaniciAdi] [nvarchar](50) NULL,
	[GuncellemeTarihi] [datetime] NULL,
 CONSTRAINT [PK_UcakPersonel] PRIMARY KEY CLUSTERED 
(
	[Personelid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [HavaYollari]
CREATE TABLE [dbo].[UcusBilgileri](
	[UcusBilgileriid] [int] IDENTITY(1,1) NOT NULL,
	[UcusTarihi] [datetime] NULL,
	[UcusHat] [nvarchar](50) NULL,
	[UcakFirmaAdi] [nvarchar](100) NULL,
	[UcakAdi] [nvarchar](100) NULL,
	[UcakTuru] [nvarchar](100) NULL,
	[YolcuKapasitesi] [float] NULL,
	[UcakKalkisYeri] [nvarchar](100) NULL,
	[UcakVarisYeri] [nvarchar](100) NULL,
	[UcakVarisUlkeAdi] [nvarchar](50) NULL,
	[UcakKalkisUlkeAdi] [nvarchar](50) NULL,
	[KayitEdenKullaniciAdi] [nvarchar](50) NULL,
	[KayitTarihi] [datetime] NOT NULL DEFAULT (GETDATE()),
	[GuncelleyenKullaniciAdi] [nvarchar](50) NULL,
	[GuncellemeTarihi] [datetime] NULL,
 CONSTRAINT [PK_UcusBilgileri] PRIMARY KEY CLUSTERED 
(
	[UcusBilgileriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

USE [HavaYollari]
CREATE TABLE [dbo].[Yolcu](
	[Yolcuid] [int] IDENTITY(1,1) NOT NULL,
	[YolcuAdi] [nvarchar](100) NULL,
	[YolcuSoyadi] [nvarchar](100) NULL,
	[YolcuTCKimlikNo] [float] NULL,
	[YolcuYas] [float] NULL,
	[YolcuSinif] [nvarchar](50) NULL,
	[UcusTarihi] [datetime] NULL,
	[UcakBilgileriid] [int] NULL,
	[UcakAdi] [nvarchar](100) NULL,
	[UcakTuru] [nvarchar](100) NULL,
	[YolcuKapasitesi] [float] NULL,
	[BagajKilo] [decimal](18, 2) NULL,
	[UcakKalkisYeri] [nvarchar](100) NULL,
	[UcakVarisYeri] [nvarchar](100) NULL,
	[KayitEdenKullaniciAdi] [nvarchar](50) NULL,
	[KayitTarihi] [datetime] NOT NULL DEFAULT (GETDATE()),
	[GuncelleyenKullaniciAdi] [nvarchar](50) NULL,
	[GuncellemeTarihi] [datetime] NULL,
 CONSTRAINT [PK_Yolcu] PRIMARY KEY CLUSTERED 
(
	[Yolcuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

-- SQL KOD İLE VERİTABANI OLUŞTURULDU ---
Create Database HavaYollari

-- SQL KOD İLE VERİTABANI OLUŞTURULDU ---
USE HavaYollari
SELECT HavaAlaniid, HavaAlaniAdi, UlkeAdi, KayitEdenKullaniciAdi, KayitTarihi, GuncelleyenKullaniciAdi, GuncellemeTarihi  FROM dbo.HavaAlani Where HavaAlaniAdi='ERHAÇ HAVAALANI'

insert into HavaAlani (HavaAlaniAdi, UlkeAdi, KayitEdenKullaniciAdi) values ('ERHAÇ HAVAALANI', 'TURKEY', 'DAMLA ÇETİNKAYA')

Update HavaAlani SET HavaAlaniAdi='ERHAÇ ASKERİ HAVAALANI' Where HavaAlaniid='1'

Delete From HavaAlani Where HavaAlaniid='2'


Drop Table Yolcu

insert into UcakPersonel(PersonelAdi, PersonelSoyadi, UcakFirmaAdi, UcakAdi, UcakTuru, YolcuKapasitesi, GorevUnvan, KayitEdenKullaniciAdi )
values ('', '', '', '', '', '', '', '')
