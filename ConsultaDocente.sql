--Mostrar por cada transaccion venta, anticretico o alquiler, el numero
--de transacciones culminadas con exito hasta la fecha en el presente año,
--ordenar la salida de mayor a menor por numero. Por ejemplo
--				TIPO DE TRANSACCION		NUMERO
--				VENTA					10
--				ALQUILER				8
--				ANTICRETICO				4
select o.TIPO_OFERTA, count(TIPO_OFERTA) as Numero from OFERTA o, CONTRATO c, TRANSACCION t
where o.COD_OFERTA = c.COD_OFERTA and t.COD_CONTRATO = c.COD_CONTRATO
group by TIPO_OFERTA
order by Numero desc