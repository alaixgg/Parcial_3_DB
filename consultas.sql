--consulta1
SELECT id_alumno, nombre_alumno, apellido_alumno
FROM ALUMNOS 
WHERE id_poblacion IN (SELECT id_poblacion
                        FROM POBLACION
                        WHERE nombre_poblacion = 'Room');
--consulta2                  
SELECT horas_semana 
FROM ASIGNATURA
WHERE horas_semana = 3;
--consulta3
SELECT 
    a.nombre_alumno,
    j.nombre_asignatura,
    n.nota_alumno
FROM 
    ALUMNOS a
INNER JOIN 
    ASIGNATURA j ON a.id_alumno = j.id_asignatura
INNER JOIN 
    nota_asignatura n ON j.id_asignatura = n.id_asignatura;

