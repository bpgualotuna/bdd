select * from transacciones
select * from banco

select t.*, b.* from transacciones t,banco b
where t.codigo = b.codigo_transaccion
and t.numero_cuenta::integer between 22001 and 22004

select t.* from transacciones t,banco b
where t.codigo = b.codigo_transaccion
and codigo_transaccion = 1