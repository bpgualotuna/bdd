select * from clientes
select * from compras
insert into compras(id_compra,cedula,fecha_compra,monto)
values(124,'1735914236','2025/02/01',90.2)

select c.cedula, SUM(co.monto) from clientes c,compras co
where c.cedula = co.cedula
group by c.cedula

select co.fecha_compra, COUNT(co.cedula) from clientes c,compras co
where c.cedula = co.cedula and co.fecha_compra = '2025/02/01'
group by co.fecha_compra


