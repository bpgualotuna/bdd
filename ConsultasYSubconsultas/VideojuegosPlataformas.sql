
select * from videojuegos
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(1,'God of war','Guerra',9)
select * from plataformas
insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego)
values(2,'PC',124)


select v.*,pl.* from videojuegos v,plataformas pl
where pl.codigo_videojuego = v.codigo
and(v.descripcion like 'Guerra'
and v.valoracion > 7)
or (v.nombre like 'C%' and v.valoracion >8) 
or (v.nombre like 'D%' and v.valoracion >8)

select pl.* from videojuegos v,plataformas pl
where v.nombre = 'God of war'


