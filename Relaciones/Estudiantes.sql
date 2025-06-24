drop table estudiantes

create table estudiantes(
	cedula char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	codigo_profesor int,
	constraint estudiantes_pk primary key(cedula),
	constraint estudiantes_profesores_fk foreign key (codigo_profesor)
	references profesores(codigo)
)

select * from profesores
drop table profesores

create table profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint profesores_pk primary key (codigo)
)

insert into profesores(codigo,nombre)
values(123,'Francisco')

delete from estudiantes

insert into estudiantes(cedula,nombre,apellido,email,codigo_profesor)
values(1234,'Brayan','Gualotuna','1234',123);
insert into estudiantes(cedula,nombre,apellido,email)
values(9234,'Kevin','Gualotuna','1234');
insert into estudiantes(cedula,nombre,apellido,email)
values(8234,'Bra','Gualotuna','1234');
insert into estudiantes(cedula,nombre,apellido,email,codigo_profesor)
values(7234,'Stalyn','Gualotuna','1234',123);
insert into estudiantes(cedula,nombre,apellido,email)
values(6234,'Jenniffer','Gualotuna','1234');
insert into estudiantes(cedula,nombre,apellido,email,codigo_profesor)
values(5234,'Said','Gualotuna','1234',123);
insert into estudiantes(cedula,nombre,apellido,email)
values(4234,'Alberto','Gualotuna','1234');
insert into estudiantes(cedula,nombre,apellido,email,codigo_profesor)
values(3234,'Juan','Gualotuna','1234',123);
insert into estudiantes(cedula,nombre,apellido,email)
values(2234,'Pedro','Gualotuna','1234');