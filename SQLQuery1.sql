CREATE DATABASE INMOBILIARIA;
USE INMOBILIARIA
/*==============================================================*/
/* Table: INMUEBLE                                              */
/*==============================================================*/
CREATE TABLE  INMUEBLE (
   ID_INMUEBLE         int                  not null identity(1,1),
   ESTADO              char(10)             not null,
   DISPONIBLE           bit                 not null,
   NUM_INMUEBLE         char(50)            not null,
   COD_CATASTRAL        char(50)            not null,
   NUM_MATRICULA        char(50)            not null,
   NUM_FOLIO            char(50)            not null,
   DETALLE              char(50)            null,
   REFERENCIA           char(50)            not null,

   constraint PK_INMUEBLE primary key nonclustered (ID_INMUEBLE)
)
go
/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   ID_UBICACION                   int                  not null,
   UBICACION_MAPS                 char(30)             not null,
   CALLE_PRINCIPAL                char(30)             not null,
   CALLES_COLINDANTES             char(50)             not null,
   ZONA                           Char(20)             not null,
   REFERENCIA                     char(50)             null,
   constraint PK_UBICACION primary key nonclustered (ID_UBICACION)
)
go
/*==============================================================*/
/* Table: DOCUMENTACION                                             */
/*==============================================================*/
create table DOCUMENTACION (
   ID_DOCUMENTACION         int                  not null,
   ESCRITURA_COMPRA_VENTA   bit                  not null,  
   CERTIFICADO_ALODIAL      bit                  not null,
   CERTIFICADO_CATASTRO     bit                  not null,
   PLANO_USO_SUELO          bit                  not null,
   COMPROBANTE_PAGO_IMPUESTO_ANUAL bit           not null,
   DETALLE_LOG              Char(256)            not null,
   constraint PK_DOCUMENTACION primary key nonclustered (ID_DOCUMENTACION)
)
go
/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         int                  not null identity(1,1),
   NOMBRE_EMPLEADO      char(50)             not null,
   DIRECCION_EMPLEADO   char(100)            not null,
   constraint PK_EMPLEADO primary key nonclustered (COD_EMPLEADO)
)
go
/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   COD_SUCURSAL         int                  not null identity(1,1),
   DIRECCION_SUCURSAL   char(100)            not null,
   constraint PK_SUCURSAL primary key nonclustered (COD_SUCURSAL)
)
go
/*==============================================================*/
/* Table: SALARIO                                               */
/*==============================================================*/
create table SALARIO (
   COD_SALARIO          int                  not null,
   COD_EMPLEADO         int                  not null,
   MES_DE_PAGO          char(20)             not null,
   FECHA_DE_EMISION     datetime             not null,
   SUELDO_FIJO          money                not null,
   constraint PK_SALARIO primary key nonclustered (COD_SALARIO)
)
go
/*==============================================================*/
/* Table: REQUERIMIENTO GENERALES                                        */
/*==============================================================*/
create table REQUERIMIENTO_GENERALES (
   COD_REQUERIMIENTO_GENERAL    int                  not null identity(1,1),
   COD_CLIENTE                  int                          not null,
   COD_EMPLEADO                 int                          not null,
   DETALLE_DE_REQUERIMIENTO     char(100)                    null,
   FECHA_DE_REGISTRO            datetime                     not null,
   PRECIO_MINIMO                money                            null,
   PRECIO_MAXIMO                money                            null,
   ESTADO_DE_INMUEBLE           char(20)                     not null,
   TIPO_DE_INMUEBLE             char(20)                     not null,
   ZONA_DE_PREFERENCIA          char(50)                     not null,
   TIPO_DE_CONTRATO             char(20)                     not null,
   constraint PK_REQUERIMIENTO primary key nonclustered (COD_REQUERIMIENTO_GENERAL)
)
go
/*==============================================================*/
/* Table: PROPIETARIO                                           */
/*==============================================================*/
create table PROPIETARIO (
   COD_PROPIETARIO      int                  not null identity(1,1),
   NOMBRE               char(50)             not null,
   DIRECCION_PROPIETARIO char(100)           not null,
   constraint PK_PROPIETARIO primary key nonclustered (COD_PROPIETARIO)
)
go
/*==============================================================*/
/* Table: MEDIO_DE_DIFUSION                                     */
/*==============================================================*/
create table MEDIO_DE_DIFUSION (
   ID_MEDIO            int                  not null identity(1,1),
   TIPO                char(50)             not null,
   constraint PK_MEDIO_DE_DIFUSION primary key nonclustered (ID_MEDIO)
)
go
/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          int                  not null identity(1,1),
   NOMBRE_CLIENTE       char(100)            not null,
   DIRECCION_CLIENTE    char(100)            not null,
   constraint PK_CLIENTE primary key nonclustered (COD_CLIENTE)
)
go
/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   ID_CONTRATO          int                  not null identity(1,1),
   COD_INMUEBLE         int                  not null,
   PAGO                 money                not null,
   FECHA_INI            datetime             not null,
   FECHA_FIN            datetime             not null,
   TIPO_CONTRATO        char(100)            not null,
   DETALLE_CONTRATO     char(100)            null,
   constraint PK_CONTRATO primary key nonclustered (ID_CONTRATO)
)
go
/*==============================================================*/
/* Table: VIDEO                                    */
/*==============================================================*/
create table VIDEO (
   ID_VIDEO             int                  not null identity(1,1),
   COD_INMUEBLE         int                  not null,
   VIDEO                char(100)            null,
   DETALLE              char(50)             null
   constraint PK_VIDEO primary key nonclustered (ID_VIDEO)
)
go
/*==============================================================*/
/* Table: FOTO                                    */
/*==============================================================*/
create table FOTO (
   ID_FOTO              int                  not null identity(1,1),
   COD_INMUEBLE         int                  not null,
   IMAGEN               char(100)            null,
   DETALLE              char(50)             null
   constraint PK_FOTO primary key nonclustered (ID_FOTO)
)
go
/*==============================================================*/
/* Table: PRECIO                                                */
/*==============================================================*/
create table PRECIO (
   ID_PRECIO           int                  not null,
   ID_INMUEBLE         int                  not null,
   FECHA               datetime             not null,
   MONTO               money                not null,
   constraint PK_PRECIO primary key nonclustered (ID_PRECIO)
)
go
/*==============================================================*/
/* Table: TRANSACCION                                              */
/*==============================================================*/
create table TRANSACCION (
   COD_TRANSACCION          int                  not null,
   FECHA                    datetime             not null,
   MONTO                    money                not null,
   COM_SUCUR                money                not null,
   COM_EMPLEADO             money                not null,
   constraint PK_PRECIO primary key nonclustered (COD_TRANSACCION)
)
go










