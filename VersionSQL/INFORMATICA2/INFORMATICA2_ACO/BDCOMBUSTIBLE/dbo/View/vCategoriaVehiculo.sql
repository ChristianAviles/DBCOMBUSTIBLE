/****** Object:  View [dbo].[vCategoriaVehiculo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE VIEW dbo.vCategoriaVehiculo
AS
SELECT        idCat_vehiculo AS ID, cod_categoriaVehiculo AS CODIGO, descripcion AS [TIPO DE VEHICULO]
FROM            Vehiculo.tblCategoria_Vehiculo
