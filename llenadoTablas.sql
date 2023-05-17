USE INMOBILIARIA
/*==============================================================*/
/* Llenado de la tabla inmueble                                       */
/*==============================================================*/
INSERT INTO INMUEBLE (COD_INMUEBLE, ESTADO, DISPONIBLE, NUM_INMUEBLE, COD_CATASTRAL, NUM_MATRICULA, NUM_FOLIO, DETALLE, REFERENCIA)
VALUES
  (1, 'venta', 1, '111', 'CAT001', 'MAT001', 'FOL001', 'muros de piedra ', 'due�o directo'),
  (2, 'anticretico', 1, '122', 'CAT002', 'MAT002', 'FOL002', 'muros de ladrillo', 'due�o directo'),
  (3, 'alquiler', 1, 's/n', 'CAT003', 'MAT003', 'FOL003', 'rejas metalicas ', 'due�o directo'),
  (4, 'venta', 1, '004', 'CAT004', 'MAT004', 'FOL004', 'muros de ladrillo', 'oficinas'),
  (5, 'venta', 1, 's/n', 'CAT005', 'MAT005', 'FOL005', 'mmuros de piedra con camaras de seguridad', 'oficinas'),
  (6, 'venta', 1, '016', 'CAT006', 'MAT006', 'FOL006', 'puerta con sensores de movimiento', 'solo llamadas'),
  (7, 'alquiler', 1, '017', 'CAT007', 'MAT007', 'FOL007', 'camaras de seguridad', 'solo mensajes'),
  (8, 'alquiler', 1, 's/n', 'CAT008', 'MAT008', 'FOL008', 'puerta con sensores de movimiento', 'due�o directo'),
  (9, 'venta', 1, '109', 'CAT009', 'MAT009', 'FOL009', 'camaras de seguridad', 'due�o directo'),
  (10, 'venta', 1, 's/n', 'CAT010', 'MAT010', 'FOL010', 'camaras de seguridad', 'oficina'),
  (11, 'venta', 1, '011', 'CAT011', 'MAT011', 'FOL011', 'puerta con sensores de movimiento', 'oficina'),
  (12, 'anticretico', 1, '012', 'CAT012', 'MAT012', 'FOL012', 'ropero empotrado', 'oficina'),
  (13, 'anticretico', 1, '013', 'CAT013', 'MAT013', 'FOL013', 'ropero empotrado', 'oficina'),
  (14, 'alquiler', 1, '014', 'CAT014', 'MAT014', 'FOL014', 'ropero empotrado y camaras de seguridad', 'oficina'),
  (15, 'alquiler', 1, '015', 'CAT015', 'MAT015', 'FOL015', 'ventanas rotas', 'oficina'),
  (16, 'venta', 1, '016', 'CAT016', 'MAT016', 'FOL016', 'amurrallado', 'oficina'),
  (17, 'venta', 1, '017', 'CAT017', 'MAT017', 'FOL017', 'sin amurrallar', 'gerente'),
  (18, 'venta', 1, '231', 'CAT017', 'MAT017', 'FOL017', 'sin amurrallar', 'gerente'),
  (19, 'venta', 1, '101', 'CAT017', 'MAT017', 'FOL017', 'amurrallado', 'gerente'),
  (20, 'venta', 1, '118', 'CAT018', 'MAT018', 'FOL018', 'amurrallado', 'gerente');
/*==============================================================*/
/* Llenado de la tabla casa                                       */
/*==============================================================*/
INSERT INTO CASA (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_CASA, COD_DIRECCION, SUPERFICIE_DE_CONSTRUCCION, NUM_PLANTAS, PATIO, GARAJE, CAPACIDAD_GARAJE, DETALLE_CASA)
VALUES
(1, 1, 1, 1, 1, 150.5, 2, 1, 1, 2, 'medias aguas'),
(2, 2, 2, 2, 2, 200.2, 3, 0, 1, 1, 'sin alcantarillado'),
(3, 3, 3, 3, 3, 180.0, 2, 1, 0, 0, 'medias aguas'),
(4, 4, 4, 4, 4, 120.7, 1, 0, 1, 1, 'obra fina'),
(5, 5, 5, 5, 5, 250.0, 3, 1, 1, 3, 'obra fina');
`-- llenado de la tabla departamento

INSERT INTO DEPARTAMENTO (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_DEPARTAMENTO, COD_DIRECCION, NUM_PISO, PERMISO_MASCOTAS, NUM_ESTACIONAMIENTO, DETALLE_DEPARTAMENTO)
VALUES
(6, 6, 6, 6, 6, 2, 1, 'A1', 'piso madera'),
(7, 7, 7, 7, 7, 10, 0, 'B2', 'piso ceramica'),
(8, 8, 8, 8, 8, 8, 1, 'C3', 'sin ventanas'),
(9, 9, 9, 9, 9, 7, 0, 'D4', 'amoblado'),
(10, 10, 10, 10, 10, 6, 1, 'E5', 'piso madera');
-- llenado de la tabla garzonier

INSERT INTO GARZONIER (COD_DOCUMENTACION, COD_INMUEBLE, COD_GARZONIER, COD_DIRECCION, AMUEBLADO, CAP_MAX_INQ, DETALLE_GARZONIER)
VALUES
(11, 11, 11, 11, 1, 2, 'ba�o compartido'),
(12, 12, 12, 12, 0, 1, 'ba�o compartido'),
(13, 13, 13, 13, 1, 2, 'ba�o privado'),
(14, 14, 14, 14, 1, 3, 'ba�o privado'),
(15, 15, 15, 15, 0, 2, 'ba�o compartido');
--llenado de la tabla lote

INSERT INTO LOTE (COD_DOCUMENTACION, COD_INMUEBLE, COD_LOTE, COD_DIRECCION, USU_ACTUAL, TOPOGRAFIA, DETALLE_CASA)
VALUES
(16, 16, 16, 16, 'agricultura', 'Plana', 'tierra fertil'),
(17, 17, 17, 17, 'ganaderia', 'Inclinada', 'tierra con esconbros'),
(18, 18, 18, 18, 'terreno', 'Plana', 'tierra arena'),
(19, 19, 19, 19, 'agricultura', 'Inclinada', 'tierra fertil'),
(20, 20, 20, 20, 'agricultura', 'Plana', 'tierra fertil');
--llenado de la tabla vivienda

INSERT INTO VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_DIRECCION, NUM_DORMITORIOS,NUM_BA�OS, SALA, COMEDOR, COCINA)
VALUES
(1, 1, 1, 1, 1, 2, 1, 1, 1),
(2, 2, 2, 2, 1, 1, 1, 1, 1),
(3, 3, 3, 3,0, 3, 1, 0, 1),
(4, 4, 4, 4, 0, 1, 1, 1, 1),
(5, 5, 5, 5,1, 1, 1, 0, 1),
(6, 6, 6, 6,1, 2, 1, 1, 1),
(7, 7, 7, 7,0, 2, 0, 0, 1),
(8, 8, 8, 8, 1,1, 1, 1, 0),
(9, 9, 9, 9, 3,2, 0, 1, 1),
(10, 10, 10, 10, 2, 1, 1, 1, 0);
--llenado de documentacion
INSERT INTO DOCUMENTACION (COD_DOCUMENTACION, ESCRITURA_COMPRA_VENTA, CERTIFICADO_ALODIAL, CERTIFICADO_CATASTRO, PLANO_USO_SUELO, COMPROBANTE_PAGO_IMPUESTO_ANUAL, DETALLE_LOG)
VALUES
(1, 1, 1, 1, 1, 1, ''),
(2, 1, 0, 1, 0, 1, 'zona rural'),
(3, 1, 1, 0, 1, 0, 'zona rural'),
(4, 0, 1, 1, 1, 1, 'zona rural'),
(5, 1, 1, 1, 0, 1, 'zona centrica'),
(6, 1, 0, 0, 1, 0, 'zona centrica'),
(7, 0, 1, 0, 0, 1, 'zona centrica'),
(8, 1, 1, 1, 1, 1, 'zona centrica'),
(9, 0, 0, 1, 1, 0, 'zona centrica'),
(10, 1, 1, 0, 0, 1, 'zona centrica'),
(11, 1, 0, 1, 1, 1, 'zona centrica'),
(12, 0, 1, 1, 1, 0, 'zona centrica'),
(13, 1, 1, 0, 1, 1, 'zona rural'),
(14, 0, 1, 1, 0, 1, 'zona rural'),
(15, 1, 0, 0, 1, 0, 'zona rural'),
(16, 1, 1, 1, 1, 1, 'zona rural'),
(17, 0, 0, 1, 1, 0, 'zona rural'),
(18, 1, 1, 0, 0, 1, 'zona rural'),
(19, 1, 0, 1, 1, 1, 'zona centrica'),
(20, 0, 1, 1, 1, 0, 'zona centrica');
--llenado tabla posee
INSERT INTO POSEE (COD_POSEE, COD_DOCUMENTACION, COD_INMUEBLE, COD_PROPIETARIO, FECHA_REGISTRO, PORCENTAJE_DE_PR)
VALUES
(1, 1, 1, 1, '2020-01-01', 50.0),
(2, 2, 2, 2, '2022-02-01', 90.0),
(3, 3, 3, 3, '2021-03-01', 100.0),
(4, 4, 4, 4, '2022-04-01', 75.0),
(5, 5, 5, 5, '2020-05-01', 95.0),
(6, 6, 6, 6, '2019-06-01', 60.0),
(7, 7, 7, 7, '2000-07-01', 80.0),
(8, 4, 2, 8, '2000-08-01', 90.0),
(9, 5, 1, 9, '2000-09-01', 40.0),
(10, 5, 2, 10, '2011-10-01', 70.0),
(11, 6, 1, 11, '2011-11-01', 100.0),
(12, 6, 2, 12, '2011-12-01', 85.0),
(13, 7, 1, 13, '2011-01-01', 65.0),
(14, 7, 2, 14, '2012-02-01', 90.0),
(15, 8, 1, 15, '2012-03-01', 95.0),
(16, 8, 2, 16, '2013-04-01', 45.0),
(17, 9, 1, 17, '2015-05-01', 100.0),
(18, 9, 2, 18, '2022-06-01', 100.0),
(19, 10, 1, 19, '2021-07-01', 50.0),
(20, 10, 2, 20, '2020-08-01', 70.0);
--lenado de propietario
INSERT INTO PROPIETARIO (COD_PROPIETARIO, NOMBRE, DIRECCION_PROPIETARIO)
VALUES
(1, 'Juan P�rez', 'Jordan N� 202, esquina Nataniel Aguirre'),
(2, 'Mar�a L�pez', 'Sucre N� 456, esquina Ballivi�n'),
(3, 'Carlos Garc�a', 'Murillo N� 789, esquina Pando'),
(4, 'Ana Rodr�guez', 'Ayacucho N� 567, esquina Sucre'),
(5, 'Pedro Mart�nez', 'Rodr�guez N� 890, esquina Jun�n'),
(6, 'Laura Fern�ndez', 'Oquendo N� 4321, esquina Melchor P�rez'),
(7, 'Luis Gonz�lez', 'Jord�n N� 678, esquina Potos�'),
(8, 'Sof�a Herrera', 'Baptista N� 987, esquina San Mart�n'),
(9, 'Miguel Torres', 'Antezana N� 321, esquina Ecuador'),
(10, 'Luc�a Ram�rez', 'Arce N� 5678, esquina La Paz'),
(11, 'Diego Vargas', 'Santiva�ez N� 2345, esquina Ayacucho'),
(12, 'Paula S�nchez', 'Colombia N� 876, esquina Ecuador'),
(13, 'Javier Mendoza', 'Am�rica N� 8765, esquina Hero�nas'),
(14, 'Valentina Romero', 'Potos� N� 5432, esquina Mariscal Santa Cruz'),
(15, 'Andr�s Castro', 'Ballivi�n N� 901, esquina Jord�n'),
(16, 'Camila Navarro', 'Espa�a N� 2345, esquina Oquendo'),
(17, 'Jorge R�os', '6 de Agosto N� 123, esquina Am�rica'),
(18, 'Isabella M�ndez', 'Melchor P�rez N� 876, esquina Baptista'),
(19, 'Gustavo Silva', 'Jun�n N� 6789, esquina Sucre'),
(20, 'Aquiles gusto','San Mart�n N� 4567, esquina Rodr�guez');
--llenado de servicios basicos
INSERT INTO SERVICIO_BASICO (COD_DOCUMENTACION, COD_INMUEBLE, COD_SERV_BASC, TIPO_DE_SERVICIO_BASICO, DETALLE_SERV_BASC)
VALUES
(1, 1, 1, 'Agua', 'Suministro de agua potable'),
(1, 1, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(2, 2, 1, 'Agua', 'Suministro de agua potable'),
(2, 2, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(3, 3, 1, 'Agua', 'Suministro de agua potable'),
(3, 3, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(4, 4, 1, 'Agua', 'Suministro de agua potable'),
(4, 4, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(5, 5, 1, 'Agua', 'Suministro de agua potable'),
(5, 5, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(6, 6, 1, 'Agua', 'Suministro de agua potable'),
(6, 6, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(7, 7, 1, 'Agua', 'Suministro de agua potable'),
(7, 7, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(8, 8, 1, 'Agua', 'Suministro de agua potable'),
(8, 8, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(9, 9, 1, 'Agua', 'Suministro de agua potable'),
(9, 9, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(10, 10, 1, 'Agua', 'Suministro de agua potable'),
(10, 10, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(11, 11, 1, 'Agua', 'Suministro de agua potable'),
(11, 11, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(12, 12, 1, 'Agua', 'Suministro de agua potable'),
(12, 12, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(13, 13, 1, 'Agua', 'Suministro de agua potable'),
(13, 13, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(14, 14, 1, 'Agua', 'Suministro de agua potable'),
(14, 14, 2, 'Electricidad', 'Suministro de energ�a el�ctrica'),

(15, 15, 1, 'Agua', 'Suministro de agua potable'),
(15, 15, 2, 'Electricidad', 'Suministro de energ�a el�ctrica');
--llenado telefono propietario
INSERT INTO TELEFONO_PROPIETARIO (COD_PROPIETARIO, COD_TELF_PR, TELF_PR, DETALLE_TELF_PR)
VALUES
(1, 1, '12345678', 'Tel�fono principal'),
(1, 2, '87654321', 'Tel�fono secundario'),

(2, 1, '98765432', 'Tel�fono principal'),
(2, 2, '23456789', 'Tel�fono secundario'),

(3, 1, '34567890', 'Tel�fono principal'),
(3, 2, '09876543', 'Tel�fono secundario'),

(4, 1, '56789012', 'Tel�fono principal'),
(4, 2, '34567890', 'Tel�fono secundario'),

(5, 1, '78901234', 'Tel�fono principal'),
(5, 2, '45678901', 'Tel�fono secundario'),

(6, 1, '90123456', 'Tel�fono principal'),
(6, 2, '56789012', 'Tel�fono secundario'),

(7, 1, '12345678', 'Tel�fono principal'),
(7, 2, '23456789', 'Tel�fono secundario'),

(8, 1, '34567890', 'Tel�fono principal'),
(8, 2, '45678901', 'Tel�fono secundario'),

(9, 1, '56789012', 'Tel�fono principal'),
(9, 2, '67890123', 'Tel�fono secundario'),

(10, 1, '78901234', 'Tel�fono principal'),
(10, 2, '89012345', 'Tel�fono secundario'),

(11, 1, '12345678', 'Tel�fono principal'),
(11, 2, '87654321', 'Tel�fono secundario'),

(12, 1, '98765432', 'Tel�fono principal'),
(12, 2, '23456789', 'Tel�fono secundario'),

(13, 1, '34567890', 'Tel�fono principal'),
(13, 2, '09876543', 'Tel�fono secundario'),

(14, 1, '56789012', 'Tel�fono principal'),
(14, 2, '34567890', 'Tel�fono secundario'),

(15, 1, '78901234', 'Tel�fono principal'),
(15, 2, '45678901', 'Tel�fono secundario'),

(16, 1, '90123456', 'Tel�fono principal'),
(16, 2, '56789012', 'Tel�fono secundario'),

(17, 1, '12345678', 'Tel�fono principal'),
(17, 2, '23456789', 'Tel�fono secundario'),

(18, 1, '34567890', 'Tel�fono principal'),
(18, 2, '45678901', 'Tel�fono secundario'),

(19, 1, '56789012', 'Tel�fono principal'),
(19, 2, '67890123', 'Tel�fono secundario'),

(20, 1, '78901234', 'Tel�fono principal'),
(20, 2, '89012345', 'Tel�fono secundario');
--llenado de dirreccion
INSERT INTO DIRECCION (COD_DIRECCION, UBICACION_MAPS, CALLE_PRINCIPAL, CALLES_COLINDANTES, ZONA, REFERENCIA)
VALUES
(1, 'https://maps.app.goo.gl/kDgPeEasdMNppgLs8', 'Calle Principal 1', 'Calle Secundaria 1, Calle Secundaria 2', 'Zona 1', 'Referencia 1'),
(2, 'https://maps.app.goo.gl/4aU4D6cyDoNfEeVk8', 'Calle Principal 2', 'Calle Secundaria 3, Calle Secundaria 4', 'Zona 2', 'Referencia 2'),
(3, 'https://maps.app.goo.gl/qieRrsFRGtdvgsCf7', 'Calle Secundaria 5, Calle Secundaria 6', 'Zona 3', 'Referencia 3'),
(4, 'https://maps.app.goo.gl/DZY7vurrUeRhHVZj9', 'Calle Principal 4', 'Calle Secundaria 7, Calle Secundaria 8', 'Zona 4', 'Referencia 4'),
(5, 'https://maps.app.goo.gl/YtkpfRQPbQxSWymn7', 'Calle Secundaria 9, Calle Secundaria 10', 'Zona 5', 'Referencia 5'),
(6, 'https://maps.app.goo.gl/C3LKqEcDG7t6gTcA7', 'Calle Principal 6', 'Calle Secundaria 11, Calle Secundaria 12', 'Zona 6', 'Referencia 6'),
(7, 'https://maps.app.goo.gl/EbHUvLwDXaWtpkiq7', 'Calle Principal 7', 'Calle Secundaria 13, Calle Secundaria 14', 'Zona 7', 'Referencia 7'),
(8, '2109876543', 'Calle Principal 8', 'Calle Secundaria 15, Calle Secundaria 16', 'Zona 8', 'Referencia 8'),
(9, '8765432109', 'Calle Principal 9', 'Calle Secundaria 17, Calle Secundaria 18', 'Zona 9', 'Referencia 9'),
(10, '5432109876', 'Calle Principal 10', 'Calle Secundaria 19, Calle Secundaria 20', 'Zona 10', 'Referencia 10'),
(11, '1029384756', 'Calle Principal 11', 'Calle Secundaria 21, Calle Secundaria 22', 'Zona 11', 'Referencia 11'),
(12, '9876543210', 'Calle Principal 12', 'Calle Secundaria 23, Calle Secundaria 24', 'Zona 12', 'Referencia 12'),
(13, '2468135790', 'Calle Principal 13', 'Calle Secundaria 25, Calle Secundaria 26', 'Zona 13', 'Referencia 13'),
(14, '1357924680', 'Calle Principal 14', 'Calle Secundaria 27, Calle Secundaria 28', 'Zona 14', 'Referencia 14'),
(15, '7890123456', 'Calle Principal 15', 'Calle Secundaria 29, Calle Secundaria 30', 'Zona 15', 'Referencia 15'),
(16, '5678901234', 'Calle Principal 16', 'Calle Secundaria 31, Calle Secundaria 31', 'Zona 116', 'Referencia 16'),
(17, '2468135790', 'Calle Principal 13', 'Calle Secundaria 25, Calle Secundaria 26', 'Zona 13', 'Referencia 13'),
(18, '1357924680', 'Calle Principal 14', 'Calle Secundaria 27, Calle Secundaria 28', 'Zona 14', 'Referencia 14'),
(19, '7890123456', 'Calle Principal 15', 'Calle Secundaria 29, Calle Secundaria 30', 'Zona 15', 'Referencia 15'),
(20, '5678901234', 'Calle Principal 16', 'Calle Secundaria 31, Calle Secundaria 31', 'Zona 116', 'Referencia 16');
--llenado empleado
INSERT INTO EMPLEADO (COD_EMPLEADO, COD_SUCURSAL, NOMBRE_EMPLEADO, DIRECCION_EMPLEADO)
VALUES
(1, 1, 'Juan P�rez', 'Calle Principal, Ciudad'),
(2, 1, 'Mar�a L�pez', 'Avenida Central, Ciudad'),
(3, 2, 'Carlos Garc�a', 'Calle Secundaria, Ciudad'),
(4, 2, 'Ana Rodr�guez', 'Avenida Norte, Ciudad'),
(5, 1, 'Pedro Mart�nez', 'Calle Sur, Ciudad');
--llenado telefono empleado
INSERT INTO TELEFONO_EMPLEADO (COD_EMPLEADO, COD_TELF_EMPL, TELF_EMPL, DETALLE_TELF_EMPL)
VALUES
(1, 1, '12345678', 'Tel�fono principal'),
(1, 2, '98765432', 'Tel�fono secundario'),
(2, 1, '55555555', 'Tel�fono principal'),
(2, 2, '99999999', 'Tel�fono secundario'),
(3, 1, '11111111', 'Tel�fono principal');
--salario
INSERT INTO SALARIO (COD_EMPLEADO, COD_SALARIO, MES_DE_PAGO, FECHA_DE_EMISION, SUELDO_FIJO)
VALUES
(1, 1, 'Enero 2023', '2023-01-15', 2500.00),
(2, 1, 'Enero 2023', '2023-01-15', 3000.00),
(3, 1, 'Enero 2023', '2023-01-15', 2000.00),
(4, 1, 'Enero 2023', '2023-01-15', 3500.00),
(5, 1, 'Enero 2023', '2023-01-15', 2800.00);

--llenado sucursal
INSERT INTO SUCURSAL (COD_SUCURSAL, DIRECCION_SUCURSAL)
VALUES
(1, 'Calle Principal, Ciudad'),
(2, 'Avenida Central, Ciudad'),
(3, 'Calle Secundaria, Ciudad');
--llenado telefono sucursal
INSERT INTO TELEFONO_SUCURSAL (COD_SUCURSAL, COD_TELF_SUC, TELF_SUC, DETALLE_TELF_SUC)
VALUES
(1, 1, '12345678', 'Tel�fono principal'),
(1, 2, '87654321', 'Tel�fono secundario'),
(2, 1, '11111111', 'Tel�fono de contacto');
--llenado requerimiento general
INSERT INTO REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO, COD_CLIENTE, COD_EMPLEADO, DETALLE_DE_REQUERIMIENTO, FECHA_DE_REGISTRO, PRECIO_MINIMO, PRECIO_MAXIMO, ESTADO_DE_INMUEBLE, TIPO_DE_INMUEBLE, ZONA_DE_PREFERENCIA, TIPO_DE_CONTRATO)
VALUES
(1, 1, 1, 'Busco una casa con jard�n', '2023-01-01', NULL, NULL, 'Disponible', 'Casa', 'Zona Norte', 'Venta'),
(2, 2, 2, 'Necesito un departamento c�ntrico', '2023-02-15', NULL, NULL, 'Disponible', 'Departamento', 'Zona Central', 'Alquiler'),
(3, 3, 3, 'Deseo un garzonier amueblado', '2023-03-10', NULL, NULL, 'Disponible', 'Garzonier', 'Zona Sur', 'Venta'),
(4, 4, 4, 'Quiero un lote con vista al mar', '2023-04-20', NULL, NULL, 'Disponible', 'Lote', 'Zona Costera', 'Venta'),
(5, 5, 5, 'Busco una vivienda con 3 dormitorios', '2023-05-05', NULL, NULL, 'Disponible', 'Vivienda', 'Zona Este', 'Alquiler');
--llenado medio de difusion
INSERT INTO MEDIO_DE_DIFUSION (COD_MD, COD_OFERTA, TIPO, DETALLE_MD)
VALUES
('MD001', 1, 'Internet', 'P�gina web'),
('MD002', 1, 'Radio', 'Emisora local'),
('MD003', 2, 'Internet', 'Redes sociales'),
('MD004', 2, 'Peri�dico', 'Anuncio clasificado'),
('MD005', 3, 'Internet', 'Banners publicitarios'),
('MD006', 3, 'Televisi�n', 'Canales locales'),
('MD007', 4, 'Internet', 'Marketing por correo electr�nico'),
('MD008', 4, 'Radio', 'Programa de entrevistas'),
('MD009', 5, 'Internet', 'Publicidad en l�nea'),
('MD010', 5, 'Peri�dico', 'Espacio publicitario'),
('MD011', 6, 'Internet', 'Marketing de contenidos'),
('MD012', 6, 'Televisi�n', 'Anuncios comerciales'),
('MD013', 7, 'Internet', 'Optimizaci�n de motores de b�squeda'),
('MD014', 7, 'Radio', 'Patrocinio de eventos'),
('MD015', 8, 'Internet', 'Publicidad en redes de b�squeda'),
('MD016', 8, 'Peri�dico', 'Suplemento especial'),
('MD017', 9, 'Internet', 'Publicidad en video'),
('MD018', 9, 'Televisi�n', 'Programa de cocina'),
('MD019', 10, 'Internet', 'Publicidad en aplicaciones m�viles'),
('MD020', 10, 'Radio', 'Concursos y sorteos');
-- telefono medio difusion
INSERT INTO TELEFONO_MEDIO_DIF (COD_MD, COD_TELF_MD, TELF_MD, DETALLE_TELF_MD)
VALUES
('MD001', 1, '12345678', 'Tel�fono principal'),
('MD001', 2, '87654321', 'Tel�fono secundario'),
('MD002', 1, '98765432', 'Tel�fono principal'),
('MD002', 2, '23456789', 'Tel�fono secundario'),
('MD003', 1, '34567890', 'Tel�fono principal'),
('MD003', 2, '09876543', 'Tel�fono secundario'),
('MD004', 1, '56789012', 'Tel�fono principal'),
('MD004', 2, '43210987', 'Tel�fono secundario'),
('MD005', 1, '78901234', 'Tel�fono principal'),
('MD005', 2, '76543210', 'Tel�fono secundario'),
('MD006', 1, '90123456', 'Tel�fono principal'),
('MD006', 2, '21098765', 'Tel�fono secundario'),
('MD007', 1, '23456789', 'Tel�fono principal'),
('MD007', 2, '54321098', 'Tel�fono secundario'),
('MD008', 1, '45678901', 'Tel�fono principal'),
('MD008', 2, '87654321', 'Tel�fono secundario'),
('MD009', 1, '67890123', 'Tel�fono principal'),
('MD009', 2, '09876543', 'Tel�fono secundario'),
('MD010', 1, '89012345', 'Tel�fono principal'),
('MD010', 2, '43210987', 'Tel�fono secundario');
--llenado cliente
INSERT INTO CLIENTE (COD_CLIENTE, NOMBRE_CLIENTE, DIRECCION_CLIENTE)
VALUES
(1, 'Juan P�rez', 'Calle Principal, Ciudad'),
(2, 'Mar�a L�pez', 'Avenida Central, Ciudad'),
(3, 'Carlos Garc�a', 'Calle Secundaria, Ciudad');
--telefono cliente
INSERT INTO TELEFONO_CLIENTE (COD_CLIENTE, COD_TELF_CL, TELF_CL, DETALLE_TELF_CL)
VALUES
(1, 1, '12345678', 'Tel�fono principal'),
(1, 2, '98765432', 'Tel�fono secundario'),
(2, 1, '87654321', 'Tel�fono principal');
-- llenado de contrato
INSERT INTO CONTRATO (COD_OFERTA, PAGO, FECHA_INI, FECHA_FIN, TIPO_CONTRATO, DETALLE_CONTRATO)
VALUES (1, 1500.00, '2023-01-01', '2023-12-31', 'Contrato de arrendamiento', 'Detalles del contrato'),
       (2, 2000.00, '2023-03-15', '2024-03-14', 'Contrato de compra-venta', 'Detalles del contrato'),
       (3, 1800.00, '2023-06-01', '2024-05-31', 'Contrato de alquiler', 'Detalles del contrato');
--llenadode video
INSERT INTO VIDEO (COD_OFERTA, VIDEO, DETALLE)
VALUES
(1, 'video1.mp4', 'Video promocional'),
(1, 'video2.mp4', 'Video informativo'),
(2, 'video3.mp4', 'Video de demostraci�n');
-- foto
INSERT INTO FOTO (COD_OFERTA, IMAGEN, DETALLE)
VALUES
(1, 'imagen1.jpg', 'Detalle de la foto 1'),
(1, 'imagen2.jpg', 'Detalle de la foto 2'),
(2, 'imagen3.jpg', 'Detalle de la foto 3');
--llenado de precio
INSERT INTO PRECIO (COD_OFERTA, COD_PRECIO, FECHA, MONTO)
VALUES
(1, 1, '2023-01-01', 100.00),
(1, 2, '2023-02-01', 150.00),
(1, 3, '2023-03-01', 200.00),
(2, 1, '2023-01-01', 120.00),
(2, 2, '2023-02-01', 180.00),
(2, 3, '2023-03-01', 240.00),
(3, 1, '2023-01-01', 90.00),
(3, 2, '2023-02-01', 135.00),
(3, 3, '2023-03-01', 180.00),
(4, 1, '2023-01-01', 80.00),
(4, 2, '2023-02-01', 120.00),
(4, 3, '2023-03-01', 160.00),
(5, 1, '2023-01-01', 110.00),
(5, 2, '2023-02-01', 165.00),
(5, 3, '2023-03-01', 220.00),
(6, 1, '2023-01-01', 95.00),
(6, 2, '2023-02-01', 142.50),
(6, 3, '2023-03-01', 190.00),
(7, 1, '2023-01-01', 130.00),
(7, 2, '2023-02-01', 195.00),
(7, 3, '2023-03-01', 260.00);
--transaccion
INSERT INTO TRANSACCION (COD_TRANSACCION, COD_SUCURSAL, COD_CONTRATO, FECHA, MONTO, COM_SUCUR, COM_EMPLEADO)
VALUES
(1, 1, 1, '2023-05-01', 1000.00, 50.00, 25.00),
(2, 1, 2, '2023-05-02', 2000.00, 100.00, 50.00),
(3, 2, 3, '2023-05-03', 1500.00, 75.00, 40.00);
-- reque cuantitativos
INSERT INTO REQUERIMIENTO_CUANTITATIVO (COD_REQUERIMIENTO, COD_REQ_CUANT, REQUERIMIENTO, CANTIDAD_MIN, CANTIDAD_MAX)
VALUES
(1, 1, 'Cantidad de productos', 10, 100),
(1, 2, 'N�mero de empleados', 5, 20),
(2, 1, 'Cantidad de estudiantes', 50, 200);
--requ cualitativos
INSERT INTO REQUERIMIENTO_CUALITATIVO (COD_REQUERIMIENTO, COD_REQ_CUALIT, REQUERIMIENTO, VALOR)
VALUES
(1, 1, 'Requerimiento 1', 'Valor 1'),
(1, 2, 'Requerimiento 2', 'Valor 2'),
(2, 1, 'Requerimiento 3', 'Valor 3');
-- llenado de ofertas
INSERT INTO OFERTA (COD_OFERTA, COD_EMPLEADO, COD_DOCUMENTACION, COD_INMUEBLE, MONTO_OFERTA, FECHA_INI_OFERTA, FECHA_FIN_OFERTA, TIPO_OFERTA)
VALUES
(1, 1, 1, 1, 150000, '2023-01-01', '2023-01-31', 'Descuento'),
(2, 2, 1, 2, 200000, '2023-02-01', '2023-02-28', 'Descuento'),
(3, 1, 2, 1, 180000, '2023-01-01', '2023-01-31', 'Descuento'),
(4, 2, 2, 2, 220000, '2023-02-01', '2023-02-28', 'Descuento'),
(5, 1, 3, 1, 160000, '2023-01-01', '2023-01-31', 'Descuento'),
(6, 2, 3, 2, 190000, '2023-02-01', '2023-02-28', 'Descuento'),
(7, 1, 4, 1, 170000, '2023-01-01', '2023-01-31', 'Descuento'),
(8, 2, 4, 2, 210000, '2023-02-01', '2023-02-28', 'Descuento'),
(9, 1, 5, 1, 175000, '2023-01-01', '2023-01-31', 'Descuento'),
(10, 2, 5, 2, 205000, '2023-02-01', '2023-02-28', 'Descuento'),
(11, 1, 6, 1, 185000, '2023-01-01', '2023-01-31', 'Descuento'),
(12, 2, 6, 2, 225000, '2023-02-01', '2023-02-28', 'Descuento'),
(13, 1, 7, 1, 165000, '2023-01-01', '2023-01-31', 'Descuento'),
(14, 2, 7, 2, 195000, '2023-02-01', '2023-02-28', 'Descuento'),
(15, 1, 8, 1, 155000, '2023-01-01', '2023-01-31', 'Descuento'),
(16, 2, 8, 2, 185000, '2023-02-01', '2023-02-28', 'Descuento'),
(17, 1, 9, 1, 165000, '2023-01-01', '2023-01-31', 'Descuento'),
(18, 2, 9, 2, 195000, '2023-02-01', '2023-02-28', 'Descuento'),
(19, 1, 10, 1, 155000, '2023-01-01', '2023-01-31', 'Descuento');
--coincidencia
INSERT INTO COINCIDENCIA (COD_COINCIDENCIA, COD_REQUERIMIENTO, COD_OFERTA, COINCIDENCIAS, FECHA_COINCIDENCIA)
VALUES
(1, 1, 1, 5, '2023-05-17 09:00:00'),
(2, 2, 2, 3, '2023-05-18 14:30:00'),
(3, 3, 3, 7, '2023-05-19 11:45:00');

