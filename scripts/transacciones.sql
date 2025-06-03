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