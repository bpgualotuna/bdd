--Creacion tabla Estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567890','Brayan','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567891','Stalyn','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567892','Jennifer','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567893','Patricio','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567894','Fabiola','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567895','Juan','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567896','David','Gualotuna','bpgbrayan','09/01/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567897','Henry','Gualotuna','bpgbrayan','09/01/2000')

select * from estudiantes

select nombre,cedula from estudiantes 

select nombre from estudiantes where cedula like '17%'

select nombre,apellido from estudiantes where nombre like 'A%'