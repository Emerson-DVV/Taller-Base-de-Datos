/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     17/5/2023 23:53:56                           */
/*==============================================================*/
--CREATE DATABASE Inmueble
--USE Inmueble

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUSQUEDA') and o.name = 'FK_BUSQUEDA_BUSCA_CLIENTE')
alter table BUSQUEDA
   drop constraint FK_BUSQUEDA_BUSCA_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BUSQUEDA') and o.name = 'FK_BUSQUEDA_OFERTA_CO_OFERTA')
alter table BUSQUEDA
   drop constraint FK_BUSQUEDA_OFERTA_CO_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CASA') and o.name = 'FK_CASA_PUEDE_SER_VIVIENDA')
alter table CASA
   drop constraint FK_CASA_PUEDE_SER_VIVIENDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTRATO') and o.name = 'FK_CONTRATO_ORU_OFERTA')
alter table CONTRATO
   drop constraint FK_CONTRATO_ORU_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DEPARTAMENTO') and o.name = 'FK_DEPARTAM_PUEDE_SER_VIVIENDA')
alter table DEPARTAMENTO
   drop constraint FK_DEPARTAM_PUEDE_SER_VIVIENDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FOTO') and o.name = 'FK_FOTO_POSEEHTR_OFERTA')
alter table FOTO
   drop constraint FK_FOTO_POSEEHTR_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GARZONIER') and o.name = 'FK_GARZONIE_PUEDE_SER_VIVIENDA')
alter table GARZONIER
   drop constraint FK_GARZONIE_PUEDE_SER_VIVIENDA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INMUEBLE') and o.name = 'FK_INMUEBLE_JKUYF_DIRECCIO')
alter table INMUEBLE
   drop constraint FK_INMUEBLE_JKUYF_DIRECCIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INMUEBLE') and o.name = 'FK_INMUEBLE_KID_DOCUMENT')
alter table INMUEBLE
   drop constraint FK_INMUEBLE_KID_DOCUMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOTE') and o.name = 'FK_LOTE_ES_UN_TIP_INMUEBLE')
alter table LOTE
   drop constraint FK_LOTE_ES_UN_TIP_INMUEBLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MEDIO_DE_DIFUSION') and o.name = 'FK_MEDIO_DE_DIFUNDE_OFERTA')
alter table MEDIO_DE_DIFUSION
   drop constraint FK_MEDIO_DE_DIFUNDE_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OFERTA') and o.name = 'FK_OFERTA_FDEGBY_INMUEBLE')
alter table OFERTA
   drop constraint FK_OFERTA_FDEGBY_INMUEBLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('OFERTA') and o.name = 'FK_OFERTA_PARTICIPA_EMPLEADO')
alter table OFERTA
   drop constraint FK_OFERTA_PARTICIPA_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POSEE') and o.name = 'FK_POSEE_INMUEBLE__INMUEBLE')
alter table POSEE
   drop constraint FK_POSEE_INMUEBLE__INMUEBLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('POSEE') and o.name = 'FK_POSEE_PROPIETAR_PROPIETA')
alter table POSEE
   drop constraint FK_POSEE_PROPIETAR_PROPIETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRECIO') and o.name = 'FK_PRECIO_PSDF_OFERTA')
alter table PRECIO
   drop constraint FK_PRECIO_PSDF_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REQUERIMIENTO_GENERAL') and o.name = 'FK_REQUERIM_REALIZA_CLIENTE')
alter table REQUERIMIENTO_GENERAL
   drop constraint FK_REQUERIM_REALIZA_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALARIO') and o.name = 'FK_SALARIO_RECIBE_EMPLEADO')
alter table SALARIO
   drop constraint FK_SALARIO_RECIBE_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_CLIENTE') and o.name = 'FK_TELEFONO_CUENTA_CO_CLIENTE')
alter table TELEFONO_CLIENTE
   drop constraint FK_TELEFONO_CUENTA_CO_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_EMPLEADO') and o.name = 'FK_TELEFONO_TIENE_EMPLEADO')
alter table TELEFONO_EMPLEADO
   drop constraint FK_TELEFONO_TIENE_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_MEDIO_DIF') and o.name = 'FK_TELEFONO_TIENEJIUT_MEDIO_DE')
alter table TELEFONO_MEDIO_DIF
   drop constraint FK_TELEFONO_TIENEJIUT_MEDIO_DE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_PROPIETARIO') and o.name = 'FK_TELEFONO_FEWA_PROPIETA')
alter table TELEFONO_PROPIETARIO
   drop constraint FK_TELEFONO_FEWA_PROPIETA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRANSACCION') and o.name = 'FK_TRANSACC_HORE_CONTRATO')
alter table TRANSACCION
   drop constraint FK_TRANSACC_HORE_CONTRATO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VIDEO') and o.name = 'FK_VIDEO_TIEFEA_OFERTA')
alter table VIDEO
   drop constraint FK_VIDEO_TIEFEA_OFERTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VIVIENDA') and o.name = 'FK_VIVIENDA_ES_UN_TIP_INMUEBLE')
alter table VIVIENDA
   drop constraint FK_VIVIENDA_ES_UN_TIP_INMUEBLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUSQUEDA')
            and   name  = 'BUSCA_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUSQUEDA.BUSCA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BUSQUEDA')
            and   name  = 'OFERTA_COINCIDE_CON_FK'
            and   indid > 0
            and   indid < 255)
   drop index BUSQUEDA.OFERTA_COINCIDE_CON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BUSQUEDA')
            and   type = 'U')
   drop table BUSQUEDA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CASA')
            and   type = 'U')
   drop table CASA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTRATO')
            and   name  = 'ORU_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTRATO.ORU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONTRATO')
            and   type = 'U')
   drop table CONTRATO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEPARTAMENTO')
            and   type = 'U')
   drop table DEPARTAMENTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIRECCION')
            and   type = 'U')
   drop table DIRECCION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOCUMENTACION')
            and   type = 'U')
   drop table DOCUMENTACION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FOTO')
            and   name  = 'POSEEHTR_FK'
            and   indid > 0
            and   indid < 255)
   drop index FOTO.POSEEHTR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FOTO')
            and   type = 'U')
   drop table FOTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GARZONIER')
            and   type = 'U')
   drop table GARZONIER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INMUEBLE')
            and   name  = 'KID_FK'
            and   indid > 0
            and   indid < 255)
   drop index INMUEBLE.KID_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INMUEBLE')
            and   name  = 'JKUYF_FK'
            and   indid > 0
            and   indid < 255)
   drop index INMUEBLE.JKUYF_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INMUEBLE')
            and   type = 'U')
   drop table INMUEBLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOTE')
            and   type = 'U')
   drop table LOTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MEDIO_DE_DIFUSION')
            and   name  = 'DIFUNDE_FK'
            and   indid > 0
            and   indid < 255)
   drop index MEDIO_DE_DIFUSION.DIFUNDE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MEDIO_DE_DIFUSION')
            and   type = 'U')
   drop table MEDIO_DE_DIFUSION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OFERTA')
            and   name  = 'FDEGBY_FK'
            and   indid > 0
            and   indid < 255)
   drop index OFERTA.FDEGBY_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('OFERTA')
            and   name  = 'PARTICIPA_FK'
            and   indid > 0
            and   indid < 255)
   drop index OFERTA.PARTICIPA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OFERTA')
            and   type = 'U')
   drop table OFERTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POSEE')
            and   name  = 'INMUEBLE_ESTA_FK'
            and   indid > 0
            and   indid < 255)
   drop index POSEE.INMUEBLE_ESTA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('POSEE')
            and   name  = 'PROPIETARIO_POSEE_FK'
            and   indid > 0
            and   indid < 255)
   drop index POSEE.PROPIETARIO_POSEE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('POSEE')
            and   type = 'U')
   drop table POSEE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRECIO')
            and   name  = 'PSDF_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRECIO.PSDF_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRECIO')
            and   type = 'U')
   drop table PRECIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROPIETARIO')
            and   type = 'U')
   drop table PROPIETARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REQUERIMIENTO_GENERAL')
            and   name  = 'REALIZA_FK'
            and   indid > 0
            and   indid < 255)
   drop index REQUERIMIENTO_GENERAL.REALIZA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REQUERIMIENTO_GENERAL')
            and   type = 'U')
   drop table REQUERIMIENTO_GENERAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SALARIO')
            and   name  = 'RECIBE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALARIO.RECIBE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SALARIO')
            and   type = 'U')
   drop table SALARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_CLIENTE')
            and   name  = 'CUENTA_CON_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_CLIENTE.CUENTA_CON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_CLIENTE')
            and   type = 'U')
   drop table TELEFONO_CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_EMPLEADO')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_EMPLEADO.TIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_EMPLEADO')
            and   type = 'U')
   drop table TELEFONO_EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_MEDIO_DIF')
            and   name  = 'TIENEJIUTI_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_MEDIO_DIF.TIENEJIUTI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_MEDIO_DIF')
            and   type = 'U')
   drop table TELEFONO_MEDIO_DIF
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_PROPIETARIO')
            and   name  = 'FEWA_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_PROPIETARIO.FEWA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_PROPIETARIO')
            and   type = 'U')
   drop table TELEFONO_PROPIETARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRANSACCION')
            and   name  = 'HORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRANSACCION.HORE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRANSACCION')
            and   type = 'U')
   drop table TRANSACCION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VIDEO')
            and   name  = 'TIEFEA_FK'
            and   indid > 0
            and   indid < 255)
   drop index VIDEO.TIEFEA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VIDEO')
            and   type = 'U')
   drop table VIDEO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VIVIENDA')
            and   type = 'U')
   drop table VIVIENDA
go

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
/* Index: OFERTA_COINCIDE_CON_FK                                */
/*==============================================================*/
create index OFERTA_COINCIDE_CON_FK on BUSQUEDA (
COD_OFERTA ASC
)
go

/*==============================================================*/
/* Index: BUSCA_FK                                              */
/*==============================================================*/
create index BUSCA_FK on BUSQUEDA (
COD_CLIENTE ASC
)
go

/*==============================================================*/
/* Table: CASA                                                  */
/*==============================================================*/
create table CASA (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   SUPERFICIE_DE_CONTRUCCION float                not null,
   NUM_DE_PLANTAS       int                  not null,
   PATIO                bit                  not null,
   GARAJE               bit                  not null,
   DETALLE_CASA         char(50)             null,
   COD_DIRECCION        int                  null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   NUM_DORMITORIOS      int                  not null,
   NUM_BANOS            int                  not null,
   ANTI_CONST           int                  not null,
   SALA                 bit                  null,
   COMEDOR              bit                  null,
   COCINA               bit                  null,
   constraint PK_CASA primary key (COD_DOCUMENTACION, COD_INMUEBLE)
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
/* Index: ORU_FK                                                */
/*==============================================================*/
create index ORU_FK on CONTRATO (
COD_OFERTA ASC
)
go

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   NUM_PISO             int                  not null,
   PERMISO_MASCOTAS     bit                  not null,
   NUM_ESTACIONAMIENTO  char(10)             null,
   DETALLE_DPTO         char(40)             null,
   COD_DIRECCION        int                  null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   NUM_DORMITORIOS      int                  not null,
   NUM_BANOS            int                  not null,
   ANTI_CONST           int                  not null,
   SALA                 bit                  null,
   COMEDOR              bit                  null,
   COCINA               bit                  null,
   constraint PK_DEPARTAMENTO primary key (COD_DOCUMENTACION, COD_INMUEBLE)
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
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         int                  not null,
   NOMBRE_EMPL          char(20)             not null,
   DIRECCION_EMPL       char(30)             not null,
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
   DETALLE_FOTO         char(30)             null,
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
/* Table: GARZONIER                                             */
/*==============================================================*/
create table GARZONIER (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   AMUEBLADO            bit                  not null,
   CAP_MAX_DE_INQ       int                  null,
   DETALLE_GARZONIER    char(30)             null,
   COD_DIRECCION        int                  null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   NUM_DORMITORIOS      int                  not null,
   NUM_BANOS            int                  not null,
   ANTI_CONST           int                  not null,
   SALA                 bit                  null,
   COMEDOR              bit                  null,
   COCINA               bit                  null,
   constraint PK_GARZONIER primary key (COD_DOCUMENTACION, COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: INMUEBLE                                              */
/*==============================================================*/
create table INMUEBLE (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_DIRECCION        int                  not null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   constraint PK_INMUEBLE primary key nonclustered (COD_DOCUMENTACION, COD_INMUEBLE)
)
go

/*==============================================================*/
/* Index: JKUYF_FK                                              */
/*==============================================================*/
create index JKUYF_FK on INMUEBLE (
COD_DIRECCION ASC
)
go

/*==============================================================*/
/* Index: KID_FK                                                */
/*==============================================================*/
create index KID_FK on INMUEBLE (
COD_DOCUMENTACION ASC
)
go

/*==============================================================*/
/* Table: LOTE                                                  */
/*==============================================================*/
create table LOTE (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_DIRECCION        int                  null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   USO_ACTUAL           char(30)             not null,
   TOPOGRAFIA           char(20)             null,
   DETALLE_LOTE         char(40)             null,
   constraint PK_LOTE primary key (COD_DOCUMENTACION, COD_INMUEBLE)
)
go

/*==============================================================*/
/* Table: MEDIO_DE_DIFUSION                                     */
/*==============================================================*/
create table MEDIO_DE_DIFUSION (
   COD_MD               int             not null,
   COD_OFERTA           int                  not null,
   TIPO                 char(15)             not null,
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
/* Table: OFERTA                                                */
/*==============================================================*/
create table OFERTA (
   COD_OFERTA           int                  not null,
   COD_EMPLEADO         int                  not null,
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   FECHA_INI_OFERTA     datetime             not null,
   FECHA_FIN_OFERTA     datetime             not null,
   TIPO_OFERTA          char(20)             not null,
   constraint PK_OFERTA primary key nonclustered (COD_OFERTA)
)
go

/*==============================================================*/
/* Index: PARTICIPA_FK                                          */
/*==============================================================*/
create index PARTICIPA_FK on OFERTA (
COD_EMPLEADO ASC
)
go

/*==============================================================*/
/* Index: FDEGBY_FK                                             */
/*==============================================================*/
create index FDEGBY_FK on OFERTA (
COD_DOCUMENTACION ASC,
COD_INMUEBLE ASC
)
go

/*==============================================================*/
/* Table: POSEE                                                 */
/*==============================================================*/
create table POSEE (
   COD_POSEE            int                  not null,
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_PROPIETARIO      int                  not null,
   FECHA_REGISTRO       datetime             not null,
   constraint PK_POSEE primary key nonclustered (COD_POSEE)
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
/* Index: PSDF_FK                                               */
/*==============================================================*/
create index PSDF_FK on PRECIO (
COD_OFERTA ASC
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
/* Index: REALIZA_FK                                            */
/*==============================================================*/
create index REALIZA_FK on REQUERIMIENTO_GENERAL (
COD_CLIENTE ASC
)
go

/*==============================================================*/
/* Table: SALARIO                                               */
/*==============================================================*/
create table SALARIO (
   COD_EMPLEADO         int                  not null,
   COD_SALARIO          int                  not null,
   MES_DE_PAGO          char(10)             not null,
   FECHA_SALARIO        datetime             not null,
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
/* Table: TELEFONO_CLIENTE                                      */
/*==============================================================*/
create table TELEFONO_CLIENTE (
   COD_CLIENTE          int                  not null,
   COD_TELF_CL          int                  not null,
   TELF_CL              char(8)              not null,
   DETALLE_TELF_CL      char(20)             null,
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
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on TELEFONO_EMPLEADO (
COD_EMPLEADO ASC
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
/* Index: TIENEJIUTI_FK                                         */
/*==============================================================*/
create index TIENEJIUTI_FK on TELEFONO_MEDIO_DIF (
COD_MD ASC
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
/* Index: FEWA_FK                                               */
/*==============================================================*/
create index FEWA_FK on TELEFONO_PROPIETARIO (
COD_PROPIETARIO ASC
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
/* Index: HORE_FK                                               */
/*==============================================================*/
create index HORE_FK on TRANSACCION (
COD_CONTRATO ASC
)
go

/*==============================================================*/
/* Table: VIDEO                                                 */
/*==============================================================*/
create table VIDEO (
   COD_VIDEO            int                  not null,
   COD_OFERTA           int                  not null,
   VIDEO                char(30)             null,
   DETALLE_VIDEO        char(20)             null,
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
/* Table: VIVIENDA                                              */
/*==============================================================*/
create table VIVIENDA (
   COD_DOCUMENTACION    int                  not null,
   COD_INMUEBLE         int                  not null,
   COD_DIRECCION        int                  null,
   SUPERFICIE           float                not null,
   DISPONIBLE           bit                  not null,
   NUM_INMUEBLE         char(15)             null,
   NUM_DORMITORIOS      int                  not null,
   NUM_BANOS            int                  not null,
   ANTI_CONST           int                  not null,
   SALA                 bit                  null,
   COMEDOR              bit                  null,
   COCINA               bit                  null,
   constraint PK_VIVIENDA primary key (COD_DOCUMENTACION, COD_INMUEBLE)
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

alter table CASA
   add constraint FK_CASA_PUEDE_SER_VIVIENDA foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table CONTRATO
   add constraint FK_CONTRATO_ORU_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_PUEDE_SER_VIVIENDA foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table FOTO
   add constraint FK_FOTO_POSEEHTR_OFERTA foreign key (COD_OFERTA)
      references OFERTA (COD_OFERTA)
go

alter table GARZONIER
   add constraint FK_GARZONIE_PUEDE_SER_VIVIENDA foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table INMUEBLE
   add constraint FK_INMUEBLE_JKUYF_DIRECCIO foreign key (COD_DIRECCION)
      references DIRECCION (COD_DIRECCION)
go

alter table INMUEBLE
   add constraint FK_INMUEBLE_KID_DOCUMENT foreign key (COD_DOCUMENTACION)
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
   add constraint FK_OFERTA_FDEGBY_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

alter table OFERTA
   add constraint FK_OFERTA_PARTICIPA_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
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

alter table VIVIENDA
   add constraint FK_VIVIENDA_ES_UN_TIP_INMUEBLE foreign key (COD_DOCUMENTACION, COD_INMUEBLE)
      references INMUEBLE (COD_DOCUMENTACION, COD_INMUEBLE)
go

