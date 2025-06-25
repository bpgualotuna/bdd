select  * from videojuegos
select * from plataformas

select p.codigo_videojuego, COUNT(p.nombre_plataforma) from plataformas p,videojuegos v
where v.codigo = p.codigo_videojuego
group by p.codigo_videojuego


select ROUND(AVG(v.valoracion),2) AS valoracion_promedio
from videojuegos v