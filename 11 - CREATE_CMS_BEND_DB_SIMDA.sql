CREATE DATABASE [CMS_BEND]
GO

USE [CMS_BEND]
GO
/****** Object:  Table [dbo].[TrxSPJ]    Script Date: 19/02/2020 09:22:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrxSPJ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tahun] [smallint] NOT NULL,
	[No_Bukti] [varchar](50) NOT NULL,
	[Jns_Dok] [tinyint] NOT NULL,
	[Kd_Urusan] [tinyint] NOT NULL,
	[Kd_Bidang] [tinyint] NOT NULL,
	[Kd_Unit] [tinyint] NOT NULL,
	[Kd_Sub] [smallint] NOT NULL,
	[Tgl_Bukti] [datetime] NOT NULL,
	[Nm_Penerima] [varchar](100) NULL,
	[Bank_Penerima] [varchar](50) NULL,
	[Rek_Penerima] [varchar](50) NULL,
	[NPWP] [varchar](20) NULL,
	[Keterangan] [varchar](255) NOT NULL,
	[Nm_Bank] [varchar](50) NOT NULL,
	[No_Rekening] [varchar](50) NULL,
	[Nilai] [money] NOT NULL,
	[DateCreate] [datetime] NOT NULL,
	[Cair] [tinyint] NOT NULL,
	[TglCair] [datetime] NULL,
	[Nm_Unit] [varchar](255) NULL,
	[Nm_Sub_Unit] [varchar](255) NULL,
	[Uraian] [varchar](255) NULL,
	[RefId] [int] NOT NULL,
 CONSTRAINT [PK_TrxSPJ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrxSPJ_Potongan]    Script Date: 19/02/2020 09:22:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrxSPJ_Potongan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TrxSPJ_Id] [int] NOT NULL,
	[Tahun] [smallint] NOT NULL,
	[No_Bukti] [varchar](50) NOT NULL,
	[Jns_Dok] [tinyint] NOT NULL,
	[Kd_Rek_1] [tinyint] NOT NULL,
	[Kd_Rek_2] [tinyint] NOT NULL,
	[Kd_Rek_3] [tinyint] NOT NULL,
	[Kd_Rek_4] [tinyint] NOT NULL,
	[Kd_Rek_5] [tinyint] NOT NULL,
	[Nm_Rekening] [varchar](255) NOT NULL,
	[Nilai] [money] NOT NULL,
	[Kd_Billing] [varchar](16) NOT NULL,
	[NTPN] [varchar](16) NULL,
	[TglTrx_NTPN] [datetime] NULL,
	[TglBuku_NTPN] [datetime] NULL,
 CONSTRAINT [PK_TrxSPJ_Potongan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TrxSPJ_Potongan]  WITH CHECK ADD  CONSTRAINT [FK_TrxSPJ_Potongan_TrxSPJ] FOREIGN KEY([TrxSPJ_Id])
REFERENCES [dbo].[TrxSPJ] ([Id])
GO
ALTER TABLE [dbo].[TrxSPJ_Potongan] CHECK CONSTRAINT [FK_TrxSPJ_Potongan_TrxSPJ]
GO
