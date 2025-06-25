create table usuarios(
	id int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento DATE,
	constraint usuarios_pk primary key (id)
)

create table grupo(
	id int,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion DATE,
	constraint grupo_pk primary key (id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id),
	constraint usuario_grupo_pk primary key (us_id,gr_id)
	
)

--CONSULTA 1
SELECT usuarios.nombre, grupo.nombre
FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id
AND grupo.id = usuario_grupo.gr_id;

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 1);

SELECT grupo.nombre, COUNT(usuario_grupo.us_id) AS cantidad_usuarios
FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id
GROUP BY grupo.nombre;

--CONSULTA 2

SELECT usuarios.nombre, grupo.nombre
FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id
AND grupo.id = usuario_grupo.gr_id
AND grupo.nombre LIKE '%intensivo%';

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 2);

SELECT grupo.nombre, MAX(usuario_grupo.us_id) AS max_us_id, MIN(usuario_grupo.us_id) AS min_us_id
FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id
GROUP BY grupo.nombre;

--CONSULTA 3

SELECT usuarios.nombre, grupo.fecha_creacion
FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id
AND grupo.id = usuario_grupo.gr_id
AND grupo.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08';

SELECT nombre
FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 3);

SELECT grupo.descripcion, COUNT(usuario_grupo.us_id) AS cantidad_usuarios
FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id
AND grupo.descripcion LIKE '%matutino%'
GROUP BY grupo.descripcion;