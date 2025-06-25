select * from persona

select p.nombre,SUM(pre.monto) from persona p,prestamo pre
where p.cedula = pre.cedula
group by p.nombre

select COUNT(p.numero_hijos) from persona p
where p.numero_hijos > 1