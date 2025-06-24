
select * from estudiantes


select * from profesores

select pr.codigo,es.nombre,es.apellido 
from estudiantes es,profesores pr
where es.codigo_profesor = pr.codigo 
and es.apellido like '%n%'

select es.cedula,es.nombre,es.apellido,es.email,es.fecha_nacimiento,es.codigo_profesor 
from estudiantes es,profesores pr
where es.codigo_profesor = pr.codigo 
and pr.nombre = 'Francisco'