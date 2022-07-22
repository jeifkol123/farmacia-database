

INSERT INTO sucursal(id_sucursal, direccion_sucursal, telefono_sucursal)
SELECT 1, 'manta', '0936389373' FROM dual UNION ALL
SELECT 2, 'portoviejo', '0981726354' FROM dual UNION ALL
SELECT 3, 'montecristi', '0913243546' FROM dual;

INSERT INTO estado_vendedor(id_estado_vendedor, estado_vendedor)
SELECT 1, 'activo' FROM dual UNION ALL
SELECT 2, 'inactivo' FROM dual;

INSERT INTO vendedor(id_vendedor, id_sucursal, id_estado_vendedor, cedula_vendedor, nombre_vendedor, 
apellidos_vendedor, direccion_vendedor, fecha_nacimiento_vendedor, fecha_ingreso_vendedor,id_superior)
SELECT 01,1,1,'1152637051','Tomás','Ignacio','Fusagasugá','31/12/2000','10/07/2018',5 FROM dual UNION ALL
SELECT 02,2,1,'1237171773','Tato','Alonso','Ibagué','09/06/1997','15/02/2020',3 FROM dual UNION ALL
SELECT 03,3,1,'0335760332','Rosendo','Gil','Cisnes','08/08/1996','08/02/2020',5 FROM dual UNION ALL
SELECT 04,1,1,'1403730235','Samuel','Laureal','Pozo Almonte','07/01/1999','05/08/2021',9 FROM dual UNION ALL
SELECT 05,1,2,'1382431296','Nicolás','Rivera','Pacasmayo','11/02/1998','07/05/2018',null FROM dual UNION ALL
SELECT 06,2,2,'1231466320','Andrés','Catalist','Barranca','22/08/1999','05/06/2021',9 FROM dual UNION ALL
SELECT 07,3,2,'1780388751','Juan','Juliens','Pereira','08/09/2000','12/04/2020',15 FROM dual UNION ALL
SELECT 08,1,2,'1354585751','Francisco','Juan','Mala','05/11/1999','01/08/2019',20 FROM dual UNION ALL
SELECT 09,1,1,'1232973845','Aznar','Serrano','Calarcá','05/05/1997','11/05/2020',12 FROM dual UNION ALL
SELECT 10,2,1,'1112781777','Pablo','Valentinez','Cusco','10/10/1995','11/07/2019',12 FROM dual UNION ALL
SELECT 11,1,1,'1246427796','Guillermo','Romero','O''Higgins','10/04/1999','01/04/2020',17 FROM dual UNION ALL
SELECT 12,2,1,'0332871350','Amílcar','Mora','Caldera','10/03/2000','07/05/2018',null FROM dual UNION ALL
SELECT 13,1,1,'0752463167','Francisco','Ibañez','Palmira','07/02/1997','10/11/2018',15 FROM dual UNION ALL
SELECT 14,2,1,'0841478488','Isaac','Felipe','Llaillay','05/08/1998','09/03/2020',17 FROM dual UNION ALL
SELECT 15,2,2,'0584553527','Tonin','Romero','Aguachica','07/06/2000','10/08/2018',12 FROM dual UNION ALL
SELECT 16,2,1,'0790811123','Martín','Soto','Iquitos','09/07/1997','02/07/2019',20 FROM dual UNION ALL
SELECT 17,1,2,'1237947710','Jhon','Morales','Colchane','07/03/1995','07/08/2019',10 FROM dual UNION ALL
SELECT 18,2,2,'1383786512','Raul','Ramos','Cusco','02/06/1997','02/04/2019',12 FROM dual UNION ALL
SELECT 19,1,2,'1097425627','Francisco','Peña','Barrancabermeja','06/03/1998','12/05/2019',20 FROM dual UNION ALL
SELECT 20,1,2,'1146096427','Ernesto','Saez','General Lagos','10/11/2000','09/03/2019',null FROM dual;

INSERT INTO cliente(id_cliente, cedula_cliente, nombre_cliente, apellidop_cliente,apellidom_cliente, 
telefono_cliente, direccion_cliente)
SELECT 01,'1377162227','Ramón','Leon','Velasquez','0922109515','Lima' FROM dual UNION ALL
SELECT 02,'1335843758','Leandro','Peña','Stanley','0982421615','Rionegro' FROM dual UNION ALL
SELECT 03,'1335621955','Ignacio','Martinez','Macdonald','0958741326','Barrancabermeja' FROM dual UNION ALL
SELECT 04,'1330778984','Roman','Cano','Rodriguez','0943275868','Yurimaguas' FROM dual UNION ALL
SELECT 05,'1380524386','Marcelo','Martinez','Macdonald','0935483600','Tarma' FROM dual UNION ALL
SELECT 06,'1384720197','Victorino','Aguilar','Rodriguez','0905442242','Istmina' FROM dual UNION ALL
SELECT 07,'1386333923','Angel','Moya','Aguilar','0955725907','Jaén' FROM dual UNION ALL
SELECT 08,'1329567326','Víctor','Josefinez','Jara','0965586872','San Vicente de Cañete' FROM dual UNION ALL
SELECT 09,'1384171856','Renato','Soto','Jara','0926384284','Corral' FROM dual UNION ALL
SELECT 10,'1363767591','Claudio','Jara','Burgess','0966346777','Chancay' FROM dual UNION ALL
SELECT 11,'1333188622','Panfilo','Velasquez','Leonard','0926531593','Ocaña' FROM dual UNION ALL
SELECT 12,'1347468183','Agustín','Esteban','Campbell','0968046684','Sullana' FROM dual UNION ALL
SELECT 13,'1361453217','Sebastián','Cristobal','Simmons','0987510310','Turbo' FROM dual UNION ALL
SELECT 14,'1338760679','Manuel','Carrasco','Harrison','0922351047','Chañaral' FROM dual UNION ALL
SELECT 15,'1384528566','José','Carrasco','Harrison','0974586793','Itagüí' FROM dual UNION ALL
SELECT 16,'1372746436','Carlo','Moya','Robertson','0928187117','Fundación' FROM dual UNION ALL
SELECT 17,'1348376968','David','Gil','Russell','0958280823','General Lagos' FROM dual UNION ALL
SELECT 18,'1328394822','Miguel','Suarez','Francis','0941112900','Arica' FROM dual UNION ALL
SELECT 19,'1334523758','Alfonso','Soto','Francis','0918934131','Pacoa' FROM dual UNION ALL
SELECT 20,'1321341257','Luis','Peña','Stanley','0967111803','Cartagena del Chairá' FROM dual;

INSERT INTO proveedor(
id_proveedor, razon_social_proveedor, direccion_proveedor, telefono_proveedor)
SELECT 1,'Institute Magno','Lima','0922109515' FROM dual UNION ALL
SELECT 2,'Corporación AndyLabs','Rionegro','0982421615' FROM dual UNION ALL
SELECT 3,'Farmaceutica Inc.','Barrancabermeja','0958741326' FROM dual UNION ALL
SELECT 4,'Ipsum Leo Corporation','Pacoa','0918934131' FROM dual;


INSERT INTO sucursal_proveedor(id_sucursal, id_proveedor)
SELECT 1, 1 FROM dual UNION ALL
SELECT 1, 2 FROM dual UNION ALL
SELECT 1, 3 FROM dual UNION ALL
SELECT 2, 4 FROM dual UNION ALL
SELECT 2, 2 FROM dual UNION ALL
SELECT 3, 1 FROM dual UNION ALL
SELECT 3, 3 FROM dual UNION ALL
SELECT 3, 4 FROM dual;

INSERT INTO descrip_producto(id_descripcion, categoria_descrip, cantidad_descrip,
presentacion_descrip, compuestos_descrip, similar_producto)
SELECT 1, 'Analgesia', '500 mg', '20 tabletas', 'Povidona, almidón de maíz pregelatinizado, ácido esteárico', 'Paracetamol' FROM dual UNION ALL
SELECT 2, 'Analgesia', '300 mg', 'Tableta ','Povidona, almidón de maíz, ácido esteárico', 	'Ácido acetilsalicílico' FROM dual UNION ALL
SELECT 3, 'Anestesia', '1 mg/ml', '50 ampolletas con 1 ml', 'Cloruro de sodio, ácido clorhídrico ' , 'Lidocaína ' FROM dual UNION ALL
SELECT 4, 'Anestesia', '500mg/50ml', '5 frascos ámpula con 50 ml', 'hidrocloruro, Sodio', 'Atropina' FROM dual UNION ALL
SELECT 5, 'Cardiología', '40 mg ', 'Envase con 60 ml', 'lactosa monohidrato, polivinilpirrolidona', 'Digoxina' FROM dual UNION ALL
SELECT 6, 'Cardiología', '0.05 mg/ml', '30 tabletas', 'lactosa monohidrato, propranolol hidrocloruro', 'Propranolol' FROM dual UNION ALL
SELECT 7,'Dermatología', '25 g/100 g', 'Envase con 20 g','adapaleno, peróxido de benzoilo' , 'Permetrina' FROM dual UNION ALL
SELECT 8, 'Dermatología','20 mg/ 1 g', 'Envase con 30 ml, 50 ml', 'Phenoxybenzyl, dichlorovinyl','Benzoilo' FROM dual UNION ALL
SELECT 9, 'Oftalmología', '0.5 mg/ml', 'Gotero integral con 5 ml', 'cloruro de benzalconio ', 'Cloruro de sodio ' FROM dual UNION ALL
SELECT 10, 'Oftalmología', '50 mg/g', 'Envase con 7 g o con gotero integral con 10 ml', 'cloruro sódico o sal ', 'Betaxolol ' FROM dual;

INSERT INTO producto(
id_producto, id_descripcion, unidad_producto,
nombre_producto, costo_producto, precio_producto,
fecha_vencim_producto, stock_producto, bajo_prescripcion,similar_producto)
SELECT 1, 1, 1, 'Ácido acetilsalicílico', 1.50, 2.00,'05/06/2024', 1400,1,3 FROM dual UNION ALL
SELECT 2, 2, 1, 'Paracetamol', 1.72, 2.15,'05/04/2025', 2300,1,5 FROM dual UNION ALL
SELECT 3, 3, 1, 'Atropina', 2.45, 4.54,'08/08/2026', 8700,0,6 FROM dual UNION ALL
SELECT 4, 4, 1,'Lidocaína' , 4.5, 5.01, '07/08/2024', 5200,1,8 FROM dual UNION ALL
SELECT 5, 5, 1, 'Propranolol', 3.4, 4.1, '03/06/2025', 2700,1,9 FROM dual UNION ALL
SELECT 6, 6, 1, 'Digoxina', 5.67, 6.7,'02/05/2024', 3300,0,2 FROM dual UNION ALL
SELECT 7, 7, 1, 'Benzoilo', 4.67, 6.75,'07/09/2026', 7800,1,6 FROM dual UNION ALL
SELECT 8, 8, 1,'Permetrina' , 7.7, 8.56, '06/03/2026', 2900,0,5 FROM dual UNION ALL
SELECT 9, 9, 1, 'Betaxolol ', 8.6, 9.5, '04/05/2025', 2300,0,6 FROM dual UNION ALL
SELECT 10, 10, 1, 'Cloruro de sodio ', 6.7, 7.6, '07/09/2025', 2200,1,1 FROM dual;

INSERT INTO promocion(
id_promocion, id_sucursal, fecha_inicio_promocion,
fecha_fin_promocion, cant_prod_promocion, precio_fin_promocion)
SELECT 1, 1, '04/01/2022', '08/01/2022', 20.00,0.1 FROM dual UNION ALL
SELECT 2, 2, '03/01/2022', '06/01/2022',10.00, 0.2 FROM dual UNION ALL
SELECT 3, 3, '02/01/2022', '05/01/2022',30.00, 0.3 FROM dual UNION ALL
SELECT 4, 2, '04/01/2022', '06/01/2022',25.00, 0.2 FROM dual UNION ALL
SELECT 5, 1, '05/01/2022', '07/01/2022',50.00, 0.5 FROM dual UNION ALL
SELECT 6, 3, '06/01/2022', '08/01/2022',25.00, 0.3 FROM dual;



INSERT INTO dato_pago(id_pago, pago_hora)
SELECT 1, 2.25 FROM dual UNION ALL
SELECT 2, 2.50 FROM dual UNION ALL
SELECT 3, 2.75 FROM dual UNION ALL
SELECT 4, 3.00 FROM dual;

INSERT INTO pago(id_dato_pago, id_vendedor, id_pago, hora_extra)
SELECT 1,01,2,14 FROM dual UNION ALL
SELECT 2,02,1,9 FROM dual UNION ALL
SELECT 3,03,3,9 FROM dual UNION ALL
SELECT 4,04,2,11 FROM dual UNION ALL
SELECT 5,05,4,9 FROM dual UNION ALL
SELECT 6,06,3,9 FROM dual UNION ALL
SELECT 7,07,3,14 FROM dual UNION ALL
SELECT 8,08,3,8 FROM dual UNION ALL
SELECT 9,09,3,13 FROM dual UNION ALL
SELECT 10,10,3,14 FROM dual UNION ALL
SELECT 11,11,3,8 FROM dual UNION ALL
SELECT 12,12,3,5 FROM dual UNION ALL
SELECT 13,13,1,6 FROM dual UNION ALL
SELECT 14,14,2,9 FROM dual UNION ALL
SELECT 15,15,3,10 FROM dual UNION ALL
SELECT 16,16,2,7 FROM dual UNION ALL
SELECT 17,17,1,11 FROM dual UNION ALL
SELECT 18,18,2,6 FROM dual UNION ALL
SELECT 19,19,4,12 FROM dual UNION ALL
SELECT 20,20,4,14 FROM dual;


INSERT INTO factura(id_factura, id_vendedor, id_cliente,  id_promocion,
descuento_factura, total_factura, fecha_factura, precio_final_desc_factura)
SELECT  1,05,13,6,10,19.96,'08/01/2021',18.8 FROM dual UNION ALL
SELECT  2,15,12,6,15,20.45,'07/02/2021',18.80 FROM dual UNION ALL
SELECT  3,08,12,1,6,20.24,'02/06/2022',18.08 FROM dual UNION ALL
SELECT  4,04,14,6,5,20.36,'12/07/2021',17.94 FROM dual UNION ALL
SELECT  5,01,19,4,4,20.05,'01/03/2022',17.74 FROM dual UNION ALL
SELECT  6,15,10,2,2,20.35,'04/05/2021',18.14 FROM dual UNION ALL
SELECT  7,16,06,5,2,19.40,'08/06/2021',18.82 FROM dual UNION ALL
SELECT  8,15,15,2,5,19.68,'05/04/2021',18.12 FROM dual UNION ALL
SELECT  9,16,04,1,2,19.83,'02/03/2022',17.89 FROM dual UNION ALL
SELECT 10,07,02,5,5,20.26,'05/08/2021',17.81 FROM dual UNION ALL
SELECT 11,13,14,6,1,19.73,'06/09/2021',17.94 FROM dual UNION ALL
SELECT 12,08,19,1,5,20.31,'10/09/2021',17.97 FROM dual UNION ALL
SELECT 13,12,03,5,3,19.87,'05/08/2021',17.87 FROM dual UNION ALL
SELECT 14,16,11,3,2,20.03,'09/02/2021',17.86 FROM dual UNION ALL
SELECT 15,19,09,6,1,19.98,'04/09/2021',18.21 FROM dual UNION ALL
SELECT 16,15,16,5,2,19.86,'09/06/2021',17.98 FROM dual UNION ALL
SELECT 17,15,08,6,4,19.70,'01/04/2022',18.27 FROM dual UNION ALL
SELECT 18,05,03,1,3,20.01,'10/05/2021',17.93 FROM dual UNION ALL
SELECT 19,02,02,2,6,19.99,'01/02/2022',17.97 FROM dual UNION ALL
SELECT 20,08,17,4,1.86,20.49,'06/03/2021',18.27 FROM dual;


INSERT INTO detalle_venta(id_detalle_venta,id_producto,
cantidad_venta,precio_producto,total_detalle_venta,tiene_prescripcion)
SELECT 01,2,100,6.15,100*6.15,1 FROM dual UNION ALL
SELECT 02,9,300,7.34,300*7.34,1 FROM dual UNION ALL
SELECT 03,3,500,0.86,500*0.86,0 FROM dual UNION ALL
SELECT 04,8,235,3.66,235*3.66,1 FROM dual UNION ALL
SELECT 05,6,765,6.84,765*6.84,0  FROM dual UNION ALL
SELECT 06,2,468,6.29,468*6.29,1 FROM dual UNION ALL
SELECT 07,6,670,3.65,670*3.65,0  FROM dual UNION ALL
SELECT 08,3,190,6.47,190*6.47,1 FROM dual UNION ALL
SELECT 09,4,410,0.63,410*0.63,0 FROM dual UNION ALL
SELECT 10,10,560,3.28,560*3.28,1 FROM dual;
