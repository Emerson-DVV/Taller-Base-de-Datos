/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     17/5/2023 23:53:56                           */
/*==============================================================*/

--CREATE DATABASE INM
--USE INM

--create database Inmobiliaria
--use Inmobiliaria



/*==============================================================*/
/* Table: BUSQUEDA                                              */
/*==============================================================*/
create table BUSQUEDA (
   COD_BUSQUEDA         int                  not null,
   COD_CLIENTE          int                  not null,
   COD_OFERTA           int                  not null,
   FECHA_COINCIDENCIA   datetime             not null,
   constraint PK_BUSQUEDA primary key nonclustered (COD_BUSQUEDA)
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          int                  not null,
   NOMBRE_CL            char(50)             not null,
   DIRECCION_CL         char(50)             not null,
   constraint PK_CLIENTE primary key nonclustered (COD_CLIENTE)
)
go

/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   COD_CONTRATO         int                  not null,
   COD_OFERTA           int                  not null,
   PAGO_CTRT            money                not null,
   FECHA_INI_CNTRT      datetime             not null,
   FECHA_FIN_CNTRT      datetime             null,
   DETALLE_CNTRT        char(50)             null,
   constraint PK_CONTRATO primary key nonclustered (COD_CONTRATO)
)
go

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   COD_DIRECCION        int                  not null,
   ZONA                 char(10)             not null,
   UBICACION_MAPS       char(100)            not null,
   CALLE_PRINCIPAL      char(100)             not null,
   CALLE_COLINDANTE     char(100)             null,
   DETALLE_DIR          char(50)             null,
   constraint PK_DIRECCION primary key nonclustered (COD_DIRECCION)
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         int                  not null,
   NOMBRE_EMPL          char(20)             not null,
   DIRECCION_EMPL       char(50)             not null,
   constraint PK_EMPLEADO primary key nonclustered (COD_EMPLEADO)
)
go

/*==============================================================*/
/* Table: FOTO                                                  */
/*==============================================================*/
create table FOTO (
   COD_FOTO             int                  not null,
   COD_OFERTA           int                  not null,
   IMAGEN               char(30)                null,

   DETALLE_FOTO         char(20)             null,

   constraint PK_FOTO primary key nonclustered (COD_FOTO)
)
go

/*==============================================================*/
/* Table: DOCUMENTACION                                         */
/*==============================================================*/
create table DOCUMENTACION (
   COD_DOCUMENTACION    int                  not null,
   CERTF_DE_GRAVAMENES  bit                  not null,
   PLANO_USO_SUELO      bit                  not null,
   CERTIFICADO_NO_ADEUDO_DE_IMPUEST bit                  not null,
   MINUTA_COMPRA_VENTA  bit                  null,
   DETALLE_DOC          varchar(255)         null,
   constraint PK_DOCUMENTACION primary key nonclustered (COD_DOCUMENTACION)
)
go

/*==============================================================*/
/* Table: INMUEBLE                                              */
/*==============================================================*/
create table INMUEBLE (
   COD_INMUEBLE         int                  not null,
   COD_DOCUMENTACION    int                  not null,
   COD_DIRECCION        int                  not null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   constraint PK_INMUEBLE primary key nonclustered (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: VIVIENDA                                              */
/*==============================================================*/
create table VIVIENDA (
   COD_INMUEBLE         int                  not null,   
   NUM_DORMITORIOS      int                  not null,
   NUM_BANOS            int                  not null,
   ANTI_CONST           int                  not null,
   SALA                 bit                  null,
   COMEDOR              bit                  null,
   COCINA               bit                  null,
   constraint PK_VIVIENDA primary key (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: CASA                                                  */
/*==============================================================*/
create table CASA (
   COD_INMUEBLE         int                  not null,
   SUPERFICIE_DE_CONTRUCCION float                not null,
   NUM_DE_PLANTAS       int                  not null,
   PATIO                bit                  not null,
   GARAJE               bit                  not null,
   DETALLE_CASA         char(50)             null,
   constraint PK_CASA primary key (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_INMUEBLE         int                  not null,
   NUM_PISO             int                  not null,
   PERMISO_MASCOTAS     bit                  not null,
   NUM_ESTACIONAMIENTO  char(10)             null,
   DETALLE_DPTO         char(40)             null,
   constraint PK_DEPARTAMENTO primary key (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: GARZONIER                                             */
/*==============================================================*/
create table GARZONIER (
   COD_INMUEBLE         int                  not null,
   AMUEBLADO            bit                  not null,
   CAP_MAX_DE_INQ       int                  null,
   DETALLE_GARZONIER    char(30)             null,
   constraint PK_GARZONIER primary key (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: LOTE                                                  */
/*==============================================================*/
create table LOTE (
   COD_INMUEBLE         int                  not null,
   USO_ACTUAL           char(30)             not null,
   TOPOGRAFIA           char(20)             null,
   DETALLE_LOTE         char(40)             null,
   constraint PK_LOTE primary key (COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: MEDIO_DE_DIFUSION                                     */
/*==============================================================*/
create table MEDIO_DE_DIFUSION (
   COD_MD               int             not null,
   COD_OFERTA           int                  not null,
   TIPO                 char(15)             not null,
   DETALLE_MD           char(50)             null,
   constraint PK_MEDIO_DE_DIFUSION primary key nonclustered (COD_MD)
)
go


/*==============================================================*/
/* Table: OFERTA                                                */
/*==============================================================*/
create table OFERTA (
   COD_OFERTA           int                  not null,
   COD_EMPLEADO         int                  not null,
   COD_INMUEBLE         int                  not null,
   FECHA_INI_OFERTA     datetime             not null,
   FECHA_FIN_OFERTA     datetime             not null,
   TIPO_OFERTA          char(20)             not null,
   constraint PK_OFERTA primary key nonclustered (COD_OFERTA)
)
go

/*==============================================================*/
/* Table: POSEE                                                 */
/*==============================================================*/
create table POSEE (
   COD_POSEE            int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_PROPIETARIO      int                  not null,
   FECHA_REGISTRO       datetime             not null,
   constraint PK_POSEE primary key nonclustered (COD_POSEE)
)
go

/*==============================================================*/
/* Table: PRECIO                                                */
/*==============================================================*/
create table PRECIO (
   COD_OFERTA           int                  not null,
   COD_PRECIO           int                  not null,
   MONTO_PRECIO         money                not null,
   FECHA_PRECIO         datetime             not null,
   constraint PK_PRECIO primary key nonclustered (COD_OFERTA, COD_PRECIO)
)
go

/*==============================================================*/
/* Table: PROPIETARIO                                           */
/*==============================================================*/
create table PROPIETARIO (
   COD_PROPIETARIO      int                  not null,
   NOMBRE_PR            char(25)             not null,
   DIRRECCION_PR        char(50)             not null,
   constraint PK_PROPIETARIO primary key nonclustered (COD_PROPIETARIO)
)
go

/*==============================================================*/
/* Table: REQUERIMIENTO_GENERAL                                 */
/*==============================================================*/
create table REQUERIMIENTO_GENERAL (
   COD_REQUERIMIENTO    int                  not null,
   COD_CLIENTE          int                  not null,
   FECHA_CREACION_REQ   datetime             not null,
   TIPO_CONTRATO        char(20)             null,
   TIPO_INM             char(20)             null,
   constraint PK_REQUERIMIENTO_GENERAL primary key nonclustered (COD_REQUERIMIENTO)
)
go

/*==============================================================*/
/* Table: SALARIO                                               */
/*==============================================================*/
create table SALARIO (
   COD_EMPLEADO         int                  not null,
   COD_SALARIO          int                  not null,
   FECHA_SALARIO        char(20)             not null,
   SUELDO_FIJO          money                not null,
   constraint PK_SALARIO primary key nonclustered (COD_EMPLEADO, COD_SALARIO)
)
go

/*==============================================================*/
/* Table: TELEFONO_CLIENTE                                      */
/*==============================================================*/
create table TELEFONO_CLIENTE (
   COD_CLIENTE          int                  not null,
   COD_TELF_CL          int                  not null,
   TELF_CL              char(9)              not null,
   DETALLE_TELF_CL      char(20)             null,
   constraint PK_TELEFONO_CLIENTE primary key nonclustered (COD_CLIENTE, COD_TELF_CL)
)
go


/*==============================================================*/
/* Table: TELEFONO_EMPLEADO                                     */
/*==============================================================*/
create table TELEFONO_EMPLEADO (
   COD_EMPLEADO         int                  not null,
   COD_TELF_EMPL        int                  not null,
   TELF_EMPL            char(9)              not null,
   DETALLE_TELF_EMPL    char(20)             null,
   constraint PK_TELEFONO_EMPLEADO primary key nonclustered (COD_EMPLEADO, COD_TELF_EMPL)
)
go

/*==============================================================*/
/* Table: TELEFONO_MEDIO_DIF                                    */
/*==============================================================*/
create table TELEFONO_MEDIO_DIF (
   COD_MD               int             not null,
   COD_TELF_MD          int                  not null,
   TELF_MD              char(9)              not null,
   DETALLE_TELF_MD      char(20)             null,
   constraint PK_TELEFONO_MEDIO_DIF primary key nonclustered (COD_MD, COD_TELF_MD)
)
go


/*==============================================================*/
/* Table: TELEFONO_PROPIETARIO                                  */
/*==============================================================*/
create table TELEFONO_PROPIETARIO (
   COD_PROPIETARIO      int                  not null,
   COD_TELF_PR          int                  not null,
   TELF_PR              char(9)              not null,
   DETALLE_TEFL_PR      char(20)             null,
   constraint PK_TELEFONO_PROPIETARIO primary key nonclustered (COD_PROPIETARIO, COD_TELF_PR)
)
go

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION (
   COD_TRANSACCION      int                  not null,
   COD_CONTRATO         int                  not null,
   FECHA_TRANS          datetime             not null,
   MONTO_TRANS          money                not null,
   COMISION_SUC         money                not null,
   COMISION_EMPL        money                not null,
   constraint PK_TRANSACCION primary key nonclustered (COD_TRANSACCION)
)
go

/*==============================================================*/
/* Table: VIDEO                                                 */
/*==============================================================*/
create table VIDEO (
   COD_VIDEO            int                  not null,
   COD_OFERTA           int                  not null,
   VIDEO                char(30)             null,
   DETALLE_VIDEO        char(50)             null,
   constraint PK_VIDEO primary key nonclustered (COD_VIDEO)
)
go



alter table BUSQUEDA
   add constraint FK_BUSQUEDA_BUSCA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE)
go

alter table BUSQUEDA
   add constraint FK_BUSQUEDA_OFERTA_CO_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go


alter table CONTRATO
   add constraint FK_CONTRATO_ORU_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go



alter table FOTO
   add constraint FK_FOTO_POSEEHTR_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
alter table INMUEBLE
   add constraint FK_INMUEBLE_JKUYF_DIRECCIO foreign key (COD_DIRECCION)
      references DIRECCION (COD_DIRECCION)
go

alter table INMUEBLE
   add constraint FK_INMUEBLE_KID_DOCUMENT foreign key (COD_DOCUMENTACION)
      references DOCUMENTACION (COD_DOCUMENTACION)
go

alter table VIVIENDA
   add constraint FK_VIVIENDA_ES_UN_TIP_INMUEBLE1 foreign key (COD_INMUEBLE)
      references INMUEBLE (COD_INMUEBLE) 
go
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
alter table CASA
   add constraint FK_CASA_PUEDE_SER_VIVIENDA1 foreign key (COD_INMUEBLE)
      references VIVIENDA (COD_INMUEBLE)
go

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_PUEDE_SER_VIVIENDA1 foreign key (COD_INMUEBLE)
      references VIVIENDA (COD_INMUEBLE)
go


alter table GARZONIER
   add constraint FK_GARZONIE_PUEDE_SER_VIVIENDA1 foreign key (COD_INMUEBLE)
      references VIVIENDA (COD_INMUEBLE)
go

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
alter table LOTE
   add constraint FK_LOTE_ES_UN_TIP_INMUEBLE1 foreign key (COD_INMUEBLE)
      references INMUEBLE (COD_INMUEBLE)
go

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

alter table MEDIO_DE_DIFUSION
   add constraint FK_MEDIO_DE_DIFUNDE_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table OFERTA
   add constraint FK_OFERTA_FDEGBY_INMUEBLE foreign key (COD_INMUEBLE)
      references INMUEBLE (COD_INMUEBLE)
go

alter table OFERTA
   add constraint FK_OFERTA_PARTICIPA_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

alter table POSEE
   add constraint FK_POSEE_INMUEBLE__INMUEBLE foreign key (COD_INMUEBLE)
      references INMUEBLE (COD_INMUEBLE)
go

alter table POSEE
   add constraint FK_POSEE_PROPIETAR_PROPIETA foreign key (COD_PROPIETARIO)
      references PROPIETARIO (COD_PROPIETARIO)
go

alter table PRECIO
   add constraint FK_PRECIO_PSDF_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table REQUERIMIENTO_GENERAL
   add constraint FK_REQUERIM_REALIZA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE)
go

alter table SALARIO
   add constraint FK_SALARIO_RECIBE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
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

alter table TRANSACCION
   add constraint FK_TRANSACC_HORE_CONTRATO foreign key (COD_CONTRATO)
      references CONTRATO (COD_CONTRATO)
go

alter table VIDEO
   add constraint FK_VIDEO_TIEFEA_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go


