select * from transacciones

--::integer transforma el dato a entero
select * from transacciones where tipo = 'C' and numero_cuenta::integer between 222001 and 22004;

select * from transacciones where tipo ='D' and extract(day from fecha) = 25 
and extract(month from fecha) = 5
and numero_cuenta::integer between 22007 and 22010;

select * from transacciones where codigo between 1 and 5 and numero_cuenta::integer between 22002 and 22004 
and extract(month from fecha) = 5 and (extract(day from fecha)= 26 or extract(day from fecha)=29 ) ;