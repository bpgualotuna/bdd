--Creacion tabla Transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(1,'12340',50,'C','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(2,'12341',50,'D','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(3,'12342',50,'C','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(4,'12343',50,'D','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(5,'12344',50,'C','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(6,'12345',50,'D','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(7,'12346',50,'C','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(8,'12347',50,'D','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(9,'12348',50,'C','12/12/2000','12:21')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values(0,'12349',50,'D','12/12/2000','12:21')

select * from transacciones where tipo = 'D'

select * from transacciones where monto between money(200) and money(2000)

select codigo,monto,tipo,fecha from transacciones where fecha is not null

select * from transacciones

update transacciones set tipo = 'T' 
where monto between money(100) and money(500) 
and fecha between '2000/09/01' and '2000/09/30'
and hora between '14:00' and '20:00'

delete from transacciones where hora between '14:00' and '18:00'

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');


insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');