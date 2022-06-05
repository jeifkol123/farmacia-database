/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     04/06/2022 15:53:06                          */
/*==============================================================*/




/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           INT4                 not null,
   CEDULA_CLIENTE       VARCHAR(10)          null,
   NOMBRE_CLIENTE       VARCHAR(40)          null,
   APELLIDOP_CLIENTE    VARCHAR(40)          null,
   APELLIDOM_CLIENTE    VARCHAR(40)          null,
   TELEFONO_CLIENTE     VARCHAR(13)          null,
   DIRECCION_CLIENTE    VARCHAR(40)          null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: DATO_PAGO                                             */
/*==============================================================*/
create table DATO_PAGO (
   ID_PAGO              INT4                 not null,
   PAGO_HORA            FLOAT4               not null,
   constraint PK_DATO_PAGO primary key (ID_PAGO)
);

/*==============================================================*/
/* Table: DESCRIP_PRODUCTO                                      */
/*==============================================================*/
create table DESCRIP_PRODUCTO (
   ID_DESCRIPCION       INT4                 not null,
   CATEGORIA_DESCRIP    VARCHAR(30)          null,
   CANTIDAD_DESCRIP     VARCHAR(10)          null,
   PRESENTACION_DESCRIP VARCHAR(60)          null,
   COMPUESTOS_DESCRIP   VARCHAR(100)         null,
   SIMILAR_PRODUCTO     VARCHAR(100)         null,
   constraint PK_DESCRIP_PRODUCTO primary key (ID_DESCRIPCION)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA (
   ID_DETALLE_VENTA     INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   CANTIDAD_VENTA       INT4                 null,
   PRECIO_PRODUCTO      FLOAT8               null,
   TOTAL_DETALLE_VENTA  FLOAT8               null,
   constraint PK_DETALLE_VENTA primary key (ID_DETALLE_VENTA)
);

/*==============================================================*/
/* Table: ESTADO_VENDEDOR                                       */
/*==============================================================*/
create table ESTADO_VENDEDOR (
   ID_ESTADO_VENDEDOR   INT4                 not null,
   ESTADO_VENDEDOR      VARCHAR(20)          null,
   constraint PK_ESTADO_VENDEDOR primary key (ID_ESTADO_VENDEDOR)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   ID_FACTURA           INT4                 not null,
   ID_VENDEDOR          INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   ID_DETALLE_VENTA     INT4                 null,
   ID_PROMOCION         INT4                 null,
   DESCUENTO_FACTURA    DECIMAL              null,
   TOTAL_FACTURA        FLOAT8               null,
   FECHA_FACTURA        DATE                 null,
   PRECIO_FINAL_DESC_FACTURA FLOAT8               null,
   constraint PK_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   ID_DATO_PAGO         INT4                 not null,
   ID_VENDEDOR          INT4                 null,
   ID_PAGO              INT4                 null,
   HORA_EXTRA           FLOAT8               null,
   constraint PK_PAGO primary key (ID_DATO_PAGO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PRODUCTO          INT4                 not null,
   ID_DESCRIPCION       INT4                 null,
   UNIDAD_PRODUCTO      INT4                 null,
   NOMBRE_PRODUCTO      VARCHAR(40)          null,
   COSTO_PRODUCTO       FLOAT8               null,
   PRECIO_PRODUCTO      FLOAT8               null,
   FECHA_VENCIM_PRODUCTO DATE                 null,
   STOCK_PRODUCTO       INT4                 null,
   constraint PK_PRODUCTO primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Table: PROMOCION                                             */
/*==============================================================*/
create table PROMOCION (
   ID_PROMOCION         INT4                 not null,
   ID_SUCURSAL          INT4                 not null,
   FECHA_INICIO_PROMOCION DATE                 null,
   FECHA_FIN_PROMOCION  DATE                 null,
   CANT_PROD_PROMOCION  FLOAT8               null,
   PRECIO_FIN_PROMOCION FLOAT8               null,
   constraint PK_PROMOCION primary key (ID_PROMOCION)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   ID_PROVEEDOR         INT4                 not null,
   RAZON_SOCIAL_PROVEEDOR VARCHAR(40)          null,
   DIRECCION_PROVEEDOR  VARCHAR(40)          null,
   TELEFONO_PROVEEDOR   VARCHAR(40)          null,
   constraint PK_PROVEEDOR primary key (ID_PROVEEDOR)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   ID_SUCURSAL          INT4                 not null,
   DIRECCION_SUCURSAL   VARCHAR(50)          null,
   TELEFONO_SUCURSAL    VARCHAR(13)          null,
   constraint PK_SUCURSAL primary key (ID_SUCURSAL)
);

/*==============================================================*/
/* Table: SUCURSAL_PROVEEDOR                                    */
/*==============================================================*/
create table SUCURSAL_PROVEEDOR (
   ID_PROVEEDOR         INT4                 not null,
   ID_SUCURSAL          INT4                 not null,
   constraint PK_SUCURSAL_PROVEEDOR primary key (ID_PROVEEDOR, ID_SUCURSAL)
);

/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
   ID_VENDEDOR          INT4                 not null,
   ID_SUCURSAL          INT4                 not null,
   ID_ESTADO_VENDEDOR   INT4                 not null,
   CEDULA_VENDEDOR      VARCHAR(16)          null,
   NOMBRE_VENDEDOR      VARCHAR(40)          null,
   APELLIDOS_VENDEDOR   VARCHAR(40)          null,
   DIRECCION_VENDEDOR   VARCHAR(40)          null,
   FECHA_NACIMIENTO_VENDEDOR DATE                 null,
   FECHA_INGRESO_VENDEDOR DATE                 null,
   constraint PK_VENDEDOR primary key (ID_VENDEDOR)
);

alter table DETALLE_VENTA
   add constraint FK_DETALLE__PRODUCTO__PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_CLIENTE_F_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_PROMO_FAC_PROMOCIO foreign key (ID_PROMOCION)
      references PROMOCION (ID_PROMOCION)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_VENDEDOR__VENDEDOR foreign key (ID_VENDEDOR)
      references VENDEDOR (ID_VENDEDOR)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_VENTA_DET_DETALLE_ foreign key (ID_DETALLE_VENTA)
      references DETALLE_VENTA (ID_DETALLE_VENTA)
      on delete restrict on update restrict;

alter table PAGO
   add constraint FK_PAGO_PAGO_DATO_DATO_PAG foreign key (ID_PAGO)
      references DATO_PAGO (ID_PAGO)
      on delete restrict on update restrict;

alter table PAGO
   add constraint FK_PAGO_PAGO_VEND_VENDEDOR foreign key (ID_VENDEDOR)
      references VENDEDOR (ID_VENDEDOR)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_PRODUCTO__DESCRIP_ foreign key (ID_DESCRIPCION)
      references DESCRIP_PRODUCTO (ID_DESCRIPCION)
      on delete restrict on update restrict;

alter table PROMOCION
   add constraint FK_PROMOCIO_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_SUCURSAL__PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDOR (ID_PROVEEDOR)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_ESTADO_VE_ESTADO_V foreign key (ID_ESTADO_VENDEDOR)
      references ESTADO_VENDEDOR (ID_ESTADO_VENDEDOR)
      on delete restrict on update restrict;

alter table VENDEDOR
   add constraint FK_VENDEDOR_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL)
      on delete restrict on update restrict;

