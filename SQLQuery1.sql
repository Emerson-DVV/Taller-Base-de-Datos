--CREATE DATABASE INMOBILIARIA
USE INMOBILIARIA
/*==============================================================*/
/* Table: INMUEBLE                                              */
/*==============================================================*/
CREATE TABLE  INMUEBLE (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   superfice            float                not null,
   COD_DIRECCION        int                  not null,
   ESTADO				char(10)             not null,
   DISPONIBLE           bit					 not null,
   NUM_INMUEBLE         char(50)             not null,
   COD_CATASTRAL        char(50)             not null,
   NUM_MATRICULA        char(50)             not null,
   NUM_FOLIO            char(50)             not null,
   DETALLE              char(50)             null,
   REFERENCIA           char(50)             not null,

   constraint PK_INMUEBLE primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE)
)
go
/*==============================================================*/
/* Index: POSEE___FK                                            */
/*==============================================================*/
create index POSEE___FK on INMUEBLE (
COD_DIRECCION ASC
)
go

/*==============================================================*/
/* Index: TIENE__FK                                             */
/*==============================================================*/
create index TIENE__FK on INMUEBLE (
COD_DOCUMENTACION ASC
)
go

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   COD_DIRECCION                  int                  not null,
   UBICACION_MAPS                 char(30)             not null,
   CALLE_PRINCIPAL                char(30)             not null,
   CALLES_COLINDANTES             char(50)             not null,
   ZONA                           Char(20)             not null,
   REFERENCIA                     char(50)             null,
   constraint PK_DIRECCION primary key nonclustered (COD_DIRECCION)
)
go
/*==============================================================*/
/* Table: DOCUMENTACION                                             */
/*==============================================================*/
create table DOCUMENTACION (
   COD_DOCUMENTACION        int                  not null,
   ESCRITURA_COMPRA_VENTA   bit                  not null,  
   CERTIFICADO_ALODIAL      bit                  not null,
   CERTIFICADO_CATASTRO     bit                  not null,
   PLANO_USO_SUELO          bit                  not null,
   COMPROBANTE_PAGO_IMPUESTO_ANUAL bit           not null,
   DETALLE_LOG              Char(256)            not null,
   constraint PK_DOCUMENTACION primary key (COD_DOCUMENTACION)
)
go
/*==============================================================*/
/* Table: VIVIENDA                                              */
/*==============================================================*/
create table VIVIENDA (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_VIVIENDA         int                  not null,
   COD_DIRECCION        int                  null,
   NUM_DORMITORIOS      int                  not null,
   COM_SUCUR            int                  not null,
   COM_EMPLEADO         int                  not null,
   NUM_BAÑOS            int                  not null,
   SALA                 bit                  not null,
   COMEDOR              bit                  not null,
   COCINA               bit                  not null,
   constraint PK_VIVIENDA primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA)
)
go
/*==============================================================*/
/* Index: ES_UN_TIPO_DE3_FK                                     */
/*==============================================================*/
create index ES_UN_TIPO_DE3_FK on VIVIENDA (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* CASA                                              */
/*==============================================================*/
create table CASA (
   COD_DOCUMENTACION					int                  not null,
   COD_INMUEBLE							int                  not null,
   COD_VIVIENDA							int                  not null,
   COD_CASA								int                  not null,
   COD_DIRECCION						int                  null,
   SUPERFICIE_DE_CONSTRUCCION			float                not null,
   NUM_PLANTAS							int                  not null,
   PATIO								bit                  not null,
   GARAJE								bit                  not null,
   CAPACIDAD_GARAJE						int                  not null,
   DETALLE_CASA							char(50)             not null,
   constraint PK_CASA primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_CASA)
)
go
/*==============================================================*/
/* Index: PUEDE_SER2_FK                                         */
/*==============================================================*/
create index PUEDE_SER2_FK on CASA (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC,
COD_VIVIENDA ASC
)
go
/*==============================================================*/
/* DEPARTAMENTO                                            */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DOCUMENTACION					int                  not null,
   COD_INMUEBLE							int                  not null,
   COD_VIVIENDA							int                  not null,
   COD_DEPARTAMENTO						int                  not null,
   COD_DIRECCION						int                  null,
   NUM_PISO								int                  not null,
   PERMISO_MASCOTAS						bit                  not null,
   NUM_ESTACIONAMIENTO					char                 not null,
   DETALLE_DEPARTAMENTO					char(40)             not null,
   constraint PK_DEPARTAMENTO primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_DEPARTAMENTO)
)
go
/*==============================================================*/
/* Index: PUEDE_SER_FK                                          */
/*==============================================================*/
create index PUEDE_SER_FK on DEPARTAMENTO (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC,
COD_VIVIENDA ASC
)
go
/*==============================================================*/
/* GARZONIER                                            */
/*==============================================================*/
create table GARZONIER (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_GARZONIER        int                  not null,
   COD_DIRECCION        int                  null,
   AMUEBLADO            bit                  not null,
   CAP_MAX_INQ          int                  not null,
   DETALLE_GARZONIER    char(30)             not null,
   constraint PK_GARZONIER primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_GARZONIER)
)
go
/*==============================================================*/
/* Index: ES_UN_TIPO_DE2_FK                                     */
/*==============================================================*/
create index ES_UN_TIPO_DE2_FK on GARZONIER (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* LOTE                                            */
/*==============================================================*/
create table LOTE (
   COD_DOCUMENTACION    int                   not null,
   COD_INMUEBLE         int                   not null,
   COD_LOTE             int                   not null,
   COD_DIRECCION        int                   null,
   USU_ACTUAL           char(30)              not null,
   TOPOGRAFIA           char(20)              not null,
   DETALLE_CASA         char(40)              not null,
   constraint PK_LOTE primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_LOTE)
)
go
/*==============================================================*/
/* Index: ES_UN_TIPO_DE_FK                                      */
/*==============================================================*/
create index ES_UN_TIPO_DE_FK on LOTE (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* SERVICIO_BASICO                                           */
/*==============================================================*/
create table SERVICIO_BASICO (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_SERV_BASC        int                  not null,
   TIPO_DE_SERVICIO_BASICO char(20)          not null,
   DETALLE_SERV_BASC    char(40)             null,
   constraint PK_SERVICIO_BASICO primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE, COD_SERV_BASC)
)
go
/*==============================================================*/
/* Index: INMB_CUENTA_CON_SERV_BASC_FK                          */
/*==============================================================*/
create index INMB_CUENTA_CON_SERV_BASC_FK on SERVICIO_BASICO (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         int                  not null,
   COD_SUCURSAL         int                  not null,
   NOMBRE_EMPLEADO      char(50)             not null,
   DIRECCION_EMPLEADO   char(100)            not null,
   constraint PK_EMPLEADO primary key nonclustered (COD_EMPLEADO)
)
go
/*==============================================================*/
/* Index: TRABAJA_EN_FK                                         */
/*==============================================================*/
create index TRABAJA_EN_FK on EMPLEADO (
COD_SUCURSAL ASC
)
go
/*==============================================================*/
/* Table: TELEFONO_EMPLEADO                                           */
/*==============================================================*/
create table TELEFONO_EMPLEADO (
   COD_EMPLEADO         int                  not null,
   COD_TELF_EMPL        int                  not null,
   TELF_EMPL            char(8)              not null,
   DETALLE_TELF_EMPL    char(20)             not null,
   constraint PK_TELEFONO_EMPLEADO primary key nonclustered (COD_EMPLEADO, COD_TELF_EMPL)
)
go
/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on TELEFONO_EMPLEADO (
COD_EMPLEADO ASC
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
   COD_SUCURSAL         int                  not null,
   COD_TELF_SUC         int                  not null,
   TELF_SUC             char(8)              not null,
   DETALLE_TELF_SUC     char(20)             not null,
   constraint PK_TELEFONO_SUCURSAL primary key nonclustered (COD_SUCURSAL, COD_TELF_SUC)
)
go
/*==============================================================*/
/* Index: TIENEIO_FK                                            */
/*==============================================================*/
create index TIENEIO_FK on TELEFONO_SUCURSAL (
COD_SUCURSAL ASC
)
go
/*==============================================================*/
/* Table: SALARIO                                               */
/*==============================================================*/
create table SALARIO (
   COD_EMPLEADO         int                  not null,
   COD_SALARIO          int                  not null,
   MES_DE_PAGO          char(20)             not null,
   FECHA_DE_EMISION     datetime             not null,
   SUELDO_FIJO          money                not null,
   constraint PK_SALARIO primary key nonclustered (COD_EMPLEADO, COD_SALARIO)
)
go
/*==============================================================*/
/* Index: RECIBE_FK                                             */
/*==============================================================*/
create index RECIBE_FK on SALARIO (
COD_EMPLEADO ASC
)
go
/*==============================================================*/
/* Table: REQUERIMIENTO GENERALES                                        */
/*==============================================================*/
create table REQUERIMIENTO_GENERAL (
   COD_REQUERIMIENTO			int							 not null,
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
   constraint PK_REQUERIMIENTO primary key nonclustered (COD_REQUERIMIENTO)
)
go
/*==============================================================*/
/* Index: REALIZA_FK                                            */
/*==============================================================*/
create index REALIZA_FK on REQUERIMIENTO_GENERAL (
COD_CLIENTE ASC
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
   COD_PROPIETARIO      int                  not null,
   COD_TELF_PR          int                  not null,
   TELF_PR              char(8)              not null,
   DETALLE_TELF_PR      char(20)             not null,
   constraint PK_TELEFONO_PROPIETARIO primary key nonclustered (COD_PROPIETARIO, COD_TELF_PR)
)
go
/*==============================================================*/
/* Index: FEWA_FK                                               */
/*==============================================================*/
create index FEWA_FK on TELEFONO_PROPIETARIO (
COD_PROPIETARIO ASC
)
go
/*==============================================================*/
/* Table: MEDIO_DE_DIFUSION                                     */
/*==============================================================*/
create table MEDIO_DE_DIFUSION (
   COD_MD              char(10)             not null,
   COD_OFERTA          int                  not null,
   TIPO                char(50)             not null,
   DETALLE_MD           char(30)             null,
   constraint PK_MEDIO_DE_DIFUSION primary key nonclustered (COD_MD)
)
go
/*==============================================================*/
/* Index: DIFUNDE_FK                                            */
/*==============================================================*/
create index DIFUNDE_FK on MEDIO_DE_DIFUSION (
COD_OFERTA ASC
)
go

/*==============================================================*/
/* Table: TELEFONO_MEDIO_DIF                                           */
/*==============================================================*/
create table TELEFONO_MEDIO_DIF (
   COD_MD               char(10)             not null,
   COD_TELF_MD          int                  not null,
   TELF_MD              char(8)              not null,
   DETALLE_TELF_MD      char(20)             not null,
   constraint PK_TELEFONO_MEDIO_DIF primary key nonclustered (COD_MD, COD_TELF_MD)
)
go
/*==============================================================*/
/* Index: TIENEJIUTI_FK                                         */
/*==============================================================*/
create index TIENEJIUTI_FK on TELEFONO_MEDIO_DIF (
COD_MD ASC
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
   COD_CLIENTE          int                  not null,
   COD_TELF_CL          int                  not null,
   TELF_CL              char(8)              not null,
   DETALLE_TELF_CL       char(20)           not null,
   constraint PK_TELEFONO_CLIENTE primary key nonclustered (COD_CLIENTE, COD_TELF_CL)
)
go
/*==============================================================*/
/* Index: CUENTA_CON_FK                                         */
/*==============================================================*/
create index CUENTA_CON_FK on TELEFONO_CLIENTE (
COD_CLIENTE ASC
)
go

/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   COD_CONTRATO          int                  not null identity(1,1),
   COD_OFERTA           int                  not null,
   PAGO                 money                not null,
   FECHA_INI            datetime             not null,
   FECHA_FIN            datetime             not null,
   TIPO_CONTRATO        char(100)            not null,
   DETALLE_CONTRATO     char(100)            null,
   constraint PK_CONTRATO primary key nonclustered (COD_CONTRATO)
)
go
/*==============================================================*/
/* Index: GENERA__FK                                            */
/*==============================================================*/
create index GENERA__FK on CONTRATO (
COD_OFERTA ASC
)
go
/*==============================================================*/
/* Table: VIDEO                                    */
/*==============================================================*/
create table VIDEO (
   COD_VIDEO            int                  not null identity(1,1),
   COD_OFERTA           int                  not null,
   VIDEO                char(100)            null,
   DETALLE              char(50)             null
   constraint PK_VIDEO primary key nonclustered (COD_VIDEO)
)
go
/*==============================================================*/
/* Index: TIEFEA_FK                                             */
/*==============================================================*/
create index TIEFEA_FK on VIDEO (
COD_OFERTA ASC
)
go
/*==============================================================*/
/* Table: FOTO                                    */
/*==============================================================*/
create table FOTO (
   COD_FOTO             int                  not null identity(1,1),
   COD_OFERTA           int                  not null,
   IMAGEN               char(100)            null,
   DETALLE              char(50)             null
   constraint PK_FOTO primary key nonclustered (COD_FOTO)
)
go
/*==============================================================*/
/* Index: POSEEHTR_FK                                           */
/*==============================================================*/
create index POSEEHTR_FK on FOTO (
COD_OFERTA ASC
)
go
/*==============================================================*/
/* Table: PRECIO                                                */
/*==============================================================*/
create table PRECIO (
   COD_OFERTA          int                  not null,
   COD_PRECIO          int                  not null,
   FECHA               datetime             not null,
   MONTO               money                not null,
   constraint PK_PRECIO primary key nonclustered (COD_OFERTA, COD_PRECIO)
)
go
/*==============================================================*/
/* Index: TIENE___FK                                            */
/*==============================================================*/
create index TIENE___FK on PRECIO (
COD_OFERTA ASC
)
go
/*==============================================================*/
/* Table: TRANSACCION                                              */
/*==============================================================*/
create table TRANSACCION (
   COD_TRANSACCION      int                  not null,
   COD_SUCURSAL         int                  not null,
   COD_CONTRATO         int                  not null,
   FECHA                datetime             not null,
   MONTO                money                not null,
   COM_SUCUR            money                not null,
   COM_EMPLEADO         money                not null,
   constraint PK_TRANSACCION primary key nonclustered (COD_TRANSACCION)
)
go
/*==============================================================*/
/* Index: OBTIENE_FK                                            */
/*==============================================================*/
create index OBTIENE_FK on TRANSACCION (
COD_SUCURSAL ASC
)
go

/*==============================================================*/
/* Index: GENERA____FK                                          */
/*==============================================================*/
create index GENERA____FK on TRANSACCION (
COD_CONTRATO ASC
)
go

/*==============================================================*/
/* REQUERIMIENTO_CUANTITATIVO                                           */
/*==============================================================*/
create table REQUERIMIENTO_CUANTITATIVO (
   COD_REQUERIMIENTO    int						not null,
   COD_REQ_CUANT        int						not null,
   REQUERIMIENTO        char(20)                not null,
   CANTIDAD_MIN         int                     not null,
   CANTIDAD_MAX         int                     not null,
   constraint PK_REQUERIMIENTO_CUANTITATIVO primary key nonclustered (COD_REQUERIMIENTO, COD_REQ_CUANT)
)
go
/*==============================================================*/
/* Index: CONFORMADO_POR_FK                                     */
/*==============================================================*/
create index CONFORMADO_POR_FK on REQUERIMIENTO_CUANTITATIVO (
COD_REQUERIMIENTO ASC
)
go
/*==============================================================*/
/* REQUERIMIENTO_CUALITATIVO                                           */
/*==============================================================*/
create table REQUERIMIENTO_CUALITATIVO (
   COD_REQUERIMIENTO    int                  not null,
   COD_REQ_CUALIT       int                  not null,
   REQUERIMIENTO        char(20)             not null,
   VALOR                char(20)             not null,
   constraint PK_REQUERIMIENTO_CUALITATIVO primary key nonclustered (COD_REQUERIMIENTO, COD_REQ_CUALIT)
)
go
/*==============================================================*/
/* Index: CONDORMADO_POR_FK                                     */
/*==============================================================*/
create index CONDORMADO_POR_FK on REQUERIMIENTO_CUALITATIVO (
COD_REQUERIMIENTO ASC
)
go

/*==============================================================*/
/* POSEE                                           */
/*==============================================================*/
create table POSEE (
   COD_POSEE            int                  not null,
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_PROPIETARIO      int                  not null,
   FECHA_REGISTRO       datetime             not null,
   PORCENTAJE_DE_PR     float                not null,
   constraint PK_POSEE primary key (COD_POSEE)
)
go
/*==============================================================*/
/* Index: PROPIETARIO_POSEE_FK                                  */
/*==============================================================*/
create index PROPIETARIO_POSEE_FK on POSEE (
COD_PROPIETARIO ASC
)
go

/*==============================================================*/
/* Index: INMUEBLE_ESTA_FK                                      */
/*==============================================================*/
create index INMUEBLE_ESTA_FK on POSEE (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* OFERTA                                           */
/*==============================================================*/
create table OFERTA (
   COD_OFERTA           int						not null,
   COD_EMPLEADO         int						not null,
   COD_DOCUMENTACION    int						not null,
   COD_INMUEBLE         int						not null,
   MONTO_OFERTA         money                   not null,
   FECHA_INI_OFERTA     datetime                not null,
   FECHA_FIN_OFERTA     datetime                not null,
   TIPO_OFERTA          char(20)                not null,         
   constraint PK_OFERTA primary key (COD_OFERTA)
)
go
/*==============================================================*/
/* Index: CREA_FK                                               */
/*==============================================================*/
create index CREA_FK on OFERTA (
COD_EMPLEADO ASC
)
go

/*==============================================================*/
/* Index: FORMA_PARTE__FK                                       */
/*==============================================================*/
create index FORMA_PARTE__FK on OFERTA (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go
/*==============================================================*/
/* COINCIDENCIA                                           */
/*==============================================================*/
create table COINCIDENCIA (
   COD_COINCIDENCIA						int                     not null,
   COD_REQUERIMIENTO					int						not null,
   COD_OFERTA							int						not null,
   COINCIDENCIAS						int                     not null,
   FECHA_COINCIDENCIA					datetime                not null,
   constraint PK_COINCIDENCIA primary key  (COD_COINCIDENCIA)
)
go
/*==============================================================*/
/* Index: REQ_BUSCA_FK                                          */
/*==============================================================*/
create index REQ_BUSCA_FK on COINCIDENCIA (
COD_REQUERIMIENTO ASC
)
go
/*==============================================================*/
/* Index: OFERTA_COINCIDE_CON_FK                                */
/*==============================================================*/
create index OFERTA_COINCIDE_CON_FK on COINCIDENCIA (
COD_OFERTA ASC
)
go

/*==============================================================*/
/* LLAVES FORANEAS                                           */
/*==============================================================*/
alter table CASA
   add constraint FK_CASA_PUEDE_SER_VIVIENDA foreign key (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA)
      references VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA)
go

alter table COINCIDENCIA
   add constraint FK_COINCIDE_OFERTA_CO_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table COINCIDENCIA
   add constraint FK_COINCIDE_REQ_BUSCA_REQUERIM foreign key (COD_REQUERIMIENTO)
      references REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO)
go

alter table CONTRATO
   add constraint FK_CONTRATO_GENERA__OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_PUEDE_SER_VIVIENDA foreign key (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA)
      references VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_TRABAJA_E_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL)
go

alter table FOTO
   add constraint FK_FOTO_POSEEHTR_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table GARZONIER
   add constraint FK_GARZONIE_ES_UN_TIP_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table INMUEBLE
   add constraint FK_INMUEBLE_POSEE___DIRECCIO foreign key (COD_DIRECCION)
      references DIRECCION (COD_DIRECCION)
go

alter table INMUEBLE
   add constraint FK_INMUEBLE_TIENE__DOCUMENT foreign key (COD_DOCUMENTACION)
      references DOCUMENTACION (COD_DOCUMENTACION)
go

alter table LOTE
   add constraint FK_LOTE_ES_UN_TIP_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table MEDIO_DE_DIFUSION
   add constraint FK_MEDIO_DE_DIFUNDE_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table OFERTA
   add constraint FK_OFERTA_CREA_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

alter table OFERTA
   add constraint FK_OFERTA_FORMA_PAR_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table POSEE
   add constraint FK_POSEE_INMUEBLE__INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table POSEE
   add constraint FK_POSEE_PROPIETAR_PROPIETA foreign key (COD_PROPIETARIO)
      references PROPIETARIO (COD_PROPIETARIO)
go

alter table PRECIO
   add constraint FK_PRECIO_TIENE___OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table REQUERIMIENTO_CUALITATIVO
   add constraint FK_REQUERIM_CONDORMAD_REQUERIM foreign key (COD_REQUERIMIENTO)
      references REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO)
go

alter table REQUERIMIENTO_CUANTITATIVO
   add constraint FK_REQUERIM_CONFORMAD_REQUERIM foreign key (COD_REQUERIMIENTO)
      references REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO)
go

alter table REQUERIMIENTO_GENERAL
   add constraint FK_REQUERIM_REALIZA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE)
go

alter table SALARIO
   add constraint FK_SALARIO_RECIBE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

alter table SERVICIO_BASICO
   add constraint FK_SERVICIO_INMB_CUEN_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table TELEFONO_CLIENTE
   add constraint FK_TELEFONO_CUENTA_CO_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE)
go

alter table TELEFONO_EMPLEADO
   add constraint FK_TELEFONO_TIENE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

alter table TELEFONO_MEDIO_DIF
   add constraint FK_TELEFONO_TIENEJIUT_MEDIO_DE foreign key (COD_MD)
      references MEDIO_DE_DIFUSION (COD_MD)
go

alter table TELEFONO_PROPIETARIO
   add constraint FK_TELEFONO_FEWA_PROPIETA foreign key (COD_PROPIETARIO)
      references PROPIETARIO (COD_PROPIETARIO)
go

alter table TELEFONO_SUCURSAL
   add constraint FK_TELEFONO_TIENEIO_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL)
go

alter table TRANSACCION
   add constraint FK_TRANSACC_GENERA____CONTRATO foreign key (COD_CONTRATO)
      references CONTRATO (COD_CONTRATO)
go

alter table TRANSACCION
   add constraint FK_TRANSACC_OBTIENE_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL)
go

alter table VIDEO
   add constraint FK_VIDEO_TIEFEA_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table VIVIENDA
   add constraint FK_VIVIENDA_ES_UN_TIP_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go









