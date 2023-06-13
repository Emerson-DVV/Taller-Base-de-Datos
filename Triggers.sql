CREATE TRIGGER CalculoComision
ON TRANSACCION
AFTER INSERT
AS
BEGIN
    -- Variables para almacenar los datos necesarios
    DECLARE @tipoTransaccion CHAR(20)
    DECLARE @monto money
    DECLARE @comisionEmpresa money
    DECLARE @comisionEmpleado money
    
    -- Obtener el tipo de transacción y el monto utilizando subconsultas
    SELECT @tipoTransaccion = O.TIPO_OFERTA,
           @monto = T.MONTO_TRANS
    FROM TRANSACCION AS T
    INNER JOIN inserted AS I ON T.COD_TRANSACCION = I.COD_TRANSACCION
    INNER JOIN CONTRATO AS C ON T.COD_CONTRATO = C.COD_CONTRATO
    INNER JOIN OFERTA AS O ON C.COD_OFERTA = O.COD_OFERTA
    
    -- Realizar el cálculo de las comisiones según el tipo de transacción
    IF @tipoTransaccion = 'Venta' OR @tipoTransaccion = 'Anticretico' -- Venta o anticrético
    BEGIN
        SET @comisionEmpresa = @monto * 0.03
        SET @comisionEmpleado = @comisionEmpresa * 0.0006
    END
    ELSE IF @tipoTransaccion = 'Alquiler' -- Alquiler
    BEGIN
        SET @comisionEmpresa = @monto * 0.5
        SET @comisionEmpleado = @comisionEmpresa * 0.2
    END
    
    -- Actualizar los montos de comisión en la tabla Transaccion
    UPDATE TRANSACCION
    SET COMISION_SUC = @comisionEmpresa, COMISION_EMPL = @comisionEmpleado
    WHERE COD_TRANSACCION IN (SELECT COD_TRANSACCION FROM inserted)
END

INSERT INTO TRANSACCION(COD_TRANSACCION, COD_CONTRATO, FECHA_TRANS, MONTO_TRANS)
VALUES(15,12,'2023-07-08 00:00:00.000',1800)

CREATE TRIGGER CambiarEstadoInmueble
ON TRANSACCION 
AFTER INSERT
AS
BEGIN
	UPDATE INMUEBLE
	SET DISPONIBLE = 0
	WHERE COD_INMUEBLE IN(
		SELECT O.COD_INMUEBLE
		FROM TRANSACCION AS T
		INNER JOIN inserted AS I ON T.COD_TRANSACCION = I.COD_TRANSACCION
		INNER JOIN CONTRATO AS C ON T.COD_CONTRATO = C.COD_CONTRATO
		INNER JOIN OFERTA AS O ON C.COD_OFERTA = O.COD_OFERTA
		INNER JOIN INMUEBLE AS INM ON INM.COD_INMUEBLE = O.COD_INMUEBLE
	)
END

INSERT INTO TRANSACCION(COD_TRANSACCION, COD_CONTRATO, FECHA_TRANS, MONTO_TRANS)
VALUES
(16,13,'2023-06-07 00:00:00.000',3000),
(17,14,'2023-06-08 00:00:00.000',2500)

CREATE TABLE REGISTRO_ENTRADAS (
   COD_REGISTRO		INT IDENTITY(1,1)	not null,
   COD_EMPLEADO		INT					not null,
   ENTRADA			TIME				not null,
   constraint PK_REGISTRO_ENTRADAS primary key nonclustered (COD_REGISTRO)
)
go
CREATE TABLE RETRASO (
   COD_RETRASO		INT IDENTITY(1,1)	not null,
   COD_EMPLEADO		INT					not null,
   ENTRADA			TIME				not null,
   TIEMPO_RETRASO	INT					not null,
   constraint PK_COD_RETRASO primary key nonclustered (COD_RETRASO)
)
go

alter table REGISTRO_ENTRADAS
   add constraint FK_REGISTRO_ENTRADAS_EMPLEADOS foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

alter table RETRASO
   add constraint FK_RETRASO_EMPLEADOS foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
go

CREATE TRIGGER EVALUAR_RETRASO
ON REGISTRO_ENTRADAS
AFTER INSERT
AS
BEGIN 
	-- Variables necesarias
	DECLARE @IDEmpleado			INT
	DECLARE @HoraEntrada		TIME
	DECLARE @TiempoRetraso		INT
	-- Obtencion de datos de entrada
	SELECT @IDEmpleado = COD_EMPLEADO, @HoraEntrada = ENTRADA
	FROM inserted
	-- Calculo del tiempo
	SET @TiempoRetraso = DATEDIFF(MINUTE, CAST('08:00:00' AS TIME), @HoraEntrada) - 10

	IF @TiempoRetraso >= 0
		BEGIN	
			INSERT INTO RETRASO (COD_EMPLEADO, ENTRADA, TIEMPO_RETRASO)
			VALUES(@IDEmpleado, @HoraEntrada, @TiempoRetraso)
		END
END

INSERT INTO REGISTRO_ENTRADAS(COD_EMPLEADO, ENTRADA)
VALUES (3,'08:00:00')
INSERT INTO REGISTRO_ENTRADAS(COD_EMPLEADO, ENTRADA)
VALUES (5,'08:30:00')
INSERT INTO REGISTRO_ENTRADAS(COD_EMPLEADO, ENTRADA)
VALUES (10,'09:00:00')
INSERT INTO REGISTRO_ENTRADAS(COD_EMPLEADO, ENTRADA)
VALUES (1,'07:00:00')

CREATE TABLE BITACORA_CONTRATO (
    ID				INT IDENTITY(1,1)	not null,
    COD_CONTRATO	INT					not null,
	COD_OFERTA		INT					not null,
	PAGO_CONTRATO	MONEY				not null,
	FECHA_INICIO	DATETIME			not null,
	FECHA_FIN		DATETIME			not null,
	FECHA_EVENTO	DATETIME			not null,
    EVENTO			VARCHAR(100)		not null,
	constraint PK_BITACORA_CONTRATO primary key nonclustered (ID)
)
go

CREATE TRIGGER REGISTRAR_BITACORA_CONTRATO
ON CONTRATO
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DECLARE @Cod_Contrato	INT
	DECLARE @Cod_Oferta		INT
	DECLARE @Pago_Contrato	MONEY		
	DECLARE @Fecha_Inicio	DATETIME
	DECLARE @Fecha_Fin		DATETIME

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
		SELECT 
			@Cod_Contrato = COD_CONTRATO,
			@Cod_Oferta = COD_OFERTA,
			@Pago_Contrato = PAGO_CTRT,
			@Fecha_Inicio = FECHA_INI_CNTRT,
			@Fecha_Fin = FECHA_FIN_CNTRT
		FROM inserted
        -- Inserción de registros en BitacoraTransaccion para nuevas transacciones
        INSERT INTO BITACORA_CONTRATO
        VALUES(@Cod_Contrato, @Cod_Oferta, @Pago_Contrato, @Fecha_Inicio, @Fecha_Fin, 
		GETDATE(), 'Actualizacion en Contrato')
    END

    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
		SELECT 
			@Cod_Contrato = COD_CONTRATO,
			@Cod_Oferta = COD_OFERTA,
			@Pago_Contrato = PAGO_CTRT,
			@Fecha_Inicio = FECHA_INI_CNTRT,
			@Fecha_Fin = FECHA_FIN_CNTRT
		FROM deleted
        -- Inserción de registros en BitacoraTransaccion para transacciones modificadas o eliminadas
        INSERT INTO BITACORA_CONTRATO
        VALUES(@Cod_Contrato, @Cod_Oferta, @Pago_Contrato, @Fecha_Inicio, @Fecha_Fin, 
		GETDATE(), 'Eliminacion en Contrato')
    END
END

INSERT INTO CONTRATO(COD_CONTRATO, COD_OFERTA, PAGO_CTRT, FECHA_INI_CNTRT, FECHA_FIN_CNTRT, DETALLE_CNTRT)
VALUES
(16, 21,3000,'2023-06-12 00:00:00.000','2023-09-12 00:00:00.000','Alquiler de Casa amueblada')

UPDATE CONTRATO
SET PAGO_CTRT = 3500
WHERE COD_CONTRATO = 16

DELETE FROM CONTRATO
WHERE COD_CONTRATO = 16
--(COD_TRANSACCION, FECHA_HORA, EVENTO, MONTO_TRANS, COMISION_EMPL, COMISION_SUC)