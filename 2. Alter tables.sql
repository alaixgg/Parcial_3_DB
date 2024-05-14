ALTER TABLE NOTA_ALUMNOS
ADD CONSTRAINT fk_id_alumno
FOREIGN KEY (id_alumno)
REFERENCES alumnos(id_alumno);

ALTER TABLE ASIGNATURA
ADD CONSTRAINT fk_id_curso
FOREIGN KEY (id_curso)
REFERENCES curso(id_curso);


ALTER TABLE  ASIGNATURA
ADD CONSTRAINT pk_id_profesor
FOREIGN KEY (id_profesor)
REFERENCES profesor(id_profesor);

ALTER TABLE ALUMNOS
ADD CONSTRAINT pk_poblacion_alumno
FOREIGN KEY (id_poblacion)
REFERENCES poblacion(id_poblacion);

ALTER TABLE ALUMNOS
ADD CONSTRAINT pk_id_codigo_postal_alumno
FOREIGN KEY (id_codigo_postal)
REFERENCES codigo_postal(id_codigo_postal);

ALTER TABLE PROFESOR
ADD CONSTRAINT pk_poblacion_PROFESOR
FOREIGN KEY (id_poblacion)
REFERENCES poblacion(id_poblacion);

ALTER TABLE PROFESOR
ADD CONSTRAINT pk_id_codigo_postal_profesor
FOREIGN KEY (id_codigo_postal)
REFERENCES codigo_postal(id_codigo_postal);

ALTER TABLE AULA
ADD CONSTRAINT pk_id_asignatura
FOREIGN KEY (id_asignatura)
REFERENCES asignatura(id_asignatura);

ALTER TABLE CURSO
ADD CONSTRAINT pk_id_profesor_curso
FOREIGN KEY (id_profesor)
REFERENCES profesor(id_profesor);


ALTER TABLE NOTA_ALUMNOS
ADD CONSTRAINT pk_id_asignatura_nota
FOREIGN KEY (id_asignatura)
REFERENCES asignatura(id_asignatura);
