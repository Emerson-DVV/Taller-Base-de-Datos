USE INMOBILIARIA
/*==============================================================*/
/* Llenado de la tabla inmueble                                       */
/*==============================================================*/
INSERT INTO INMUEBLE (COD_INMUEBLE,COD_DOCUMENTACION,Superfice,COD_DIRECCION, ESTADO, DISPONIBLE, NUM_INMUEBLE, COD_CATASTRAL, NUM_MATRICULA, NUM_FOLIO, DETALLE, REFERENCIA)
VALUES
  (1,1,300,1, 'venta', 1, '111', 'CAT001', 'MAT001', 'FOL001', 'muros de piedra ', 'dueño directo'),
  (2,2,500,2, 'anticretico', 1, '122', 'CAT002', 'MAT002', 'FOL002', 'muros de ladrillo', 'dueño directo'),
  (3,3,200,3, 'alquiler', 1, 's/n', 'CAT003', 'MAT003', 'FOL003', 'rejas metalicas ', 'dueño directo'),
  (4,4,400,4, 'venta', 1, '004', 'CAT004', 'MAT004', 'FOL004', 'muros de ladrillo', 'oficinas'),
  (5,5,500,5, 'venta', 1, 's/n', 'CAT005', 'MAT005', 'FOL005', 'mmuros de piedra con camaras de seguridad', 'oficinas'),
  (6,6,200,6, 'venta', 1, '016', 'CAT006', 'MAT006', 'FOL006', 'puerta con sensores de movimiento', 'solo llamadas'),
  (7,7,100,7, 'alquiler', 1, '017', 'CAT007', 'MAT007', 'FOL007', 'camaras de seguridad', 'solo mensajes'),
  (8,8,200,8, 'alquiler', 1, 's/n', 'CAT008', 'MAT008', 'FOL008', 'puerta con sensores de movimiento', 'dueño directo'),
  (9,9,100,9, 'venta', 1, '109', 'CAT009', 'MAT009', 'FOL009', 'camaras de seguridad', 'dueño directo'),
  (10,10,120,10, 'venta', 1, 's/n', 'CAT010', 'MAT010', 'FOL010', 'camaras de seguridad', 'oficina'),
  (11,11,130,11, 'venta', 1, '011', 'CAT011', 'MAT011', 'FOL011', 'puerta con sensores de movimiento', 'oficina'),
  (12,12,140,12, 'anticretico', 1, '012', 'CAT012', 'MAT012', 'FOL012', 'ropero empotrado', 'oficina'),
  (13,13,150,13, 'anticretico', 1, '013', 'CAT013', 'MAT013', 'FOL013', 'ropero empotrado', 'oficina'),
  (14,14,160,14, 'alquiler', 1, '014', 'CAT014', 'MAT014', 'FOL014', 'ropero empotrado y camaras de seguridad', 'oficina'),
  (15,15,123,15, 'alquiler', 1, '015', 'CAT015', 'MAT015', 'FOL015', 'ventanas rotas', 'oficina'),
  (16,16,133,16, 'venta', 1, '016', 'CAT016', 'MAT016', 'FOL016', 'amurrallado', 'oficina'),
  (17,17,212,17, 'venta', 1, '017', 'CAT017', 'MAT017', 'FOL017', 'sin amurrallar', 'gerente'),
  (18,18,321,18, 'venta', 1, '231', 'CAT017', 'MAT017', 'FOL017', 'sin amurrallar', 'gerente'),
  (19,19,200,19, 'venta', 1, '101', 'CAT017', 'MAT017', 'FOL017', 'amurrallado', 'gerente'),
  (20,20,121,20 'venta', 1, '118', 'CAT018', 'MAT018', 'FOL018', 'amurrallado', 'gerente');
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
(11, 11, 11, 11, 1, 2, 'baño compartido'),
(12, 12, 12, 12, 0, 1, 'baño compartido'),
(13, 13, 13, 13, 1, 2, 'baño privado'),
(14, 14, 14, 14, 1, 3, 'baño privado'),
(15, 15, 15, 15, 0, 2, 'baño compartido');
--llenado de la tabla lote

INSERT INTO LOTE (COD_DOCUMENTACION, COD_INMUEBLE, COD_LOTE, COD_DIRECCION, USU_ACTUAL, TOPOGRAFIA, DETALLE_CASA)
VALUES
(16, 16, 16, 16, 'agricultura', 'Plana', 'tierra fertil'),
(17, 17, 17, 17, 'ganaderia', 'Inclinada', 'tierra con esconbros'),
(18, 18, 18, 18, 'terreno', 'Plana', 'tierra arena'),
(19, 19, 19, 19, 'agricultura', 'Inclinada', 'tierra fertil'),
(20, 20, 20, 20, 'agricultura', 'Plana', 'tierra fertil');
--llenado de la tabla vivienda

INSERT INTO VIVIENDA (COD_DOCUMENTACION, COD_INMUEBLE, COD_VIVIENDA, COD_DIRECCION, NUM_DORMITORIOS,NUM_BAÑOS, SALA, COMEDOR, COCINA)
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
(1, 'Juan Pérez', 'Jordan Nº 202, esquina Nataniel Aguirre'),
(2, 'María López', 'Sucre Nº 456, esquina Ballivián'),
(3, 'Carlos García', 'Murillo Nº 789, esquina Pando'),
(4, 'Ana Rodríguez', 'Ayacucho Nº 567, esquina Sucre'),
(5, 'Pedro Martínez', 'Rodríguez Nº 890, esquina Junín'),
(6, 'Laura Fernández', 'Oquendo Nº 4321, esquina Melchor Pérez'),
(7, 'Luis González', 'Jordán Nº 678, esquina Potosí'),
(8, 'Sofía Herrera', 'Baptista Nº 987, esquina San Martín'),
(9, 'Miguel Torres', 'Antezana Nº 321, esquina Ecuador'),
(10, 'Lucía Ramírez', 'Arce Nº 5678, esquina La Paz'),
(11, 'Diego Vargas', 'Santivañez Nº 2345, esquina Ayacucho'),
(12, 'Paula Sánchez', 'Colombia Nº 876, esquina Ecuador'),
(13, 'Javier Mendoza', 'América Nº 8765, esquina Heroínas'),
(14, 'Valentina Romero', 'Potosí Nº 5432, esquina Mariscal Santa Cruz'),
(15, 'Andrés Castro', 'Ballivián Nº 901, esquina Jordán'),
(16, 'Camila Navarro', 'España Nº 2345, esquina Oquendo'),
(17, 'Jorge Ríos', '6 de Agosto Nº 123, esquina América'),
(18, 'Isabella Méndez', 'Melchor Pérez Nº 876, esquina Baptista'),
(19, 'Gustavo Silva', 'Junín Nº 6789, esquina Sucre'),
(20, 'Aquiles gusto','San Martín Nº 4567, esquina Rodríguez');
--llenado de servicios basicos
INSERT INTO SERVICIO_BASICO (COD_DOCUMENTACION, COD_INMUEBLE, COD_SERV_BASC, TIPO_DE_SERVICIO_BASICO, DETALLE_SERV_BASC)
VALUES
(1, 1, 1, 'Agua', 'Suministro de agua potable'),
(1, 1, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(2, 2, 1, 'Agua', 'Suministro de agua potable'),
(2, 2, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(3, 3, 1, 'Agua', 'Suministro de agua potable'),
(3, 3, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(4, 4, 1, 'Agua', 'Suministro de agua potable'),
(4, 4, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(5, 5, 1, 'Agua', 'Suministro de agua potable'),
(5, 5, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(6, 6, 1, 'Agua', 'Suministro de agua potable'),
(6, 6, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(7, 7, 1, 'Agua', 'Suministro de agua potable'),
(7, 7, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(8, 8, 1, 'Agua', 'Suministro de agua potable'),
(8, 8, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(9, 9, 1, 'Agua', 'Suministro de agua potable'),
(9, 9, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(10, 10, 1, 'Agua', 'Suministro de agua potable'),
(10, 10, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(11, 11, 1, 'Agua', 'Suministro de agua potable'),
(11, 11, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(12, 12, 1, 'Agua', 'Suministro de agua potable'),
(12, 12, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(13, 13, 1, 'Agua', 'Suministro de agua potable'),
(13, 13, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(14, 14, 1, 'Agua', 'Suministro de agua potable'),
(14, 14, 2, 'Electricidad', 'Suministro de energía eléctrica'),

(15, 15, 1, 'Agua', 'Suministro de agua potable'),
(15, 15, 2, 'Electricidad', 'Suministro de energía eléctrica');
--llenado telefono propietario
INSERT INTO TELEFONO_PROPIETARIO (COD_PROPIETARIO, COD_TELF_PR, TELF_PR, DETALLE_TELF_PR)
VALUES
(1, 1, '715-12345', 'Teléfono principal'),
(1, 2, '791-25846', 'Teléfono secundario'),

(2, 1, '718-64329', 'Teléfono principal'),
(2, 2, '729-41758', 'Teléfono secundario'),

(3, 1, '747-49236', 'Teléfono principal'),
(3, 2, '791-25846', 'Teléfono secundario'),

(4, 1, '718-64329', 'Teléfono principal'),
(4, 2, '747-49236', 'Teléfono secundario'),

(5, 1, '772-68345', 'Teléfono principal'),
(5, 2, '738-56127', 'Teléfono secundario'),

(6, 1, '738-56127', 'Teléfono principal'),
(6, 2, '729-41758', 'Teléfono secundario'),

(7, 1, '729-41758', 'Teléfono principal'),
(7, 2, '715-12345', 'Teléfono secundario'),

(8, 1, '725-97483', 'Teléfono principal'),
(8, 2, '791-25846', 'Teléfono secundario'),

(9, 1, '718-64329', 'Teléfono principal'),
(9, 2, '729-41758', 'Teléfono secundario'),

(10, 1, '729-41758', 'Teléfono principal'),
(10, 2, '764-19827', 'Teléfono secundario'),

(11, 1, '738-56127', 'Teléfono principal'),
(11, 2, '764-19827', 'Teléfono secundario'),

(12, 1, '764-19827', 'Teléfono principal'),
(12, 2, '725-97483', 'Teléfono secundario'),

(13, 1, '747-49236', 'Teléfono principal'),
(13, 2, '738-56127', 'Teléfono secundario'),

(14, 1, '729-41758', 'Teléfono principal'),
(14, 2, '725-97483', 'Teléfono secundario'),

(15, 1, '747-49236', 'Teléfono principal'),
(15, 2, '772-68345', 'Teléfono secundario'),

(16, 1, '747-49236', 'Teléfono principal'),
(16, 2, '729-41758', 'Teléfono secundario'),

(17, 1, '752-42639', 'Teléfono principal'),
(17, 2, '772-68345', 'Teléfono secundario'),

(18, 1, '752-42639', 'Teléfono principal'),
(18, 2, '793-61584', 'Teléfono secundario'),

(19, 1, '752-42639', 'Teléfono principal'),
(19, 2, '772-68345', 'Teléfono secundario'),

(20, 1, '729-41758', 'Teléfono principal'),
(20, 2, '729-41758', 'Teléfono secundario');
--llenado de dirreccion
INSERT INTO DIRECCION (COD_DIRECCION, UBICACION_MAPS, CALLE_PRINCIPAL, CALLES_COLINDANTES, ZONA, REFERENCIA)
VALUES
(1, 'https://maps.app.goo.gl/kDgPeEasdMNppgLs8', 'Av. Circunvalacion', 'Rene Fernandez-Maria Quiroga Vargas', 'Noreste', 'Frente al cajero'),
(2, 'https://maps.app.goo.gl/4aU4D6cyDoNfEeVk8', 'R. Bustamante', 'Jose Pol-Carlos la Torre', 'Central', 'Dos arboles Santa Rita'),
(3, 'https://maps.app.goo.gl/qieRrsFRGtdvgsCf7', 'Av. 16 de Julio', 'Callejon', 'Noroeste', 'Rejas negras'),
(4, 'https://maps.app.goo.gl/DZY7vurrUeRhHVZj9', 'A. Villavicencio-Av. Beiging', 'Los Cedros-Jacinto Anaya', 'Noroeste', 'Frente al parque'),
(5, 'https://maps.app.goo.gl/YtkpfRQPbQxSWymn7', 'Av. Litoral-Sarmiento', 'Melcho Perez de Olguin- C.G. Gamarra', 'Norte', 'Arbusto pequeño'),
(6, 'https://maps.app.goo.gl/C3LKqEcDG7t6gTcA7', 'av. Capitan Victor Ustariz', 'rejas con Planta Santa rita', 'Noroeste', 'Frente a la cancha'),
(7, 'https://maps.app.goo.gl/EbHUvLwDXaWtpkiq7', 'Av. 9 de Abril', 'Los Cedros-Jacinto Anaya', 'Norte', 'Arbusto pequeño'),
(8, 'https://maps.app.goo.gl/1jRz6i2wAPnhXxiy7', 'Av. Reducto', 'J. Castillo-J. Calderon', 'Este', 'Calle de piedra'),
(9, 'https://maps.app.goo.gl/B1z1RpSSXHt6FmvX9', 'Av. Reducto', 'Los Cedros-Jacinto Anaya', 'Este', 'Frente a la cancha'),
(10, 'https://maps.app.goo.gl/oMyrLLqcRKEw3BZG7', 'Av. Circunvalacion', 'J. Castillo-J. Calderon', 'Sur', 'Techo de tejas rojas'),
(11, 'https://maps.app.goo.gl/Cesn2xBSQNujJuqs6', 'Mariano Melgarejo', 'Luis Castel Quiroga-Heroes de Boqueron', 'Central', 'Techo de tejas rojas'),
(12, 'https://maps.app.goo.gl/jCgLR4NkwY7rjVyM9', 'Martin Cardenas', 'Punata-Honduras', 'Sur', 'Calle de piedra'),
(13, 'https://maps.app.goo.gl/W5SnfqUGELb72hL3A', 'Abel Rivas', 'Punata-Honduras', 'Central', 'Calle de piedra'),
(14, 'https://maps.google.com/?cid=4894438051817710370&entry=gps', 'Av. dorgbiny', 'N. Rios-M.Padilla', 'Central', 'Frente a la cancha'),
(15, 'https://maps.app.goo.gl/JjYHMhV42c9VyjC49', 'Papa Alejandro VI', 'Av. Petrolera', 'Sur', 'Frente a la cancha'),
(16, 'https://maps.app.goo.gl/moHuM9u72Uu4shFMA', 'Grover Suarez', 'Calle Villar-SipeSipe', 'Este', 'Parque del arquitecto'),
(17, 'https://maps.app.goo.gl/RHUJRsAsL8mXcyzb6', 'Papa Alejandro VI', 'Punata-Honduras', 'Este', 'Frente a segip'),
(18, 'https://goo.gl/maps/2zoCxyugMwv426hM8', 'Av. dorgbiny', 'J. Arauco', 'Este', 'Frente al mercado'),
(19, 'https://maps.app.goo.gl/9ByyYgxfSWrKTfVg6', 'Grover Suarez', 'D. Camacho-J. Chavez', 'Este', 'Frente al mercado'),
(20, 'https://maps.app.goo.gl/htWhw4zdbeFUyt8j8', 'Grover Suarez', 'Calle Secundaria 31, Calle Secundaria 31', 'Central', 'Cerca la gutyfood');
--llenado empleado
INSERT INTO EMPLEADO (COD_EMPLEADO, COD_SUCURSAL, NOMBRE_EMPLEADO, DIRECCION_EMPLEADO)
VALUES
(1, 1, 'Juan Pérez', 'Calle Antezana Nº 456, esquina Junín'),
(2, 1, 'María López', 'Avenida América Nº 789, esquina Santivañez'),
(3, 2, 'Carlos García', 'Pasaje Ayacucho Nº 321, esquina Potosí'),
(4, 2, 'Ana Rodríguez', 'Calle Ballivián Nº 567, esquina Sucre');

--llenado telefono empleado
INSERT INTO TELEFONO_EMPLEADO (COD_EMPLEADO, COD_TELF_EMPL, TELF_EMPL, DETALLE_TELF_EMPL)
VALUES
(1, 1, '721-98765', 'Teléfono principal'),
(1, 2, '732-24680', 'Teléfono secundario'),
(2, 1, '761-13579', 'Teléfono principal'),
(2, 2, '774-86420', 'Teléfono secundario'),
(3, 1, '782-36987', 'Teléfono principal'),
(4, 1, '791-25846', 'Teléfono principal');
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
(1, 'San Martín Nº 4567, esquina Rodríguez'),
(2, 'Avenida Central, Ciudad'),
(3, 'Calle Secundaria, Ciudad');
--llenado telefono sucursal
INSERT INTO TELEFONO_SUCURSAL (COD_SUCURSAL, COD_TELF_SUC, TELF_SUC, DETALLE_TELF_SUC)
VALUES
(1, 1, '12345678', 'Teléfono principal'),
(1, 2, '87654321', 'Teléfono secundario'),
(2, 1, '11111111', 'Teléfono de contacto');
--llenado requerimiento general
INSERT INTO REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO, COD_CLIENTE, COD_EMPLEADO, DETALLE_DE_REQUERIMIENTO, FECHA_DE_REGISTRO, PRECIO_MINIMO, PRECIO_MAXIMO, ESTADO_DE_INMUEBLE, TIPO_DE_INMUEBLE, ZONA_DE_PREFERENCIA, TIPO_DE_CONTRATO)
VALUES
(1, 1, 1, 'Busco una casa con jardín', '2023-01-01', NULL, NULL, 'Disponible', 'Casa', 'Zona Norte', 'Venta'),
(2, 2, 2, 'Necesito un departamento céntrico', '2023-02-15', NULL, NULL, 'Disponible', 'Departamento', 'Zona Central', 'Alquiler'),
(3, 3, 3, 'Deseo un garzonier amueblado', '2023-03-10', NULL, NULL, 'Disponible', 'Garzonier', 'Zona Sur', 'Venta'),
(4, 4, 4, 'Quiero un lote con vista al mar', '2023-04-20', NULL, NULL, 'Disponible', 'Lote', 'Zona Costera', 'Venta'),
(5, 5, 5, 'Busco una vivienda con 3 dormitorios', '2023-05-05', NULL, NULL, 'Disponible', 'Vivienda', 'Zona Este', 'Alquiler');
--llenado medio de difusion
INSERT INTO MEDIO_DE_DIFUSION (COD_MD, COD_OFERTA, TIPO, DETALLE_MD)
VALUES
('MD001', 1, 'Internet', 'Página web'),
('MD002', 1, 'Radio', 'Emisora local'),
('MD003', 2, 'Internet', 'Redes sociales'),
('MD004', 2, 'Periódico', 'Anuncio clasificado'),
('MD005', 3, 'Internet', 'Banners publicitarios'),
('MD006', 3, 'Televisión', 'Canales locales'),
('MD007', 4, 'Internet', 'Marketing por correo electrónico'),
('MD008', 4, 'Radio', 'Programa de entrevistas'),
('MD009', 5, 'Internet', 'Publicidad en línea'),
('MD010', 5, 'Periódico', 'Espacio publicitario'),
('MD011', 6, 'Internet', 'Marketing de contenidos'),
('MD012', 6, 'Televisión', 'Anuncios comerciales'),
('MD013', 7, 'Internet', 'Optimización de motores de búsqueda'),
('MD014', 7, 'Radio', 'Patrocinio de eventos'),
('MD015', 8, 'Internet', 'Publicidad en redes de búsqueda'),
('MD016', 8, 'Periódico', 'Suplemento especial'),
('MD017', 9, 'Internet', 'Publicidad en video'),
('MD018', 9, 'Televisión', 'Programa de cocina'),
('MD019', 10, 'Internet', 'Publicidad en aplicaciones móviles'),
('MD020', 10, 'Radio', 'Concursos y sorteos');
-- telefono medio difusion
INSERT INTO TELEFONO_MEDIO_DIF (COD_MD, COD_TELF_MD, TELF_MD, DETALLE_TELF_MD)
VALUES
('MD001', 1, '12345678', 'Teléfono principal'),
('MD001', 2, '87654321', 'Teléfono secundario'),
('MD002', 1, '98765432', 'Teléfono principal'),
('MD002', 2, '23456789', 'Teléfono secundario'),
('MD003', 1, '34567890', 'Teléfono principal'),
('MD003', 2, '09876543', 'Teléfono secundario'),
('MD004', 1, '56789012', 'Teléfono principal'),
('MD004', 2, '43210987', 'Teléfono secundario'),
('MD005', 1, '78901234', 'Teléfono principal'),
('MD005', 2, '76543210', 'Teléfono secundario'),
('MD006', 1, '90123456', 'Teléfono principal'),
('MD006', 2, '21098765', 'Teléfono secundario'),
('MD007', 1, '23456789', 'Teléfono principal'),
('MD007', 2, '54321098', 'Teléfono secundario'),
('MD008', 1, '45678901', 'Teléfono principal'),
('MD008', 2, '87654321', 'Teléfono secundario'),
('MD009', 1, '67890123', 'Teléfono principal'),
('MD009', 2, '09876543', 'Teléfono secundario'),
('MD010', 1, '89012345', 'Teléfono principal'),
('MD010', 2, '43210987', 'Teléfono secundario');
--llenado cliente
INSERT INTO CLIENTE (COD_CLIENTE, NOMBRE_CLIENTE, DIRECCION_CLIENTE)
VALUES
(1, 'Juan Pérez', 'Calle Principal, Ciudad'),
(2, 'María López', 'Avenida Central, Ciudad'),
(3, 'Carlos García', 'Calle Secundaria, Ciudad');
--telefono cliente
INSERT INTO TELEFONO_CLIENTE (COD_CLIENTE, COD_TELF_CL, TELF_CL, DETALLE_TELF_CL)
VALUES
(1, 1, '12345678', 'Teléfono principal'),
(1, 2, '98765432', 'Teléfono secundario'),
(2, 1, '87654321', 'Teléfono principal');
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
(2, 'video3.mp4', 'Video de demostración');
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
(1, 2, 'Número de empleados', 5, 20),
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

