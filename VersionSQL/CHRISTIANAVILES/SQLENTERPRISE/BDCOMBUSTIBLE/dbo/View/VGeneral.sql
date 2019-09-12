/****** Object:  View [dbo].[VGeneral]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE VIEW dbo.VGeneral
AS
SELECT        Vehiculo.tblCategoria_Vehiculo.descripcion, Vehiculo.tblVehiculo.cod_vehiculo, Vehiculo.tblVehiculo.placa, Vehiculo.tblVehiculo.marca, Vehiculo.tblVehiculo.modelo, Vehiculo.tblVehiculo.año, Vehiculo.tblVehiculo.chasis, 
                         Vehiculo.tblVehiculo.circulacion, Vehiculo.tblVehiculo.fecha_emision_seg, Vehiculo.tblVehiculo.fecha_vencimiento_seg, Vehiculo.tblVehiculo.fecha_emision_eg, Vehiculo.tblVehiculo.fecha_vencimiento_eg, 
                         Vehiculo.tblVehiculo.fecha_emision_im, Vehiculo.tblVehiculo.fecha_vencimiento_im, Vehiculo.tblVehiculo.fecha_sticker_rodamiento, Conductores.tblConductores.nombres, Conductores.tblConductores.apellidos
FROM            Vehiculo.tblVehiculo INNER JOIN
                         Conductores.tblConductores ON Vehiculo.tblVehiculo.idConductor = Conductores.tblConductores.idConductor INNER JOIN
                         Vehiculo.tblCategoria_Vehiculo ON Vehiculo.tblVehiculo.idCat_vehiculo = Vehiculo.tblCategoria_Vehiculo.idCat_vehiculo
