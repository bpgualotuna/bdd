create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key (cedula)
)

select * from cuentas
select * from usuario
insert into usuario (cedula,nombre,apellido)
values ('12345','Brayan','Gualotuna')

alter table cuentas
add constraint usuarios_fk 
foreign key (cedula_propietario)
references usuario(cedula)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('54321','00000','2022/08/21',500.0)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('34321','12345','2022/08/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('44321','12345','2022/08/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('64321','12345','2023/02/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('74321','12345','2023/01/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('84321','12345','2022/11/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('94321','12345','2022/10/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('55321','12345','2022/12/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('52321','12345','2023/08/21',500.0);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('51321','12345','2022/09/21',500.0);
