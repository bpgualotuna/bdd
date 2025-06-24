create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key(cedula)
)

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo date,
	garante varchar(40),
	constraint prestamo_persona_fk foreign key (cedula)
	references persona(cedula)
)
drop table prestamo
--creacion persona
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567890','Sean','Albeira','2000/03/14');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567891','Jenniffer','Albeira','2000/03/14');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567892','Brayan','Albeira','2000/03/14');
--creacion prestamo
insert into prestamo(cedula)
values('1234567890');
insert into prestamo(cedula)
values('1234567891');
insert into prestamo(cedula)
values('1234567890');
insert into prestamo(cedula)
values('1234567891');
insert into prestamo(cedula)
values('1234567892');
insert into prestamo(cedula)
values('1234567892');
insert into prestamo(cedula)
values('1234567892');
