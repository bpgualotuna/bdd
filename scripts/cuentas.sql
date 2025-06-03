--Creacion tabla Cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','54321','12/02/2008',200.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12344','54326','12/12/2008',20.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12343','54325','12/04/2008',100.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12342','54324','12/06/2008',600.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12341','54323','12/08/2008',500.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12340','54322','12/03/2008',400.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12349','54320','12/01/2008',300.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12348','54329','12/11/2008',800.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12347','54328','12/07/2008',900.0)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12346','54327','12/10/2008',2300.0)

select numero_cuenta,saldo from cuentas 

select * from cuentas where fecha_creacion between '01/06/2025' and '01/04/2025'

select numero_cuenta,saldo from cuentas where fecha_creacion between '01/06/2025' and '01/04/2025'

select * from cuentas

update cuentas set saldo = money(10) where cedula_propietario like '17%'

delete from cuentas where cedula_propietario like '10%'

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

