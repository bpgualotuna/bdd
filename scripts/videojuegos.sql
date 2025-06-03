--Creacion tabla Videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(123,'Mario','Juego de plataformas',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(124,'DOOM','Juego de disparos',4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(125,'Minas','Juego de estrategia',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(126,'Ajedrez','Juego de estrategia',4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(127,'Metal Slug','Juego de plataformas',5)


insert into videojuegos(codigo,nombre,valoracion)
values(128,'Left 4 dead',2)

insert into videojuegos(codigo,nombre,valoracion)
values(129,'Fall Guys',5)

insert into videojuegos(codigo,nombre,valoracion)
values(120,'GTA V',5)

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between 9 and 10

select * from videojuegos where descripcion is null

select * from videojuegos

update videojuegos set descripcion = 'Mejor puntuado' where valoracion > 9

delete from videojuegos where valoracion < 7