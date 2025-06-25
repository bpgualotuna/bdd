create table ciudad(
	id int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (id)
)

create table municipio(
	id int,
	nombre varchar(45),
	ciudad_id int,
	constraint municipio_pk primary key (id),
	constraint municipio_fk foreign key (ciudad_id) references ciudad(id)
)

create table proyecto(
	id int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (id)
)

create table proyecto_municipio(
	proyecto_id int not null,
	municipio_id int not null,
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)

drop table proyecto_municipio

--CONSULTA 1

SELECT municipio.nombre, proyecto.proyecto
FROM municipio, proyecto_municipio, proyecto
WHERE municipio.id = proyecto_municipio.municipio_id
AND proyecto.id = proyecto_municipio.proyecto_id;

SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1);

SELECT municipio.nombre, COUNT(proyecto_municipio.proyecto_id) AS cantidad_proyectos
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

--CONSULTA 2

SELECT municipio.nombre, proyecto.proyecto
FROM municipio, proyecto_municipio, proyecto
WHERE municipio.id = proyecto_municipio.municipio_id
AND proyecto.id = proyecto_municipio.proyecto_id
AND municipio.nombre LIKE '%GAD%';

SELECT municipio.nombre, MIN(proyecto_municipio.proyecto_id) AS min_proyecto_id
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;

--CONSULTA 3

SELECT municipio.nombre, ciudad.nombre AS ciudad
FROM municipio, ciudad
WHERE municipio.ciudad_id = ciudad.id;

SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 3);

SELECT municipio.nombre, MAX(proyecto_municipio.proyecto_id) AS max_proyecto_id
FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id
GROUP BY municipio.nombre;


