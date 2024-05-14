CREATE TABLE ASIGNATURA(
  id_asignatura number PRIMARY KEY,
  nombre_asignatura nvarchar2(20),
  horas_semana number,
  incidencia nvarchar2(100),
  id_curso number unique,
  id_profesor number unique
);

CREATE TABLE ALUMNOS(
  id_alumno number PRIMARY KEY,
  nombre_alumno nvarchar2(20),
  apellido_alumno nvarchar2(20),
  direccion_alumno nvarchar2(80),
  fecha_nacimiento_alumno timestamp,
  id_codigo_postal number,
  id_poblacion number,
  telefono_alumno number
);


CREATE TABLE NOTA_ALUMNOS(
  id_nota_alumno number PRIMARY KEY,
  nota_alumno nvarchar2(20),
  id_alumno number unique,
  id_asignatura number unique
);

CREATE TABLE POBLACION(
  id_poblacion number PRIMARY KEY,
  nombre_poblacion nvarchar2(20)
);

CREATE TABLE PROFESOR(
  id_profesor number PRIMARY KEY,
  nombre_profesor nvarchar2(20),
  apellido_profesor nvarchar2(20),
  direccion_profesor nvarchar2(80),
  fecha_nacimiento_profesor timestamp,
  id_codigo_postal number,
  id_poblacion number
);

CREATE TABLE CODIGO_POSTAL(
  id_codigo_postal number PRIMARY KEY,
  nombre_barrio nvarchar2(30)
);

CREATE TABLE AULA(
  id_aula number, 
  piso number,
  numero_pupitres number,
  fecha_hora timestamp,
  id_asignatura number
);

CREATE TABLE CURSO(
  id_curso NUMBER PRIMARY KEY,
  nombre nvarchar2(20),
  id_profesor number unique
);
