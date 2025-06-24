select * from ventas
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(232,23,'2024/02/01',5)
select * from productos

select pro.nombre,pro.stock,v.cantidad
from productos pro,ventas v
where pro.codigo = v.codigo_producto
and pro.nombre like '%n%' or pro.descripcion is null

select pro.nombre,pro.stock 
from productos pro,ventas v
where pro.codigo = v.codigo_producto
and v.cantidad = 5