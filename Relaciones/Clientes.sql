create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key (id_compra),
	constraint compras_clientes_fk foreign key (cedula)
	references clientes(cedula)
)

drop table compras

select * from clientes
insert into clientes(cedula,nombre,apellido)
values('1725914236','Brayan','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1735914236','Jenniffer','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1715914236','Monica','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1705914236','Kevin','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1795914236','Kenny','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1785914236','David','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1775914236','Carlos','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1765914236','Juan','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1755914236','Pedro','Gualotuna');
insert into clientes(cedula,nombre,apellido)
values('1745914236','Stalyn','Gualotuna');


