create table plataformas (
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint plataforma_pk primary key (id_plataforma),
	constraint plataforma_videojuegos_fk foreign key (codigo_videojuego)
	references videojuegos(codigo)
)

select * from videojuegos
delete from videojuegos

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(123,'Call of duty','Guerra',10);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(124,'laberinto','Estrategia',10);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(125,'Galaga','Guerra',9);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(126,'Ateroids','Guerra',8);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(127,'Cocina','Recreativo',3);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(128,'Doom','Guerra',7);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(129,'Dia despues','Historia',6);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(120,'Left','Zombies',9);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(121,'Minecraft','Guerra',10);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(122,'Call','Guerra',10);

