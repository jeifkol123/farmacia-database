INSERT INTO public.sucursal(
id_sucursal, direccion_sucursal, telefono_sucursal)
VALUES 
(1, 'manta', '0936389373'),
(2, 'portoviejo', '0981726354'),
(3, 'montecristi', '0913243546');

INSERT INTO public.estado_vendedor(
id_estado_vendedor, estado_vendedor)
VALUES 
(1, 'activo'),
(2, 'inactivo');

INSERT INTO public.vendedor(
id_vendedor, id_estado_vendedor, id_sucursal, cedula_vendedor, nombre_vendedor, 
apellidos_vendedor, direccion_vendedor, fecha_nacimiento_vendedor, fecha_ingreso_vendedor)
VALUES  
(01,1,1,'1152637051','Tomás','Ignacio','Fusagasugá','12/31/2000','10/17/2018'),
(02,1,2,'1237171773','Tato','Alonso','Ibagué','09/16/1997','12/15/2020'),
(03,1,3,'0335760332','Rosendo','Gil','Cisnes','08/18/1996','08/15/2020'),
(04,1,1,'1403730235','Samuel','Laureal','Pozo Almonte','07/13/1999','05/08/2021'),
(05,2,1,'1382431296','Nicolás','Rivera','Pacasmayo','11/26/1998','07/25/2018'),
(06,2,3,'1231466320','Andrés','Catalist','Barranca','12/12/1999','05/16/2021'),
(07,2,2,'1780388751','Juan','Juliens','Pereira','08/09/2000','12/14/2020'),
(08,1,2,'1354585751','Francisco','Juan','Mala','05/11/1999','01/28/2019'),
(09,1,3,'1232973845','Aznar','Serrano','Calarcá','05/05/1997','11/05/2020'),
(10,2,1,'1112781777','Pablo','Valentinez','Cusco','10/17/1995','11/17/2019'),
(11,1,3,'1246427796','Guillermo','Romero','O''Higgins','10/04/1999','01/04/2020'),
(12,2,3,'0332871350','Amílcar','Mora','Caldera','10/31/2000','07/05/2018'),
(13,1,3,'0752463167','Francisco','Ibañez','Palmira','07/02/1997','10/11/2018'),
(14,2,1,'0841478488','Isaac','Felipe','Llaillay','05/08/1998','09/23/2020'),
(15,2,2,'0584553527','Tonin','Romero','Aguachica','07/06/2000','10/08/2018'),
(16,2,1,'0790811123','Martín','Soto','Iquitos','09/07/1997','02/07/2019'),
(17,1,3,'1237947710','Jhon','Morales','Colchane','07/23/1995','07/28/2019'),
(18,2,3,'1383786512','Raul','Ramos','Cusco','02/26/1997','02/04/2019'),
(19,1,3,'1097425627','Francisco','Peña','Barrancabermeja','06/23/1998','12/25/2019'),
(20,1,2,'1146096427','Ernesto','Saez','General Lagos','10/11/2000','09/03/2019');



INSERT INTO public.cliente(
id_cliente, cedula_cliente, nombre_cliente, apellidop_cliente,apellidom_cliente, 
telefono_cliente, direccion_cliente)
VALUES   (01,'1377162227','Ramón','Leon','Velasquez','0922109515','Lima'),
(02,'1335843758','Leandro','Peña','Stanley','0982421615','Rionegro'),
(03,'1335621955','Ignacio','Martinez','Macdonald','0958741326','Barrancabermeja'),
(04,'1330778984','Roman','Cano','Rodriguez','0943275868','Yurimaguas'),
(05,'1380524386','Marcelo','Martinez','Macdonald','0935483600','Tarma'),
(06,'1384720197','Victorino','Aguilar','Rodriguez','0905442242','Istmina'),
(07,'1386333923','Angel','Moya','Aguilar','0955725907','Jaén'),
(08,'1329567326','Víctor','Josefinez','Jara','0965586872','San Vicente de Cañete'),
(09,'1384171856','Renato','Soto','Jara','0926384284','Corral'),
(10,'1363767591','Claudio','Jara','Burgess','0966346777','Chancay'),
(11,'1333188622','Panfilo','Velasquez','Leonard','0926531593','Ocaña'),
(12,'1347468183','Agustín','Esteban','Campbell','0968046684','Sullana'),
(13,'1361453217','Sebastián','Cristobal','Simmons','0987510310','Turbo'),
(14,'1338760679','Manuel','Carrasco','Harrison','0922351047','Chañaral'),
(15,'1384528566','José','Carrasco','Harrison','0974586793','Itagüí'),
(16,'1372746436','Carlo','Moya','Robertson','0928187117','Fundación'),
(17,'1348376968','David','Gil','Russell','0958280823','General Lagos'),
(18,'1328394822','Miguel','Suarez','Francis','0941112900','Arica'),
(19,'1334523758','Alfonso','Soto','Francis','0918934131','Pacoa'),
(20,'1321341257','Luis','Peña','Stanley','0967111803','Cartagena del Chairá');


INSERT INTO public.proveedor(
id_proveedor, razon_social_proveedor, direccion_proveedor, telefono_proveedor)
values 
(1,'Institute Magno','Lima','0922109515'),
(2,'Corporación AndyLabs','Rionegro','0982421615'),
(3,'Farmaceutica Inc.','Barrancabermeja','0958741326'),
(4,'Ipsum Leo Corporation','Pacoa','0918934131');

INSERT INTO public.sucursal_proveedor(
id_sucursal, id_proveedor)
VALUES 
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 2),
(3, 1),
(3, 3),
(3, 4);

INSERT INTO public.descrip_producto(
id_descripcion, categoria_descrip, cantidad_descrip,
presentacion_descrip, compuestos_descrip, similar_producto)
VALUES 
(1, 'Analgesia', '500 mg', '20 tabletas', 'Povidona, almidón de maíz pregelatinizado, ácido esteárico', 'Paracetamol'),
(2, 'Analgesia', '300 mg', 'Tableta ','Povidona, almidón de maíz, ácido esteárico', 	'Ácido acetilsalicílico'),
(3, 'Anestesia', '1 mg/ml', '50 ampolletas con 1 ml',  'Cloruro de sodio, ácido clorhídrico ' , 'Lidocaína  '),
(4, 'Anestesia', '500mg/50ml ', '5 frascos ámpula con 50 ml', 'hidrocloruro, Sodio', 'Atropina'),
(5, 'Cardiología', '40 mg ',  'Envase con 60 ml', 'lactosa monohidrato, polivinilpirrolidona', 'Digoxina'),
(6, 'Cardiología', '0.05 mg/ml', '30 tabletas', 'lactosa monohidrato, propranolol hidrocloruro', 'Propranolol'),
(7,'Dermatología', '25 g/100 g', 'Envase con 20 g','adapaleno, peróxido de benzoilo' , 'Permetrina'),
(8, 'Dermatología','20 mg/ 1 g', 'Envase con 30 ml, 50 ml', 'Phenoxybenzyl, dichlorovinyl','Benzoilo'),
(9, 'Oftalmología', '0.5 mg/ml', 'Gotero integral con 5 ml', 'cloruro de benzalconio ', 'Cloruro de sodio  '),
(10, 'Oftalmología', '50 mg/g', 'Envase con 7 g o con gotero integral con 10 ml', 'cloruro sódico o sal ', 'Betaxolol ');

INSERT INTO public.producto(
id_producto, id_descripcion, unidad_producto,
nombre_producto, costo_producto, precio_producto,
fecha_vencim_producto, stock_producto)
VALUES 
(1, 1, 1, 'Ácido acetilsalicílico', 1.50, 2.00,'05/06/2024', 1400),
(2, 2, 1,  'Paracetamol', 1.72, 2.15,'05/04/2025', 2300),
(3, 3, 1, 'Atropina', 2.45, 4.54,'08/08/2026', 8700),
(4, 4, 1,'Lidocaína' , 4.5, 5.01, '07/08/2024', 5200),
(5, 5, 1, 'Propranolol', 3.4, 4.1, '03/06/2025', 2700),
(6, 6, 1, 'Digoxina', 5.67, 6.7,'02/05/2024', 3300),
(7, 7, 1, 'Benzoilo', 4.67, 6.75,'07/09/2026', 7800),
(8, 8, 1,'Permetrina' , 7.7, 8.56, '06/03/2026', 2900),
(9, 9, 1, 'Betaxolol ', 8.6, 9.5, '04/05/2025', 2300),
(10, 10, 1, 'Cloruro de sodio  ', 6.7, 7.6, '07/09/2025', 2200);



INSERT INTO detalle_venta(id_detalle_venta,id_producto,
cantidad_venta,precio_producto,total_detalle_venta)
VALUES
(1,2,1,6.15,6.15),
(2,9,1,7.34,7.34),
(3,3,1,0.86,0.86),
(4,8,1,3.66,3.66),
(5,6,1,6.84,6.84),
(6,2,1,6.29,6.29),
(7,6,1,3.65,3.65),
(8,3,1,6.47,6.47),
(9,4,1,0.63,0.63),
(10,10,1,3.28,3.28);


INSERT INTO  public.factura(
id_factura, id_vendedor, id_cliente, id_detalle_venta, id_promocion,
descuento_factura, total_factura, fecha_factura, precio_final_desc_factura)
VALUES   
(1,5,13,2,6,10,19.96,'08/01/2021',18.8),
(2,15,12,3,6,15,20.45,'07/20/2021',18.80),
(3,8,12,1,2,6,20.24,'02/16/2022',18.08),
(4,4,14,6,6,5,20.36,'12/27/2021',17.94),
(5,1,19,4,6,4,20.05,'01/23/2022',17.74),
(6,15,10,2,6,2,20.35,'04/25/2021',18.14),
(7,16,6,5,6,2,19.40,'08/26/2021',18.82),
(8,15,15,2,6,5,19.68,'05/14/2021',18.12),
(9,16,4,1,5,2,19.83,'02/03/2022',17.89),
(10,7,2,5,6,5,20.26,'05/18/2021',17.81),
(11,13,14,7,6,1,19.73,'06/09/2021',17.94),
(12,8,19,5,1,5,20.31,'10/29/2021',17.97),
(13,12,3,5,5,3,19.87,'05/08/2021',17.87),
(14,16,11,5,3,2,20.03,'09/22/2021',17.86),
(15,19,9,6,4,1,19.98,'04/29/2021',18.21),
(16,15,16,6,5,2,19.86,'09/16/2021',17.98),
(17,15,8,6,6,4,19.70,'01/14/2022',18.27),
(18,5,3,1,6,3,20.01,'10/20/2021',17.93),
(19,2,2,2,5,6,19.99,'01/02/2022',17.97),
(20,8,17,10,4,1.86,20.49,'06/13/2021',18.27);


INSERT INTO public.promocion(
id_promocion, id_sucursal, fecha_inicio_promocion,
fecha_fin_promocion, cant_prod_promocion, precio_fin_promocion)
VALUES
(1, 1, '04/01/2022', '08/01/2022', 20.00,0.1),
(2, 2, '03/01/2022', '06/01/2022',10.00, 0.2),
(3, 3, '02/01/2022', '05/01/2022',30.00, 0.3),
(4, 2, '04/01/2022', '06/01/2022',25.00, 0.2),
(5, 1, '05/01/2022', '07/01/2022',50.00, 0.5),
(6, 3, '06/01/2022', '08/01/2022',25.00, 0.3);



(1,5,13,2,1.94,19.96,'08/01/2021','18.04'),
(2,15,12,3,1.88,20.45,'07/20/2021','18.80'),
(3,8,12,1,2.51,20.24,'02/16/2022','18.08'),
(4,4,14,2,2.21,'20.36','12/27/2021','17.94'),
(5,1,19,4,1.94,'20.05','01/23/2022','17.74'),
(6,15,10,2,2.44,'20.35','04/25/2021','18.14'),
(7,16,6,5,1.77,'19.40','08/26/2021','18.82'),
(8,15,15,2,1.66,'19.68','05/14/2021','18.12'),
(9,16,4,1,2.47,'19.83','02/03/2022','17.89'),
(10,7,2,5,1.86,'20.26','05/18/2021','17.81'),
(11,13,14,4,1.95,'19.73','06/09/2021','17.94'),
(12,8,19,5,1.93,'20.31','10/29/2021','17.97'),
(13,12,3,5,1.97,'19.87','05/08/2021','17.87'),
(14,16,11,5,2.00,'20.03','09/22/2021','17.86'),
(15,19,9,6,1.56,'19.98','04/29/2021','18.21'),
(16,15,16,5,2.41,'19.86','09/16/2021','17.98'),
(17,15,8,6,2.01,'19.70','01/14/2022','18.27'),
(18,5,3,1,1.73,'20.01','10/20/2021','17.93'),
(19,2,2,2,2.08,'19.99','01/02/2022','17.97'),
(20,8,17,4,1.86,'20.49','06/13/2021','18.27');


INSERT INTO public.dato_pago(
	id_pago, pago_hora)
	VALUES 
	(1, 2.25),
	(2, 2.50),
	(3, 2.75),
	(4, 3.00);
	
	INSERT INTO public.pago(
	id_dato_pago, id_vendedor, id_pago, hora_extra)
	VALUES   (1,1,2,14),
  (2,2,1,9),
  (3,3,3,9),
  (4,4,2,11),
  (5,5,4,9),
  (6,6,3,9),
  (7,7,3,14),
  (8,8,3,8),
  (9,9,3,13),
  (10,10,3,14),
  (11,11,3,8),
  (12,12,3,5),
  (13,13,1,6),
  (14,14,2,9),
  (15,15,3,10),
  (16,16,2,7),
  (17,17,1,11),
  (18,18,2,6),
  (19,19,4,12),
  (20,20,4,14);