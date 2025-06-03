select * from videojuegos

select * from videojuegos where nombre like '%c%' or valoracion = 7;

select * from videojuegos where codigo between 3 and 7 or valoracion = 7;

select * from videojuegos where (descripcion = 'videojuego de guerra' and valoracion > 7 or nombre like 'c%') 
or (valoracion > 8 and nombre like 'd%') ;