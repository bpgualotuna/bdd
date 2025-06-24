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
drop table persona
--creacion persona
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567890','Sean','Albeira','2000/03/14');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567891','Jenniffer','Albeira','2000/03/14');
insert into persona(cedula,nombre,apellido,fecha_nacimiento)
values('1234567892','Brayan','Albeira','2000/03/14');
--creacion prestamo
delete from prestamo

insert into prestamo(cedula,monto)
values('1234567890',900);
insert into prestamo(cedula,monto)
values('1234567891',1000);
insert into prestamo(cedula,monto)
values('1234567890',120);
insert into prestamo(cedula,monto)
values('1234567891',500);
insert into prestamo(cedula,monto)
values('1234567892',300);
insert into prestamo(cedula,monto)
values('1234567892',200);
insert into prestamo(cedula,monto)
values('1234567892',150.0);
