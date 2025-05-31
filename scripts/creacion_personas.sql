--Crear tabla personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
)
insert into personas(cedula,nombre,apellido)
values('1725914236','Brayan','Gualotuna')

insert into personas(cedula,nombre,apellido,estatura)
values('1745847564','Jenniffer','Marquez',1.85)

insert into personas(cedula,nombre,apellido,numero_hijos)
values('1745847563','Jenniffer','Gualotuna',2)

insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values('1745847556','Brayan','Marquez',1,1.58,'22/05/2000','22:54',200.34)

select cedula,nombre,numero_hijos from personas

select * from personas
