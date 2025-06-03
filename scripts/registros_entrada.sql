--Creacion tabla registros_entrada
create table registros_entrada (
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_registro_pk primary key (codigo_registro)
)
drop table registros_entrada

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(123,'1725914236','09/01/2000','07:00')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(223,'1725914232','09/02/2000','08:30')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(323,'1725914233','09/03/2000','08:20')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(423,'1725914234','09/04/2000','08:10')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(523,'1725914235','09/05/2000','08:00')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(623,'1725914231','09/06/2000','07:50')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(723,'1725914237','09/07/2000','07:40')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(823,'1725914238','09/08/2000','07:30')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(923,'1725914239','09/09/2000','07:20')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values(023,'1725914230','09/10/2000','07:10')

select cedula_empleado,fecha,hora from registros_entrada

select * from registros_entrada where hora between '07:00' and '14:00'

select * from registros_entrada where hora > '08:00'

select * from registros_entrada

--Consultado, se puede usar Where Month(fecha) = 8, para todos los meses 8
update registros_entrada set cedula_empleado = '082345679' where fecha between '2024-08-01' and '2024-08-31'

delete from registros_entrada where fecha between '2025/06/01' and '2025/06/30'

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');