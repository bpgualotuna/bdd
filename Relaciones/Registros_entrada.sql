delete from registros_entrada
drop table empleado
select * from registros_entrada
select * from empleado

alter table registros_entrada
add column codigo_empleado int not null
alter table registros_entrada
add constraint registros_entrada_empleado_fk foreign key (codigo_empleado)
references empleado(codigo_empleado)

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key (codigo_empleado)
)

insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Brayan','2024/06/10','00:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(321,'Jenniffer','2024/06/10','00:00');



insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(333,'1234567890','2023/08/01','08:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(332,'1234567890','2023/09/18','09:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(331,'1234567890','2023/09/17','08:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(330,'1234567890','2023/10/16','09:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(339,'1234567890','2023/11/15','09:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(338,'1234567890','2023/10/14','08:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(337,'1234567890','2023/10/12','09:00',2201);
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(336,'1234567890','2023/10/21','08:00',2201);