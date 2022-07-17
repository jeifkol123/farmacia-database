
/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE 
(
   ID_CLIENTE           INTEGER              not null,
   CEDULA_CLIENTE       VARCHAR2(10),
   NOMBRE_CLIENTE       VARCHAR2(40),
   APELLIDOP_CLIENTE    VARCHAR2(40),
   APELLIDOM_CLIENTE    VARCHAR2(40),
   TELEFONO_CLIENTE     VARCHAR2(13),
   DIRECCION_CLIENTE    VARCHAR2(40),
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: DATO_PAGO                                             */
/*==============================================================*/
create table DATO_PAGO 
(
   ID_PAGO              INTEGER              not null,
   PAGO_HORA            FLOAT(7)             not null,
   constraint PK_DATO_PAGO primary key (ID_PAGO)
);

/*==============================================================*/
/* Table: DESCRIP_PRODUCTO                                      */
/*==============================================================*/
create table DESCRIP_PRODUCTO 
(
   ID_DESCRIPCION       INTEGER              not null,
   CATEGORIA_DESCRIP    VARCHAR2(30),
   CANTIDAD_DESCRIP     VARCHAR2(10),
   PRESENTACION_DESCRIP VARCHAR2(60),
   COMPUESTOS_DESCRIP   VARCHAR2(100),
   SIMILAR_PRODUCTO     VARCHAR2(100),
   constraint PK_DESCRIP_PRODUCTO primary key (ID_DESCRIPCION)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA 
(
   ID_DETALLE_VENTA     INTEGER              not null,
   ID_PRODUCTO          INTEGER              not null,
   ID_FACTURA           INTEGER,
   CANTIDAD_VENTA       INTEGER,
   PRECIO_PRODUCTO      FLOAT(16),
   TOTAL_DETALLE_VENTA  FLOAT(16),
   constraint PK_DETALLE_VENTA primary key (ID_DETALLE_VENTA)
);

/*==============================================================*/
/* Table: ESTADO_VENDEDOR                                       */
/*==============================================================*/
create table ESTADO_VENDEDOR 
(
   ID_ESTADO_VENDEDOR   INTEGER              not null,
   ESTADO_VENDEDOR      VARCHAR2(20),
   constraint PK_ESTADO_VENDEDOR primary key (ID_ESTADO_VENDEDOR)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA 
(
   ID_FACTURA           INTEGER              not null,
   ID_VENDEDOR          INTEGER              not null,
   ID_CLIENTE           INTEGER              not null,
   ID_PROMOCION         INTEGER,
   DESCUENTO_FACTURA    NUMBER,
   TOTAL_FACTURA        FLOAT(16),
   FECHA_FACTURA        DATE,
   PRECIO_FINAL_DESC_FACTURA FLOAT(16),
   constraint PK_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO 
(
   ID_DATO_PAGO         INTEGER              not null,
   ID_VENDEDOR          INTEGER,
   ID_PAGO              INTEGER,
   HORA_EXTRA           FLOAT(16),
   constraint PK_PAGO primary key (ID_DATO_PAGO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO 
(
   ID_PRODUCTO          INTEGER              not null,
   ID_DESCRIPCION       INTEGER,
   UNIDAD_PRODUCTO      INTEGER,
   NOMBRE_PRODUCTO      VARCHAR2(40),
   COSTO_PRODUCTO       FLOAT(16),
   PRECIO_PRODUCTO      FLOAT(16),
   FECHA_VENCIM_PRODUCTO DATE,
   STOCK_PRODUCTO       INTEGER,
   constraint PK_PRODUCTO primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Table: PROMOCION                                             */
/*==============================================================*/
create table PROMOCION 
(
   ID_PROMOCION         INTEGER              not null,
   ID_SUCURSAL          INTEGER              not null,
   FECHA_INICIO_PROMOCION DATE,
   FECHA_FIN_PROMOCION  DATE,
   CANT_PROD_PROMOCION  FLOAT(16),
   PRECIO_FIN_PROMOCION FLOAT(16),
   constraint PK_PROMOCION primary key (ID_PROMOCION)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR 
(
   ID_PROVEEDOR         INTEGER              not null,
   RAZON_SOCIAL_PROVEEDOR VARCHAR2(40),
   DIRECCION_PROVEEDOR  VARCHAR2(40),
   TELEFONO_PROVEEDOR   VARCHAR2(40),
   constraint PK_PROVEEDOR primary key (ID_PROVEEDOR)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL 
(
   ID_SUCURSAL          INTEGER              not null,
   DIRECCION_SUCURSAL   VARCHAR2(50),
   TELEFONO_SUCURSAL    VARCHAR2(13),
   constraint PK_SUCURSAL primary key (ID_SUCURSAL)
);

/*==============================================================*/
/* Table: SUCURSAL_PROVEEDOR                                    */
/*==============================================================*/
create table SUCURSAL_PROVEEDOR 
(
   ID_PROVEEDOR         INTEGER              not null,
   ID_SUCURSAL          INTEGER              not null,
   constraint PK_SUCURSAL_PROVEEDOR primary key (ID_PROVEEDOR, ID_SUCURSAL)
);

/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR 
(
   ID_VENDEDOR          INTEGER              not null,
   ID_SUCURSAL          INTEGER              not null,
   ID_ESTADO_VENDEDOR   INTEGER              not null,
   CEDULA_VENDEDOR      VARCHAR2(16),
   NOMBRE_VENDEDOR      VARCHAR2(40),
   APELLIDOS_VENDEDOR   VARCHAR2(40),
   DIRECCION_VENDEDOR   VARCHAR2(40),
   FECHA_NACIMIENTO_VENDEDOR DATE,
   FECHA_INGRESO_VENDEDOR DATE,
   constraint PK_VENDEDOR primary key (ID_VENDEDOR)
);

alter table DETALLE_VENTA
   add constraint FK_DETALLE__PRODUCTO__PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO);

alter table DETALLE_VENTA
   add constraint FK_DETALLE__VENTA_DET_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA);

alter table FACTURA
   add constraint FK_FACTURA_CLIENTE_F_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE);

alter table FACTURA
   add constraint FK_FACTURA_PROMO_FAC_PROMOCIO foreign key (ID_PROMOCION)
      references PROMOCION (ID_PROMOCION);

alter table FACTURA
   add constraint FK_FACTURA_VENDEDOR__VENDEDOR foreign key (ID_VENDEDOR)
      references VENDEDOR (ID_VENDEDOR);

alter table PAGO
   add constraint FK_PAGO_PAGO_DATO_DATO_PAG foreign key (ID_PAGO)
      references DATO_PAGO (ID_PAGO);

alter table PAGO
   add constraint FK_PAGO_PAGO_VEND_VENDEDOR foreign key (ID_VENDEDOR)
      references VENDEDOR (ID_VENDEDOR);

alter table PRODUCTO
   add constraint FK_PRODUCTO_PRODUCTO__DESCRIP_ foreign key (ID_DESCRIPCION)
      references DESCRIP_PRODUCTO (ID_DESCRIPCION);

alter table PROMOCION
   add constraint FK_PROMOCIO_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL);

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_SUCURSAL__PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDOR (ID_PROVEEDOR);

alter table SUCURSAL_PROVEEDOR
   add constraint FK_SUCURSAL_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL);

alter table VENDEDOR
   add constraint FK_VENDEDOR_ESTADO_VE_ESTADO_V foreign key (ID_ESTADO_VENDEDOR)
      references ESTADO_VENDEDOR (ID_ESTADO_VENDEDOR);

alter table VENDEDOR
   add constraint FK_VENDEDOR_SUCURSAL__SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSAL (ID_SUCURSAL);

