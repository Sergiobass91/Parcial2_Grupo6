create database TP2_GRUPO6;

use TP2_GRUPO6;

create table alumnos (
	dni_alumno INT not null,
	nombre_alumno VARCHAR(50) not null,
	apellido_alumno VARCHAR(50) not null,
	email_alumno VARCHAR(60) not null,
	turno_alumno VARCHAR(20) not null,
	primary key (dni_alumno)
);

create table comentarios (
	id_comentario INT IDENTITY(1,1),
	dni_alumno INT not null,
	apellido_alumno VARCHAR(50) not null,
	comentario_alumno VARCHAR(200),
	primary key(id_comentario, dni_alumno),
	foreign key (dni_alumno) references alumnos(dni_alumno)
);

select * from alumnos;

delete  from alumnos;