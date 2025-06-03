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

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);