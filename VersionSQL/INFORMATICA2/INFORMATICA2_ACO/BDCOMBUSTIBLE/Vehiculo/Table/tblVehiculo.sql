/****** Object:  Table [Vehiculo].[tblVehiculo]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Vehiculo].[tblVehiculo](
	[idvehiculo] [int] IDENTITY(1,1) NOT NULL,
	[idCat_vehiculo] [int] NOT NULL,
	[idConductor] [int] NOT NULL,
	[cod_vehiculo]  AS ('VEH-'+CONVERT([varchar],[idvehiculo])),
	[placa] [varchar](50) NULL,
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[año] [varchar](10) NULL,
	[chasis] [varchar](50) NULL,
	[circulacion] [varchar](50) NULL,
	[fecha_emision_seg] [date] NULL,
	[fecha_vencimiento_seg] [date] NULL,
	[fecha_emision_eg] [date] NULL,
	[fecha_vencimiento_eg] [date] NULL,
	[fecha_emision_im] [date] NULL,
	[fecha_vencimiento_im] [date] NULL,
	[fecha_sticker_rodamiento] [date] NULL,
 CONSTRAINT [PK_tblVehiculo] PRIMARY KEY CLUSTERED 
(
	[idvehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Vehiculo].[tblVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_tblVehiculo_tblCategoria_Vehiculo] FOREIGN KEY([idCat_vehiculo])
REFERENCES [Vehiculo].[tblCategoria_Vehiculo] ([idCat_vehiculo])
ON DELETE CASCADE
ALTER TABLE [Vehiculo].[tblVehiculo] CHECK CONSTRAINT [FK_tblVehiculo_tblCategoria_Vehiculo]
ALTER TABLE [Vehiculo].[tblVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_tblVehiculo_tblConductores] FOREIGN KEY([idConductor])
REFERENCES [Conductores].[tblConductores] ([idConductor])
ON DELETE CASCADE
ALTER TABLE [Vehiculo].[tblVehiculo] CHECK CONSTRAINT [FK_tblVehiculo_tblConductores]
