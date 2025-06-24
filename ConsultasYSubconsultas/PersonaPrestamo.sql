select * from persona
select * from prestamo

select p.cantidad_ahorrada,pres.monto,pres.garante
from persona p,prestamo pres
where p.cedula = pres.cedula
and pres.monto::numeric between 100 and 1000

select *
from persona 
where nombre = 'Sean'
