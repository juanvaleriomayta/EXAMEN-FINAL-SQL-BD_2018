create VIEW AlumnoApoderado
AS
SELECT ALUMNOS.tipo_Alumnos as 'Tipo colegio', ALUMNOS.hora_Alumnos AS 'Hora', APODERADOS.modls_Apoderado AS 'dodalidadd apoderado'
FROM ALUMNOS
INNER JOIN APODERADOS
ON APODERADOS.ALUMNOS_id_Alumnos = ALUMNOS.id_Alumnos
GO


create VIEW choferes_asistentes
AS
SELECT turno_Choferes AS 'turno choferes', ASISTENTES.turno_Asistente AS 'turno asistentes'
FROM CHOFERES
INNER JOIN ASISTENTES
ON  ASISTENTES.CHOFERES_id_Choferes = CHOFERES.id_Choferes
GO

create VIEW minibus_Alumnos
AS
SELECT MINIBUS.color_MiniBus AS 'turno choferes'
FROM MINIBUS
GO


select * from MINIBUS
select * from ALUMNOS