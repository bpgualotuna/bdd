
select COUNT(t.tipo) from transacciones t
where t.tipo = 'C'

SELECT numero_cuenta, ROUND(AVG(CAST(monto AS decimal)),2) 
FROM transacciones 
GROUP BY numero_cuenta;