
select c.numero_cuenta,u.nombre 
from cuentas c, usuario u
where u.cedula = c.cedula_propietario
and c.saldo::numeric between 100.0 and 1000.0

select c.numero_cuenta,c.fecha_creacion,c.saldo,u.cedula from cuentas c, usuario u
where u.cedula = c.cedula_propietario
and c.saldo::numeric between 100.0 and 1000.0
and c.fecha_creacion between '2022/09/21' and '2023/09/21'