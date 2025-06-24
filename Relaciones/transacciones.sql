select * from transacciones
drop table transacciones
create table transacciones(
	codigo int,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date,
	hora time,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo)
values(123,'12345',50.0,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values(223,'12345',150.0,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values(323,'12345',510.0,'C');
insert into transacciones (codigo,numero_cuenta,monto,tipo)
values(523,'22003',501.0,'C');

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco),
	constraint banco_transaaciones_fk foreign key (codigo_transaccion)
	references transacciones(codigo)
)

insert into banco(codigo_banco,codigo_transaccion)
values(1,123);
insert into banco(codigo_banco,codigo_transaccion)
values(2,123);
insert into banco(codigo_banco,codigo_transaccion)
values(3,123);
insert into banco(codigo_banco,codigo_transaccion)
values(4,123);
insert into banco(codigo_banco,codigo_transaccion)
values(5,123);
insert into banco(codigo_banco,codigo_transaccion)
values(7,523);
