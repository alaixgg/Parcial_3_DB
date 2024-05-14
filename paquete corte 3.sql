CREATE OR REPLACE PROCEDURE agregar_alumno(
	p_id_alumno      ALUMNOS.id_alumno%TYPE,
	p_nombre_alumno      ALUMNOS.nombre_alumno%TYPE,
	p_apellido_alumno      ALUMNOS.apellido_alumno%TYPE,
	p_direccion_alumno      ALUMNOS.direccion_alumno%TYPE,
	p_fecha_nacimiento_alumno      ALUMNOS.fecha_nacimiento_alumno%TYPE,
	p_telefono_alumno      ALUMNOS.telefono_alumno%TYPE,
	p_id_codigo_postal      ALUMNOS.id_codigo_postal%TYPE) IS 
	
BEGIN 
	INSERT INTO ALUMNOS (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, fecha_nacimiento_alumno, telefono_alumno, id_codigo_postal)
	VALUES (p_id_alumno , p_nombre_alumno, p_apellido_alumno, p_direccion_alumno, p_fecha_nacimiento_alumno, p_telefono_alumno, p_id_codigo_postal);	
					
	COMMIT;
END agregar_alumno;
/
										
