/*Un trigger que impida vender medicamentos en los cuales el cliente no 
haya presentado la prescripción especial para estupefacientes y psicotrópicos.*/
create or replace trigger TRIGGER_TIENEPRESCRIPCION
before
insert on detalle_venta
for each row
BEGIN   
     if (:new.tiene_prescripcion=0)  then
       RAISE_APPLICATION_ERROR(-20002, 'NO SE PUEDE VENDER NO TIENE PRESCRIPCION');
         end if; 
   if (:new.tiene_prescripcion=1)  then
        dbms_output.put_line('SI SE PUEDE VENDER SI TIENE PRESCRIPCION');
        end if;
END;
/*Un cursor que muestre todos los fármacos existentes y los fármacos con igual 
acción a él. Debeaparecer el nombres del fármaco, el/los fármacos idéntico a él, 
los compuestos. Adicional a esto, mostrarse el stock disponible;
*/
CREATE OR REPLACE PROCEDURE verSUBALTERNO(id_ in varchar2) Is
begin 
DECLARE
 d1 varchar2(50) :='';d2 varchar2(50) :='';d3 varchar2(50) :='';d4 varchar2(50) :=''; d5 varchar2(50) :='';
 CURSOR c_venta  IS SELECT id_vendedor, nombre_vendedor,apellidos_vendedor,id_superior FROM vendedor ;
    CURSOR c_superior IS select T2.ID_vendedor, T2.nombre_vendedor, T2.apellidos_vendedor,t1.id_superior, t2.nombre_vendedor 
  as hijo from vendedor t1 left join vendedor t2 on t2.id_vendedor=t1.id_superior order by id_superior ;
BEGIN
 DBMS_OUTPUT.put_line('los subalternos de '||id_||' son:');
    for registro in c_venta loop
        if(registro.id_superior is not null) then
        for registro2 in c_superior loop
            d1:=registro.id_vendedor; d2:=registro.nombre_vendedor;  d3:=registro.apellidos_vendedor;  
            if(registro.id_superior=registro2.id_vendedor ) then
                    d4:=registro2.id_vendedor; d5:=registro2.nombre_vendedor||' '||registro2.apellidos_vendedor; 
                    end if;
                    end loop;
                if (d5=id_) then
                
                    DBMS_OUTPUT.put_line(d2||' '||d3||'   ('||d4||')');
                 
                end if ;   
            end if;
        end loop;     
end;
end;

/*- Un procedimiento almacenado al que se le ingrese el nombre de un empleado, 
y muestre por pantalla los nombres, apellidos de todos los subalternos que haya tenido.*/
DECLARE
d1 varchar2(50) :='';d2 varchar2(50) :='';d3 varchar2(500) :='';d4 varchar2(50) :=''; d5 varchar2(50) :='';d6 varchar2(50) :='';
CURSOR c_venta IS SELECT detalle_venta.id_producto, producto.nombre_producto, producto.similar_producto, producto.stock_producto, 
producto.precio_producto, detalle_venta.cantidad_venta,descrip_producto.compuestos_descrip FROM producto  
inner join descrip_producto on   producto.id_producto=descrip_producto.id_descripcion
inner join detalle_venta on   producto.id_producto=detalle_venta.id_detalle_venta;
CURSOR c_superior IS select T1.ID_producto,T1.precio_producto, T1.nombre_producto,t1.similar_producto, t2.nombre_producto 
as hijo from producto t1 left join producto t2 on t1.similar_producto=t2.id_producto;
BEGIN
    for registro in c_venta loop
        d2:=registro.nombre_producto;  d3:=registro.compuestos_descrip;  d4:=registro.cantidad_venta;
        DBMS_OUTPUT.put_line('Producto Original:' ||' '||d2||' $' ||registro.precio_producto); 
            for registro2 in c_superior loop
                if(registro.id_producto=registro2.similar_producto ) then
                    d5:=registro2.nombre_producto; 
                    DBMS_OUTPUT.put_line('           Producto Similar('||d5||' $'  ||registro2.precio_producto||')');  
                end if;
            end loop;    
        DBMS_OUTPUT.put_line('           Compuestos('||d3||')');
        DBMS_OUTPUT.put_line('           Stock disponible: ('||d4||')');  
    end loop;  
end; 