--a. Mostrar nombre, teléfonos y dirección de los clientes que buscan casas en
--alquiler con un rango de precios de alquiler de 250 a 350 $us, en las zonas
--central y norte, y que tengan patio y garaje.
select c.NOMBRE_CL,c.DIRECCION_CL,tc.TELF_CL from CLIENTE c, TELEFONO_CLIENTE tc
where c.COD_CLIENTE = tc.COD_CLIENTE and c.COD_CLIENTE in(
	select b.COD_CLIENTE from BUSQUEDA b, OFERTA o, PRECIO p
	where b.COD_OFERTA = o.COD_OFERTA and o.COD_OFERTA = p.COD_OFERTA 
	and TIPO_OFERTA = 'Alquiler' and (MONTO_PRECIO <= 350 and MONTO_PRECIO >= 250) and o.COD_INMUEBLE in(
		select i.COD_INMUEBLE from INMUEBLE i, CASA c,DIRECCION d
		where i.COD_INMUEBLE = c.COD_INMUEBLE and d.COD_DIRECCION = i.COD_DIRECCION
		      and (d.ZONA = 'Centro' or d.ZONA = 'Norte') and (GARAJE = 1 and PATIO = 1)
	)
)
--b. Mostrar nombre, teléfono y dirección de los propietarios que venden casas en
--la zona sur, con una superficie mínima de 300 mts2 del lote y un mínimo de 150
--mts2 de construcción y que sean de dos plantas, y que sean de una antigüedad
--de máximo 10 años.
select p.NOMBRE_PR,p.DIRRECCION_PR,tp.TELF_PR from PROPIETARIO p, TELEFONO_PROPIETARIO tp 
where p.COD_PROPIETARIO = tp.COD_PROPIETARIO and p.COD_PROPIETARIO in(
	select po.COD_PROPIETARIO from POSEE po,INMUEBLE i,DIRECCION d
	where po.COD_INMUEBLE = i.COD_INMUEBLE and d.COD_DIRECCION = i.COD_DIRECCION
	and SUPERFICIE >= 300.0 and ZONA = 'Sur' and i.COD_INMUEBLE in(
		select c.COD_INMUEBLE from CASA c, VIVIENDA v,OFERTA ofe
		where c.COD_INMUEBLE = v.COD_INMUEBLE and c.COD_INMUEBLE = ofe.COD_INMUEBLE
		and ANTI_CONST <= 10 and SUPERFICIE_DE_CONTRUCCION >= 150 and NUM_DE_PLANTAS = 2 and TIPO_OFERTA = 'Venta'
	)
)
--c. Mostrar la zona, dirección de las casas que se dieron en anticrético con un
--monto entre 20000 y 35000 $us, en las zonas este y noreste, las fechas de inicio
--y fin del anticrético, junto al nombre del o los propietarios del inmueble, el
--nombre y teléfono del agente de la inmobiliaria que atendió la transacción, los
--datos del cliente que tomó el anticrético y finalmente que estas transacciones
--se realizaron en el primer trimestre de 2023.
use INM
select distinct d.ZONA, d.UBICACION_MAPS, co.FECHA_INI_CNTRT,co.FECHA_FIN_CNTRT, p.NOMBRE_PR, e.NOMBRE_EMPL,te.TELF_EMPL,c.NOMBRE_CL,tc.TELF_CL
from 
	DIRECCION d,INMUEBLE i, POSEE po,
	PROPIETARIO p, CASA ca, OFERTA o,
	EMPLEADO e, TELEFONO_EMPLEADO te, 
	CLIENTE c,TELEFONO_CLIENTE tc,
	CONTRATO co, BUSQUEDA b
where
	d.COD_DIRECCION = i.COD_DIRECCION and i.COD_INMUEBLE = ca.COD_INMUEBLE and
	po.COD_INMUEBLE = i.COD_INMUEBLE and i.COD_INMUEBLE = o.COD_INMUEBLE and 
	po.COD_PROPIETARIO = p.COD_PROPIETARIO and o.COD_OFERTA = co.COD_OFERTA and
	c.COD_CLIENTE = b.COD_CLIENTE and b.COD_OFERTA = o.COD_OFERTA and 
	e.COD_EMPLEADO = te.COD_EMPLEADO and e.COD_EMPLEADO = o.COD_EMPLEADO and
	(co.PAGO_CTRT between 20000 and 35000) and (d.ZONA in ('Este','Noreste')) and (co.FECHA_INI_CNTRT between '2023-01-01 00:00:00.000' and '2023-03-31 00:00:00.000')
	
--Mostrar los datos mas importantes de los 3 empleados que recibieron mas 
--comisiones por ventas y/o anticreticos culminados con exito, en el primer
--trimestre de este año, ordenar la salida de mayor a menor.
select top 3 e.COD_EMPLEADO,e.NOMBRE_EMPL,sum(t.COMISION_EMPL) as comiciones from EMPLEADO e,OFERTA o, CONTRATO c,TRANSACCION t
where e.COD_EMPLEADO = o.COD_EMPLEADO and c.COD_OFERTA = o.COD_OFERTA and t.COD_CONTRATO = c.COD_CONTRATO and
	(TIPO_OFERTA = 'Antricretico' or TIPO_OFERTA = 'Venta') and (FECHA_INI_CNTRT between '2023-01-01 00:00:00.000' and '2023-03-31 00:00:00.000')
group by e.COD_EMPLEADO,e.NOMBRE_EMPL
order by comiciones desc