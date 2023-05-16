CREATE DATABASE INMOBILIARIA;
USE INMOBILIARIA
/*==============================================================*/
/* Table: INMUEBLE                                              */
/*==============================================================*/
CREATE TABLE  INMUEBLE (
   ID_INMUEBLE         int                  not null,
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
   constraint PK_UBICACION primary key (ID_UBICACION)
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
   constraint PK_DOCUMENTACION primary key (ID_DOCUMENTACION)
)
go
/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         int                  not null,
   NOMBRE_EMPLEADO      char(50)             not null,
   DIRECCION_EMPLEADO   char(100)            not null,
   constraint PK_EMPLEADO primary key nonclustered (COD_EMPLEADO)
)
go
/*==============================================================*/
/* Table: TELEFONO_EMPLEADO                                           */
/*==============================================================*/
create table TELEFONO_EMPLEADO (
   COD_TELF_EMPL           int                  not null,
   TELF_EMPL               char(8)              not null,
   DETALLE_TELF_EMPL       char(20)             not null,
   constraint PK_PROPIETARIO primary key  (COD_TELF_EMPL)
)
go
/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   COD_SUCURSAL         int                  not null,
   DIRECCION_SUCURSAL   char(100)            not null,
   constraint PK_SUCURSAL primary key nonclustered (COD_SUCURSAL)
)
go
/*==============================================================*/
/* Table: TELEFONO_SUCURSAL                                         */
/*==============================================================*/
create table TELEFONO_SUCURSAL (
   COD_TELF_SUC           int                  not null,
   TELF_SUC               char(8)              not null,
   DETALLE_TELF_SUC       char(20)             not null,
   constraint PK_PROPIETARIO primary key (COD_TELF_SUC)
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
   constraint PK_SALARIO primary key (COD_SALARIO)
)
go
/*==============================================================*/
/* Table: REQUERIMIENTO GENERALES                                        */
/*==============================================================*/
create table REQUERIMIENTO_GENERALES (
   COD_REQUERIMIENTO_GENERAL    int                          not null,
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
   COD_PROPIETARIO      int                  not null,
   NOMBRE               char(50)             not null,
   DIRECCION_PROPIETARIO char(100)           not null,
   constraint PK_PROPIETARIO primary key nonclustered (COD_PROPIETARIO)
)
go
/*==============================================================*/
/* Table: TELEFONO_PROPIETARIO                                           */
/*==============================================================*/
create table TELEFONO_PROPIETARIO (
   COD_TELF_PR           int                  not null ,
   TELF_PR               char(8)              not null,
   DETALLE_TELF_PR       char(20)             not null,
   constraint PK_PROPIETARIO primary key(COD_TELF_PR)
)
go
/*==============================================================*/
/* Table: MEDIO_DE_DIFUSION                                     */
/*==============================================================*/
create table MEDIO_DE_DIFUSION (
   ID_MEDIO            int                  not null,
   TIPO                char(50)             not null,
   constraint PK_MEDIO_DE_DIFUSION primary key nonclustered (ID_MEDIO)
)
go
/*==============================================================*/
/* Table: TELEFONO_MEDIO_DIF                                           */
/*==============================================================*/
create table TELEFONO_MEDIO_DIF (
   COD_TELF_MD           int                  not null,
   TELF_MD               char(8)              not null,
   DETALLE_TELF_MD       char(20)             not null,
   constraint PK_PROPIETARIO primary key(COD_TELF_MD)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          int                  not null,
   NOMBRE_CLIENTE       char(100)            not null,
   DIRECCION_CLIENTE    char(100)            not null,
   constraint PK_CLIENTE primary key nonclustered (COD_CLIENTE)
)
go
/*==============================================================*/
/* Table: TELEFONO_CLIENTE                                           */
/*==============================================================*/
create table TELEFONO_CLIENTE (
   COD_TELF_CL           int                not null,
   TELF_CL               char(8)            not null,
   DETALLE_TELF_CL       char(20)           not null,
   constraint PK_PROPIETARIO primary key (COD_TELF_CL)
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
/*==============================================================*/
/* Table: VIVIENDA                                              */
/*==============================================================*/
create table VIVIENDA (
   COD_VIVIENDA             int                  not null,
   NUM_DORMITORIOS          int                  not null,
   COM_SUCUR                int                  not null,
   COM_EMPLEADO             int                  not null,
   NUM_BAÑOS                int                  not null,
   SALA                     bit                  not null,
   COMEDOR                  bit                  not null,
   COCINA                   bit                  not null,
   constraint PK_PRECIO primary key nonclustered (COD_VIVIENDA)
)
go
/*==============================================================*/
/* CASA                                              */
/*==============================================================*/
create table CASA (
   COD_CASA                            int                  not null,
   SUPERFICIE_DE_CONSTRUCCION          float                not null,
   NUM_PLANTAS                         int                  not null,
   PATIO                               bit                  not null,
   GARAJE                              bit                  not null,
   CAPACIDAD_GARAJE                    int                  not null,
   DETALLE_CASA                        char(50)             not null,
   constraint PK_PRECIO primary key nonclustered (COD_CASA)
)
go
/*==============================================================*/
/* DEPARTAMENTO                                            */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DEPARTAMENTO                            int                  not null,
   NUM_PISO                                    int                  not null,
   PERMISO_MASCOTAS                            bit                  not null,
   NUM_ESTACIONAMIENTO                         char                 not null,
   DETALLE_DEPARTAMENTO                        char(40)             not null,
   constraint PK_PRECIO primary key nonclustered (COD_DEPARTAMENTO)
)
go
/*==============================================================*/
/* GARZONIER                                            */
/*==============================================================*/
create table GARZONIER (
   COD_GARZONIER                               int                  not null,
   AMUEBLADO                                   bit                  not null,
   CAP_MAX_INQ                                 int                  not null,
   DETALLE_GARZONIER                           char(30)             not null,
   constraint PK_PRECIO primary key nonclustered (COD_GARZONIER)
)
go
/*==============================================================*/
/* LOTE                                            */
/*==============================================================*/
create table LOTE (
   COD_LOTE                                    int                    not null,
   USU_ACTUAL                                  char(30)               not null,
   TOPOGRAFIA                                  char(20)               not null,
   DETALLE_CASA                                char(40)               not null,
   constraint PK_PRECIO primary key(COD_LOTE)
)
go
/*==============================================================*/
/* SERVICIO_BASICO                                           */
/*==============================================================*/
create table SERVICIO_BASICO (
   COD_SERVICIO_BASICO                         int                     not null,
   TIPO_SERVICIO_BASICO                        char(20)                not null,
   DETALLE_CASA                                char(40)                not null,
   constraint PK_PRECIO primary key (COD_SERVICIO_BASICO)
)
go
/*==============================================================*/
/* REQUERIMIENTO_CUANTITATIVO                                           */
/*==============================================================*/
create table REQUERIMIENTO_CUANTITATIVO (
   COD_REQ_CUANT                         int                     not null,
   REQUERIMIENTO                          char(20)                not null,
   CANTIDAD_MIN                           int                     not null,
   CANTIDAD_MAX                           int                     not null,
   constraint PK_PRECIO primary key (COD_REQ_CUANT)
)
go
/*==============================================================*/
/* REQUERIMIENTO_CUALITATIVO                                           */
/*==============================================================*/
create table REQUERIMIENTO_CUALITATIVO (
   COD_REQ_CUALIT                        int                     not null,
   REQUERIMIENTO                         char(20)                not null,
   VALOR                                 char(20)                not null,
   constraint PK_PRECIO primary key(COD_REQ_CUALIT)
)
go
/*==============================================================*/
/* POSEE                                           */
/*==============================================================*/
create table POSEE (
   COD_POSEE                        int                     not null,
   FECHA_REGISTRO                   datetime                not null,
   PORCENTAJE_DE_PR                 float                   not null,
   constraint PK_PRECIO primary key (COD_POSEE)
)
go
/*==============================================================*/
/* OFERTA                                           */
/*==============================================================*/
create table OFERTA (
   COD_OFERTA                        int                     not null,
   MONTO_OFERTA                      money                   not null,
   FECHA_INI_OFERTA                  datetime                not null,
   FECHA_FIN_OFERTA                  datetime                not null,
   TIPO_OFERTA                       char(20)                not null,         
   constraint PK_PRECIO primary key (COD_OFERTA)
)
go
/*==============================================================*/
/* COINCIDENCIA                                           */
/*==============================================================*/
create table COINCIDENCIA (
   COD_COINCIDENCIA                   int                     not null,
   COINCIDENCIAS                      int                     not null,
   FECHA_COINCIDENCIA                 datetime                not null,
   constraint PK_PRECIO primary key  (COD_COINCIDENCIA)
)
go











