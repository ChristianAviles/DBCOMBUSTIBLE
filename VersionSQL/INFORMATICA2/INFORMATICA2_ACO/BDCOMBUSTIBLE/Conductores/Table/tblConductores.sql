/****** Object:  Table [Conductores].[tblConductores]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Conductores].[tblConductores](
	[idConductor] [int] IDENTITY(1,1) NOT NULL,
	[cod_conductor]  AS ('CON-'+CONVERT([varchar],[idconductor])),
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[num_cedula] [varchar](50) NULL,
	[num_licencia] [varchar](50) NULL,
	[fecha_Emision_lic] [date] NULL,
	[fecha_Vencimiento_lic] [date] NULL,
	[categorias_lic] [varchar](1) NULL,
 CONSTRAINT [PK_tblConductores] PRIMARY KEY CLUSTERED 
(
	[idConductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

