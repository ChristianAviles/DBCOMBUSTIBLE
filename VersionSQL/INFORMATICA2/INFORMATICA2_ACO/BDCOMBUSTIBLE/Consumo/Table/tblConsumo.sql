/****** Object:  Table [Consumo].[tblConsumo]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [Consumo].[tblConsumo](
	[idconsumo] [int] IDENTITY(1,1) NOT NULL,
	[idvehiculo] [int] NOT NULL,
	[num_factura] [varchar](50) NULL,
	[kmInicial] [decimal](18, 2) NULL,
	[kmFinal] [decimal](18, 2) NULL,
	[consumoxLitro] [decimal](18, 2) NULL,
	[fecha_hora] [datetime] NULL,
	[precioxLitro] [money] NULL,
 CONSTRAINT [PK_tblConsumo] PRIMARY KEY CLUSTERED 
(
	[idconsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Consumo].[tblConsumo]  WITH CHECK ADD  CONSTRAINT [FK_tblConsumo_tblVehiculo] FOREIGN KEY([idvehiculo])
REFERENCES [Vehiculo].[tblVehiculo] ([idvehiculo])
ON DELETE CASCADE
ALTER TABLE [Consumo].[tblConsumo] CHECK CONSTRAINT [FK_tblConsumo_tblVehiculo]
