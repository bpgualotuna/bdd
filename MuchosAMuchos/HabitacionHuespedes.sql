create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

create table huespedes(
	id int,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (id)
)

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huesped_fk foreign key (huesped_id) references huespedes(id),
	constraint reservas_pk primary key (habitacion,huesped_id)
)

--CONSULTA 1

SELECT habitaciones.habitacion_numero, huespedes.nombres, huespedes.apellidos
FROM habitaciones, reservas, huespedes
WHERE habitaciones.habitacion_numero = reservas.habitacion
AND huespedes.id = reservas.huesped_id;

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 2);

SELECT habitaciones.habitacion_numero, COUNT(reservas.huesped_id) AS cantidad_huespedes
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion
GROUP BY habitaciones.habitacion_numero;

--CONSULTA 2

SELECT habitaciones.habitacion_numero, habitaciones.piso, huespedes.nombres, huespedes.apellidos
FROM habitaciones, reservas, huespedes
WHERE habitaciones.habitacion_numero = reservas.habitacion
AND huespedes.id = reservas.huesped_id
AND habitaciones.piso = 4;

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 3);

SELECT habitaciones.habitacion_numero, AVG(reservas.huesped_id) AS promedio_huesped_id
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion
GROUP BY habitaciones.habitacion_numero;

--CONSULTA 3

SELECT habitaciones.habitacion_numero, huespedes.nombres, huespedes.apellidos
FROM habitaciones, reservas, huespedes
WHERE habitaciones.habitacion_numero = reservas.habitacion
AND huespedes.id = reservas.huesped_id;

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 4);

SELECT habitaciones.habitacion_numero, SUM(habitaciones.precio_por_noche) AS total_precio
FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion
GROUP BY habitaciones.habitacion_numero;