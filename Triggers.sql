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

CREATE TABLE REGISTRO_ENTRADAS (
    COD_REGISTRO INT IDENTITY(1,1) PRIMARY KEY,
    COD_EMPLEADO INT,
    ENTRADA DATETIME,
    CONSTRAINT FK_RegistroEntradas_Empleados FOREIGN KEY (COD_EMPLEADO)
    REFERENCES EMPLEADO (COD_EMPLEADO)
)

CREATE TABLE RETRASO (
    COD_RETRASO INT IDENTITY(1,1) PRIMARY KEY,
    COD_EMPLEADO INT,
    ENTRADA DATETIME,
    TIEMPO_RETRASO INT,
	CONSTRAINT FK_RegistroEntradas_Retraso FOREIGN KEY (COD_EMPLEADO)
    REFERENCES EMPLEADO (COD_EMPLEADO)
)

CREATE TRIGGER EVALUAR_RETRASO
ON REGISTRO_ENTRADAS
AFTER INSERT
AS
BEGIN 
	-- Variables necesarias
	DECLARE @IDEmpleado int
	DECLARE @FechaHoraEntrada datetime
	DECLARE @TiempoRetraso int
	-- Obtencion de datos de entrada
	SELECT @IDEmpleado = COD_EMPLEADO, @FechaHoraEntrada = ENTRADA
	FROM inserted
	-- Calculo del tiempo
	SET @TiempoRetraso = DATEDIFF(MINUTE, CAST('08:00' AS TIME), @FechaHoraEntrada) - 10

	IF @TiempoRetraso >= 0
		BEGIN	
			INSERT INTO RETRASO (COD_EMPLEADO, ENTRADA, TIEMPO_RETRASO)
			VALUES(@IDEmpleado, @FechaHoraEntrada, @TiempoRetraso)
		END
END

CREATE TABLE BitacoraTransaccion (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    COD_TRANSACCION INT,
    FECHA_HORA DATETIME,
    EVENTO VARCHAR(100),
    MONTO_TRANS MONEY,
	COMISION_EMPL MONEY,
	COMISION_SUC MONEY
)

CREATE TRIGGER RegistrarBitacoraTransaccion
ON TRANSACCION
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DECLARE @Monto MONEY
	DECLARE @ComisionEmp MONEY
	DECLARE @ComisionSuc MONEY
	DECLARE @Cod_Transaccion int

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
		SELECT 
			@Monto = MONTO_TRANS,
			@ComisionEmp = COMISION_EMPL,
			@ComisionSuc = COMISION_SUC,
			@Cod_Transaccion = COD_TRANSACCION
		FROM inserted
        -- Inserción de registros en BitacoraTransaccion para nuevas transacciones
        INSERT INTO BitacoraTransaccion (COD_TRANSACCION, FECHA_HORA, EVENTO, MONTO_TRANS, COMISION_EMPL, COMISION_SUC)
        VALUES(@Cod_Transaccion, GETDATE(), 'Nueva transacción', @Monto, @ComisionEmp, @ComisionSuc)
    END

    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
		SELECT 
			@Monto = MONTO_TRANS,
			@ComisionEmp = COMISION_EMPL,
			@ComisionSuc = COMISION_SUC,
			@Cod_Transaccion = COD_TRANSACCION
		FROM deleted
        -- Inserción de registros en BitacoraTransaccion para transacciones modificadas o eliminadas
        INSERT INTO BitacoraTransaccion (COD_TRANSACCION, FECHA_HORA, EVENTO, MONTO_TRANS, COMISION_EMPL, COMISION_SUC)
        VALUES(@Cod_Transaccion, GETDATE(), 'Modificación o eliminación de transacción', @Monto, @ComisionEmp, @Cod_Transaccion)
    END
END

