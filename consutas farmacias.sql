/* CONSULTA 1
Mostrar a todos los empleados desde el de más 
antigüedad hasta el de menos antigüedad. Debe aparecer 
en una columna nombres y apellidos, en otra columna el 
tiempo que ha trabajado en la cadena en años, meses y días. 
En otra columna debe aparecer el mensaje “activo” o “inactivo”, 
para saber si está o no trabajando en la empresa.
*/
select nombre_vendedor, apellidos_vendedor, Age(fecha_ingreso_vendedor) 
as Tiempo_Trabajado, estado_vendedor from vendedor inner join estado_vendedor  on 
vendedor.id_estado_vendedor=estado_vendedor.id_estado_vendedor  
order by  fecha_ingreso_vendedor;

/* CONSULTA 2
Mostrar todos los casos de clientes atendidos 
con idéntico apellido paterno y apellido materno.
 Debe aparecer en una columna los apellidos paterno 
 y materno del cliente, en otra columna la cantidad de coincidencias.
*/
select concat(cliente.apellidop_cliente,' ',cliente.apellidom_cliente)
as apellidos,
count(cliente.apellidop_cliente||cliente.apellidom_cliente) as contador
from cliente GROUP by  
 cliente.apellidop_cliente,cliente.apellidom_cliente 
having count(cliente.apellidop_cliente||cliente.apellidom_cliente )>=2  
order by contador desc

/* CONSULTA 3
Mostrar todos los fármacos existentes y los fármacos con igual acción a él. Debe aparecer en una
columna nombres del fármaco, en otra columna el fármaco idéntico a él, en otra los
compuestos en los que coinciden*/
SELECT nombre_producto, categoria_descrip,similar_producto,compuestos_descrip
	FROM public.producto inner join  descrip_producto on
	producto.id_descripcion =  descrip_producto.id_descripcion order by compuestos_descrip ;
	
	/* CONSULTA 4
	Mostrar los datos de pago de los empleados. Debe aparecer en una columna nombres y apellidos del
empleado, en otra columna la cantidad de horas trabajadas por el empleado, en otra columna la
cantidad de dinero que se le ha pagado al empleado, en otra columna la cantidad de horas extras
trabajadas por el empleado*/
	SELECT concat(vendedor.nombre_vendedor,' ',vendedor.apellidos_vendedor) as nombres 
,age(fecha_ingreso_vendedor) as tiempo_trabajado, dato_pago.pago_hora,
(((date_part('days', age( fecha_ingreso_vendedor)))*8)+
((date_part('mons', age( fecha_ingreso_vendedor))*20)*8)+
((date_part('year', age( fecha_ingreso_vendedor))*236)*8)
) as horas_trabajadas,((((date_part('days', age( fecha_ingreso_vendedor)))*8)+
((date_part('mons', age( fecha_ingreso_vendedor))*20)*8)+
((date_part('year', age( fecha_ingreso_vendedor))*236)*8)
*dato_pago.pago_hora+0.00)) as pago_total, hora_extra, 
(hora_extra*dato_pago.pago_hora) as pago_horas_extras
,((((date_part('days', age( fecha_ingreso_vendedor)))*8)+
((date_part('mons', age( fecha_ingreso_vendedor))*20)*8)+
((date_part('year', age( fecha_ingreso_vendedor))*236)*8)
*dato_pago.pago_hora+0.00)+hora_extra, (hora_extra*dato_pago.pago_hora)) 
as pago_final from public.pago 
left join vendedor on vendedor.id_vendedor=pago.id_vendedor 
left  join dato_pago on	dato_pago.id_pago=pago.id_pago ;