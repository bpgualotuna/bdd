select * from productos
select * from ventas
delete from productos
drop table ventas

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (id_venta),
	constraint ventas_productos_fk  foreign key (codigo_producto)
	references productos(codigo)
)

insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values('098','123','2024/12/13',3)

insert into productos(codigo,nombre,precio,stock)
values(123,'manitos',0.2,20);
insert into productos(codigo,nombre,precio,stock)
values(023,'manzanas',0.20,20);
insert into productos(codigo,nombre,precio,stock)
values(923,'maracas',0.1,40);
insert into productos(codigo,nombre,precio,stock)
values(823,'maceta',0.2,30);
insert into productos(codigo,nombre,precio,stock)
values(723,'queso',0.3,50);
insert into productos(codigo,nombre,precio,stock)
values(623,'agua',0.5,60);
insert into productos(codigo,nombre,precio,stock)
values(523,'cola',0.4,70);
insert into productos(codigo,nombre,precio,stock)
values(423,'chupete',0.6,80);
insert into productos(codigo,nombre,precio,stock)
values(323,'gomita',0.7,90);
insert into productos(codigo,nombre,precio,stock)
values(223,'rosa',0.8,20);

