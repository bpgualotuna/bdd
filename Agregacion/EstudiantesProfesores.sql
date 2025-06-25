select * from estudiantes
select * from profesores

select es.codigo_profesor, COUNT(es.nombre) from estudiantes es,profesores pr
where es.codigo_profesor = pr.codigo
group by es.codigo_profesor


SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento)))
FROM estudiantes