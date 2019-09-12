/****** Object:  Table [Vehiculo].[tblCategoria_Vehiculo]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Vehiculo].[tblCategoria_Vehiculo](
	[idCat_vehiculo] [int] IDENTITY(1,1) NOT NULL,
	[cod_categoriaVehiculo]  AS ('CAT-'+CONVERT([varchar],[idCat_vehiculo])),
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblCategoria_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[idCat_vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

