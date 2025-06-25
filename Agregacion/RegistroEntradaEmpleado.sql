select * from empleado
select * from registros_entrada

select e.codigo_empleado, COUNT(r.codigo_registro) from empleado e,registros_entrada r
where e.codigo_empleado = r.codigo_empleado
group by e.codigo_empleado

select MIN(fecha) AS fecha_minima,MAX(fecha) AS fecha_maxima from registros_entrada
