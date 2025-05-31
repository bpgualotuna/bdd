--Creacion tabla Productos
drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (123,'papas','papas fritas',0.50,50)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (124,'agua','agua mineral',0.70,20)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (125,'queso','queso con sal',0.90,40)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (126,'huevos','huevos organicos',0.20,80)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (127,'sal','sal en grano',2.50,10)

insert into productos(codigo,nombre,precio,stock)
values (128,'gaseosa',0.50,90)

insert into productos(codigo,nombre,precio,stock)
values (129,'chicles',0.15,30)

insert into productos(codigo,nombre,precio,stock)
values (120,'chupetes',0.50,50)

select * from productos