select * from cuentas
select * from usuario
insert into usuario(cedula,nombre,apellido,tipo_cuenta)
values('17500','Jenniffer','Marquez','Ahorros')


select  AVG(cast(c.saldo as numeric)) from cuentas c,usuario u
where c.cedula_propietario = u.cedula
and u.cedula = '12345'
group by u.nombre

select u.tipo_cuenta,count(c.numero_cuenta) from cuentas c,usuario u
where c.cedula_propietario = u.cedula
group by u.tipo_cuenta