--codigo postal
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1025, 'Chapinero Alto');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1020, 'Teusaquillo');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1015, 'La Candelaria');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1002, 'Usaquén');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1010, 'Santa Fe');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (2024, 'Suba');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (3010, 'Kennedy');
INSERT INTO codigo_postal (ID_CODIGO_POSTAL, nombre_barrio) VALUES (1085, 'Fontibón');

-- poblacion
INSERT INTO poblacion (id_poblacion, nombre_poblacion) 
VALUES (seqpoblacion.nextval, 'No Aplica');

INSERT INTO poblacion (id_poblacion, nombre_poblacion) 
VALUES (seqpoblacion.nextval, 'LGBT');

INSERT INTO poblacion (id_poblacion, nombre_poblacion) 
VALUES (seqpoblacion.nextval, 'NEGRA');

INSERT INTO poblacion (id_poblacion, nombre_poblacion) 
VALUES (seqpoblacion.nextval, 'ROOM');

INSERT INTO poblacion (id_poblacion, nombre_poblacion) 
VALUES (seqpoblacion.nextval, 'Gitano');



--alumno
INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, id_codigo_postal, telefono_alumno, id_poblacion) 
VALUES (100, 'Mateo', 'Perez', 'calle 25', 1025, 310851, 1);

INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, id_codigo_postal, telefono_alumno, id_poblacion) 
VALUES (103, 'Emilio', 'Lozano', 'calle 22', 1020, 340842, 1);

INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, id_codigo_postal, telefono_alumno, id_poblacion) 
VALUES (104, 'Andres', 'Alaix', 'calle 26', 1015, 311461, 2);

INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, id_codigo_postal, telefono_alumno, id_poblacion) 
VALUES (107, 'Adriana', 'Correa', 'calle 80', 1002, 322747, 2);

INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, direccion_alumno, id_codigo_postal, telefono_alumno, id_poblacion) 
VALUES (110, 'Jorge', 'Lozano', 'calle 23', 1010, 374022, 1);

ALTER TABLE profesor
ADD telefono_profesor number;

--profesor
INSERT INTO profesor (id_profesor, nombre_profesor, apellido_profesor, direccion_profesor, id_codigo_postal, telefono_profesor, id_poblacion) 
VALUES (200, 'Juan', 'Cortez', 'calle 15', 2024, 310707, 1);

INSERT INTO profesor (id_profesor, nombre_profesor, apellido_profesor, direccion_profesor, id_codigo_postal, telefono_profesor, id_poblacion) 
VALUES (203, 'Alexander', 'Aquino', 'calle 22', 2024, 340821, 1);

INSERT INTO profesor (id_profesor, nombre_profesor, apellido_profesor, direccion_profesor, id_codigo_postal, telefono_profesor, id_poblacion) 
VALUES (207, 'Kenti', 'Galvin', 'calle 57', 3010, 327840, 1);

INSERT INTO profesor (id_profesor, nombre_profesor, apellido_profesor, direccion_profesor, id_codigo_postal, telefono_profesor, id_poblacion) 
VALUES (208, 'Morra', 'Torrez', 'calle 27', 1085, 327889, 2);

INSERT INTO profesor (id_profesor, nombre_profesor, apellido_profesor, direccion_profesor, id_codigo_postal, telefono_profesor, id_poblacion) 
VALUES (209, 'Marcia', 'Galvez', 'calle 32', 2010, 311550, 3);




--curso
INSERT INTO CURSO (id_curso, nombre, id_profesor) VALUES (seqcurso.nextval, 'Matemáticas', 200);
INSERT INTO CURSO (id_curso, nombre, id_profesor) VALUES (seqcurso.nextval, 'Literatura Moderna', 203);
INSERT INTO CURSO (id_curso, nombre, id_profesor) VALUES (seqcurso.nextval, 'Biología Molecular', 207);
INSERT INTO CURSO (id_curso, nombre, id_profesor) VALUES (seqcurso.nextval, 'Programación', 208);
INSERT INTO CURSO (id_curso, nombre, id_profesor) VALUES (seqcurso.nextval, 'Ética', 209);


--asignatura

INSERT INTO asignatura (id_asignatura, NOMBRE_ASIGNATURA, HORAS_SEMANA, INCIDENCIA, id_curso, id_profesor) 
VALUES (sqasignatura.nextval, 'Matematica', 4, 'aprobado', 1, 200);

INSERT INTO asignatura (id_asignatura, NOMBRE_ASIGNATURA, HORAS_SEMANA, INCIDENCIA, id_curso, id_profesor) 
VALUES (sqasignatura.nextval, 'Lengua', 2, 'aprobado', 2, 203);

INSERT INTO asignatura (id_asignatura, NOMBRE_ASIGNATURA, HORAS_SEMANA, INCIDENCIA, id_curso, id_profesor) 
VALUES (sqasignatura.nextval, 'Biologia', 3, 'aprobado', 3, 207);

INSERT INTO asignatura (id_asignatura, NOMBRE_ASIGNATURA, HORAS_SEMANA, INCIDENCIA, id_curso, id_profesor) 
VALUES (sqasignatura.nextval, 'Programacion', 5, 'aprobado', 4, 208);

INSERT INTO asignatura (id_asignatura, NOMBRE_ASIGNATURA, HORAS_SEMANA, INCIDENCIA, id_curso, id_profesor) 
VALUES (sqasignatura.nextval, 'Etica', 5, 'aprobado', 5, 5);


-- NOTA_ALUMNOS
INSERT INTO NOTA_ALUMNOS (id_nota_alumno, nota_alumno, id_alumno, id_asignatura) VALUES (1, 'Aprobado', 100, 1);
INSERT INTO NOTA_ALUMNOS (id_nota_alumno, nota_alumno, id_alumno, id_asignatura) VALUES (2, 'Aprobado', 103, 2);
INSERT INTO NOTA_ALUMNOS (id_nota_alumno, nota_alumno, id_alumno, id_asignatura) VALUES (3, 'Aprobado', 104, 3);
INSERT INTO NOTA_ALUMNOS (id_nota_alumno, nota_alumno, id_alumno, id_asignatura) VALUES (4, 'Aprobado', 107, 4);
INSERT INTO NOTA_ALUMNOS (id_nota_alumno, nota_alumno, id_alumno, id_asignatura) VALUES (5, 'Aprobado', 110, 5);

--aula
INSERT INTO AULA (id_aula, piso, numero_pupitres, fecha_hora, id_asignatura) VALUES (1, 1, 30, TO_TIMESTAMP('2024-05-14 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO AULA (id_aula, piso, numero_pupitres, fecha_hora, id_asignatura) VALUES (2, 2, 25, TO_TIMESTAMP('2024-05-14 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO AULA (id_aula, piso, numero_pupitres, fecha_hora, id_asignatura) VALUES (3, 1, 35, TO_TIMESTAMP('2024-05-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO AULA (id_aula, piso, numero_pupitres, fecha_hora, id_asignatura) VALUES (4, 3, 20, TO_TIMESTAMP('2024-05-14 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO AULA (id_aula, piso, numero_pupitres, fecha_hora, id_asignatura) VALUES (5, 2, 40, TO_TIMESTAMP('2024-05-14 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
