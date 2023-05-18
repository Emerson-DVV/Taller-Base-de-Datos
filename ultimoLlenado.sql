
--llenado de dirreccion
--use Inmobiliaria
INSERT INTO DIRECCION (COD_DIRECCION, ZONA, UBICACION_MAPS, CALLE_PRINCIPAL, CALLE_COLINDANTE, DETALLE_DIR )
VALUES
(1, 'Noreste','https://maps.app.goo.gl/kDgPeEasdMNppgLs8', 'Av. Circunvalacion', 'Rene Fernandez-Maria Quiroga Vargas',  'Frente al cajero'),
(2, 'Centro','https://maps.app.goo.gl/4aU4D6cyDoNfEeVk8', 'R. Bustamante', 'Jose Pol-Carlos la Torre',  'Dos arboles Santa Rita'),
(3, 'Oeste','https://maps.app.goo.gl/qieRrsFRGtdvgsCf7', 'Av. 16 de Julio', 'Callejon',  'Rejas negras'),
(4,  'Noroeste','https://maps.app.goo.gl/DZY7vurrUeRhHVZj9', 'A. Villavicencio-Av. Beiging', 'Los Cedros-Jacinto Anaya', 'Frente al parque'),
(5, 'Norte', 'https://maps.app.goo.gl/YtkpfRQPbQxSWymn7', 'Av. Litoral-Sarmiento', 'Melcho Perez de Olguin- C.G. Gamarra', 'Arbusto pequeño'),
(6,  'Oeste','https://maps.app.goo.gl/C3LKqEcDG7t6gTcA7', 'av. Capitan Victor Ustariz', 'rejas con Planta Santa rita', 'Frente a la cancha'),
(7,  'Norte','https://maps.app.goo.gl/EbHUvLwDXaWtpkiq7', 'Av. 9 de Abril', 'Los Cedros-Jacinto Anaya', 'Arbusto pequeño'),
(8, 'Este', 'https://maps.app.goo.gl/1jRz6i2wAPnhXxiy7', 'Av. Reducto', 'J. Castillo-J. Calderon', 'Calle de piedra'),
(9,  'Este','https://maps.app.goo.gl/B1z1RpSSXHt6FmvX9', 'Av. Reducto', 'Los Cedros-Jacinto Anaya', 'Frente a la cancha'),
(10, 'Sur', 'https://maps.app.goo.gl/oMyrLLqcRKEw3BZG7', 'Av. Circunvalacion', 'J. Castillo-J. Calderon', 'Techo de tejas rojas'),
(11, 'Central','https://maps.app.goo.gl/Cesn2xBSQNujJuqs6', 'Mariano Melgarejo', 'Luis Castel Quiroga-Heroes de Boqueron',  'Techo de tejas rojas'),
(12, 'Sur','https://maps.app.goo.gl/jCgLR4NkwY7rjVyM9', 'Martin Cardenas', 'Punata-Honduras',  'Calle de piedra'),
(13,'Centro',  'https://maps.app.goo.gl/W5SnfqUGELb72hL3A', 'Abel Rivas', 'Punata-Honduras', 'Calle de piedra'),
(14, 'Centro', 'https://maps.google.com/?cid=4894438051817710370&entry=gps', 'Av. dorgbiny', 'N. Rios-M.Padilla', 'Frente a la cancha'),
(15, 'Sur','https://maps.app.goo.gl/JjYHMhV42c9VyjC49', 'Papa Alejandro VI', 'Av. Petrolera',  'Frente a la cancha'),
(16, 'Este', 'https://maps.app.goo.gl/moHuM9u72Uu4shFMA', 'Grover Suarez', 'Calle Villar-SipeSipe', 'Parque del arquitecto'),
(17, 'Norte','https://maps.app.goo.gl/RHUJRsAsL8mXcyzb6', 'Papa Alejandro VI', 'Punata-Honduras',  'Frente a segip'),
(18, 'Este', 'https://goo.gl/maps/2zoCxyugMwv426hM8', 'Av. dorgbiny', 'J. Arauco', 'Frente al mercado'),
(19, 'Oeste','https://maps.app.goo.gl/9ByyYgxfSWrKTfVg6', 'Grover Suarez', 'D. Camacho-J. Chavez',  'Frente al mercado'),
(20,  'Centro','https://maps.app.goo.gl/htWhw4zdbeFUyt8j8', 'Grover Suarez', 'D. Camacho-J. Chavez', 'Cerca la gutyfood');
--llenado de documentacion
INSERT INTO DOCUMENTACION (COD_DOCUMENTACION, CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA, DETALLE_DOC)
VALUES
(1, 1, 1, 1, 1, 'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(2, 1, 0, 1, 0,'CERTF_DE_GRAVAMENES, CERTIFICADO_NO_ADEUDO_DE_IMPUEST'),
(3, 1, 1, 0, 1,'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO, MINUTA_COMPRA_VENTA'),
(4, 0, 1, 1, 1,' PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(5, 1, 1, 1, 0,'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST'),
(6, 1, 0, 0, 1,'CERTF_DE_GRAVAMENES, MINUTA_COMPRA_VENTA'),
(7, 0, 1, 0, 0,' PLANO_USO_SUELO'),
(8, 1, 1, 1, 1,'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(9, 0, 0, 1, 1,'CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(10, 1, 1, 0, 0,'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO'),
(11, 1, 0, 1, 1,'CERTF_DE_GRAVAMENES,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(12, 0, 1, 1, 1, ' PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(13, 1, 1, 0, 1,'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO, MINUTA_COMPRA_VENTA'),
(14, 0, 1, 1, 0, ' PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST'),
(15, 1, 0, 0, 1, 'CERTF_DE_GRAVAMENES, MINUTA_COMPRA_VENTA'),
(16, 1, 1, 1, 1, 'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(17, 0, 0, 1, 1,'CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(18, 1, 1, 0, 0, 'CERTF_DE_GRAVAMENES, PLANO_USO_SUELO,'),
(19, 1, 0, 1, 1, 'CERTF_DE_GRAVAMENES,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA'),
(20, 0, 1, 1, 1, ' PLANO_USO_SUELO,CERTIFICADO_NO_ADEUDO_DE_IMPUEST, MINUTA_COMPRA_VENTA');
/*==============================================================*/
/* Llenado de la tabla inmueble                                       */
/*==============================================================*/
INSERT INTO INMUEBLE (COD_INMUEBLE,COD_DOCUMENTACION,COD_DIRECCION,SUPERFICIE, DISPONIBLE, NUM_INMUEBLE)
VALUES
  (1,1,1,300,  1, '111'),
  (2,2,2,500,  1, '122'),
  (3,3,3,200,  1, 's/n'),
  (4,4,4,400,  1, '004'),
  (5,5,5,500,  1, 's/n'),
  (6,6,6,600,  1, '016'),
  (7,7,7,100,  1, '017'),
  (8,8,8,160,  1, 's/n'),
  (9,9,9,200,  1, '109'),
  (10,10,10,150,  1, 's/n'),
  (11,11,11,211,  1, '011'),
  (12,12,12,212,  1, '012'),
  (13,13,13,313,  1, '013'),
  (14,14,14,214,  1, '014'),
  (15,15,15,150,  1, '015'),
  (16,16,16,216,  1, '016'),
  (17,17,17,217,  1, '017'),
  (18,18,18,318,  1, '231'),
  (19,19,19,319,  1, '101'),
  (20,20,20,420, 1, '118');

--llenado de la tabla vivienda
INSERT INTO VIVIENDA ( COD_INMUEBLE, NUM_DORMITORIOS,NUM_BANOS,ANTI_CONST, SALA, COMEDOR, COCINA)
VALUES
( 1, 1, 2,100, 1, 1, 1),
( 2, 1, 1,80, 1, 1, 1),
( 3, 0, 3,120, 1, 0, 1),
( 4, 0, 1,150, 1, 1, 1),
( 5, 1, 1,190, 1, 0, 1),
( 6, 1, 2,150, 1, 1, 1),
( 7, 0, 2,120, 0, 0, 1),
( 8, 1, 2,122,1, 1, 0),
( 9, 3, 2,111, 0, 1, 1),
( 10, 2, 1,10, 1, 1, 0),
( 11, 1, 2,14, 0, 1, 1),
( 12, 3, 2,2, 1, 1, 1),
( 13, 4, 2,6, 1, 1, 1),
( 14, 2, 2,8, 0, 0, 0),
( 15, 2, 2,111, 0, 1, 1);
/*==============================================================*/
/* Llenado de la tabla casa                                       */
/*==============================================================*/
INSERT INTO CASA ( COD_INMUEBLE ,SUPERFICIE_DE_CONTRUCCION, NUM_DE_PLANTAS, PATIO, GARAJE, DETALLE_CASA)
VALUES
( 1, 150.5, 2, 1, 1,  'medias aguas'),
( 2,  200.2, 3, 0, 1,  'sin alcantarillado'),
( 3,  180.0, 2, 1, 0,  'medias aguas'),
( 4, 120.7, 1, 0, 1,  'obra fina'),
( 5,  250.0, 3, 1, 1,  'obra fina');
-- llenado de la tabla departamento

INSERT INTO DEPARTAMENTO (COD_INMUEBLE, NUM_PISO, PERMISO_MASCOTAS, NUM_ESTACIONAMIENTO, DETALLE_DPTO)
VALUES
( 6, 2, 1, 'A1', 'piso madera'),
( 7, 10, 0, 'B2', 'piso ceramica'),
( 8,  8, 1, 'C3', 'sin ventanas'),
( 9,  7, 0, 'D4', 'amoblado'),
( 10,  6, 1, 'E5', 'piso madera');
-- llenado de la tabla garzonier

INSERT INTO GARZONIER (COD_INMUEBLE, AMUEBLADO, CAP_MAX_DE_INQ, DETALLE_GARZONIER)
VALUES
( 11,  1, 2, 'baño compartido'),
( 12,  0, 1, 'baño compartido'),
( 13,  1, 2, 'baño privado'),
( 14,  1, 3, 'baño privado'),
( 15,  0, 2, 'baño compartido');
--llenado de la tabla lote

INSERT INTO LOTE ( COD_INMUEBLE, USO_ACTUAL, TOPOGRAFIA, DETALLE_LOTE)
VALUES
(16,  'agricultura', 'Plana', 'tierra fertil'),
(17,  'ganaderia', 'Inclinada', 'tierra con esconbros'),
(18,  'terreno', 'Plana', 'tierra arena'),
(19,  'agricultura', 'Inclinada', 'tierra fertil'),
(20,  'agricultura', 'Plana', 'tierra fertil');
--llenado de servicios basicos

INSERT INTO PROPIETARIO (COD_PROPIETARIO, NOMBRE_PR, DIRRECCION_PR)
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
--llenado telefono propietario
INSERT INTO TELEFONO_PROPIETARIO (COD_PROPIETARIO, COD_TELF_PR, TELF_PR, DETALLE_TEFL_PR)
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
--llenado tabla posee
INSERT INTO POSEE (COD_POSEE, COD_INMUEBLE, COD_PROPIETARIO, FECHA_REGISTRO)
VALUES
(1, 1, 1, '2020-01-01'),
(2, 2, 2, '2022-02-01'),
(3, 3, 3, '2021-03-01'),
(4, 4, 4, '2022-04-01'),
(5, 5, 5, '2020-05-01'),
(6, 6, 6, '2019-06-01'),
(7, 7, 7, '2000-07-01'),
(8, 8, 8, '2000-08-01'),
(9, 9, 9, '2000-09-01'),
(10, 10, 10, '2011-10-01'),
(11, 11, 11, '2011-11-01'),
(12, 12, 12, '2011-12-01'),
(13, 13, 13, '2011-01-01'),
(14, 14, 14, '2012-02-01'),
(15, 15, 15, '2012-03-01'),
(16, 16, 16, '2013-04-01'),
(17, 17, 17, '2015-05-01'),
(18, 18, 18, '2022-06-01'),
(19, 19, 19, '2021-07-01'),
(20, 20, 20, '2020-08-01');

--llenado empleado
INSERT INTO EMPLEADO (COD_EMPLEADO, NOMBRE_EMPL, DIRECCION_EMPL)
VALUES
(1,  'Juan Pérez', 'Calle Antezana Nº 456, esquina Junín'),
(2,  'María López', 'Avenida América Nº 789, esquina Santivañez'),
(3,  'Carlos García', 'Pasaje Ayacucho Nº 321, esquina Potosí'),
(4,  'Ana Rodríguez', 'Calle Ballivián Nº 567, esquina Sucre');

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
INSERT INTO SALARIO (COD_EMPLEADO, COD_SALARIO,  FECHA_SALARIO, SUELDO_FIJO)
VALUES
(1, 1,  '2023-01-15', 2500.00),
(2, 1,  '2023-01-15', 3000.00),
(3, 1,  '2023-01-15', 2000.00),
(4, 1,  '2023-01-15', 3500.00),

(1, 2,  '2023-02-15', 2500.00),
(2, 2, '2023-02-15', 3000.00),
(3, 2,  '2023-02-15', 2000.00),
(4, 2,  '2023-02-15', 3500.00);

--cliente
INSERT INTO CLIENTE (COD_CLIENTE, NOMBRE_CL, DIRECCION_CL)
VALUES
(1, 'Juan Pérez', 'Avenida Colombia Nº 987, esquina Avaroa'),
(2, 'María López', 'Pasaje Díaz Nº 123, esquina Vargas'),
(3, 'Carlos García', 'Calle Antezana Nº 456, esquina Junín'),
(4, 'Andres Rodriguez', 'Calle Ballivián Nº 567, esquina Sucre'),
(5, 'Juan García', 'Pasaje Ayacucho Nº 321, esquina Potosí');

--telefono cliente
INSERT INTO TELEFONO_CLIENTE (COD_CLIENTE, COD_TELF_CL, TELF_CL, DETALLE_TELF_CL)
VALUES
(1, 1, '715-12345', 'Teléfono principal'),
(1, 2, '732-24680', 'Teléfono secundario'),
(2, 1, '761-13579', 'Teléfono principal');

-- llenado de ofertas
INSERT INTO OFERTA (COD_OFERTA, COD_EMPLEADO, COD_INMUEBLE, FECHA_INI_OFERTA, FECHA_FIN_OFERTA, TIPO_OFERTA)
VALUES
(1, 1, 1, '2023-06-01', '2023-07-01', 'Alquiler'),
(2, 2, 2, '2023-02-01', '2023-03-28', 'Anticretico'),
(3, 3, 2, '2023-08-20', '2023-09-20', 'Venta'),
(4, 2, 3 , '2023-10-20', '2023-11-20', 'Alquiler'),
(5, 1, 4, '2023-11-01', '2023-11-21', 'Alquiler'),
(6, 2, 5, '2023-12-05', '2024-01-28', 'Alquiler'),
(7, 4, 7, '2023-12-08', '2024-01-31', 'Venta'),
(8, 2, 10, '2023-04-09', '2023-05-28', 'Alquiler'),
(9, 1, 11, '2023-05-08', '2023-06-25', 'Venta'),
(10, 2, 12, '2023-06-16', '2023-07-28', 'Descuento'),
(11, 1, 13, '2023-01-19', '2023-02-01', 'Alquiler'),
(12, 4, 15, '2023-09-22', '2023-10-08', 'Venta'),
(13, 1, 17, '2023-08-30', '2023-09-29', 'Anticretico'),
(14, 2, 20, '2023-10-20', '2023-11-28', 'Anticretico'),
(15, 3, 8, '2023-01-11', '2023-02-06', 'Venta'),
(16, 2, 9, '2023-02-18', '2023-03-28', 'Anticretico'),
(17, 1, 6, '2023-07-14', '2023-08-31', 'Venta'),
(18, 2, 14, '2023-03-01', '2023-04-28', 'Anticretico'),
(19, 3, 16, '2023-05-17', '2023-06-30', 'Alquiler'),
(20, 4, 18, '2023-01-27', '2023-02-28', 'Anticretico');
--llenado medio de difusion
INSERT INTO MEDIO_DE_DIFUSION (COD_MD, COD_OFERTA, TIPO, DETALLE_MD)
VALUES
(1, 1, 'Internet', 'Página web'),
(2, 2, 'Radio', 'Emisora local'),
(3, 3, 'Internet', 'Redes sociales'),
(4, 4, 'Periódico', 'Anuncio clasificado'),
(5, 5, 'Internet', 'Banners publicitarios'),
(6, 6, 'Televisión', 'Canales locales'),
(7, 7, 'Internet', 'Marketing por correo electrónico'),
(8, 8, 'Radio', 'Programa de entrevistas'),
(9, 9, 'Internet', 'Publicidad en línea'),
(10, 10, 'Periódico', 'Espacio publicitario'),
(11, 11, 'Internet', 'Marketing de contenidos'),
(12, 12, 'Televisión', 'Anuncios comerciales'),
(13, 13, 'Internet', 'Optimización de motores de búsqueda'),
(14, 14, 'Radio', 'Patrocinio de eventos'),
(15, 15, 'Internet', 'Publicidad en redes de búsqueda'),
(16, 16, 'Periódico', 'Suplemento especial'),
(17, 17, 'Internet', 'Publicidad en video'),
(18, 18, 'Televisión', 'Programa de cocina'),
(19, 19, 'Internet', 'Publicidad en aplicaciones móviles'),
(20, 20, 'Radio', 'Concursos y sorteos');

-- telefono medio difusion
INSERT INTO TELEFONO_MEDIO_DIF (COD_MD, COD_TELF_MD, TELF_MD, DETALLE_TELF_MD)
VALUES
(1, 1, '718-64329', 'Teléfono principal'),
(2, 2, '774-86420', 'Teléfono secundario'),
(3, 3, '774-86420', 'Teléfono principal'),
(4, 4, '719-23548', 'Teléfono secundario'),
(5, 5, '747-49236', 'Teléfono principal'),
(6, 6, '761-13579', 'Teléfono secundario'),
(7, 7, '747-49236', 'Teléfono principal'),
(8, 8, '761-13579', 'Teléfono secundario'),
(9, 9, '718-64329', 'Teléfono principal'),
(10, 10, '729-41758', 'Teléfono secundario'),
(11, 11, '729-41758', 'Teléfono principal'),
(12, 12, '732-24680', 'Teléfono secundario'),
(13, 13, '715-12345', 'Teléfono principal'),
(14, 14, '774-86420', 'Teléfono secundario'),
(15, 15, '715-12345', 'Teléfono principal'),
(16, 16, '732-24680', 'Teléfono secundario'),
(17, 17, '715-12345', 'Teléfono principal'),
(18, 18, '729-41758', 'Teléfono secundario'),
(19, 19, '732-24680', 'Teléfono principal'),
(20, 20, '729-41758', 'Teléfono secundario');
--llenadode video
INSERT INTO VIDEO (COD_VIDEO,COD_OFERTA, VIDEO, DETALLE_VIDEO)
VALUES
(1,1, 'remate', 'Video promocional'),
(2,1, 'charla', 'Video informativo'),
(3,2, 'visita', 'Video de demostración'),

(4,3, 'remate', 'Video promocional'),
(5,3, 'charla', 'Video informativo'),
(6,3, 'visita', 'Video de demostración'),

(7,4, 'remate', 'Video promocional'),
(8,5, 'charla', 'Video informativo'),
(9,6, 'visita', 'Video de demostración'),

(10,8, 'remate', 'Video promocional'),
(11,9, 'charla', 'Video informativo'),
(12,10, 'visita', 'Video de demostración'),

(13,11, 'remate', 'Video promocional'),
(14,11, 'charla', 'Video informativo'),
(15,12, 'visita', 'Video de demostración'),

(16,13, 'remate', 'Video promocional'),
(17,13, 'charla', 'Video informativo'),
(18,15, 'visita', 'Video de demostración');
-- foto
INSERT INTO FOTO (COD_FOTO,COD_OFERTA, IMAGEN, DETALLE_FOTO)
VALUES
(1,1, 'exterior', 'foto de referencia'),
(2,1, 'interior', 'foto de muestra'),
(3,2, 'exterior', 'foto de referencia'),

(4,3, 'exterior', 'foto de referencia'),
(5,4, 'interior', 'foto de muestra'),
(6,5, 'exterior', 'foto de referencia'),

(7,6, 'exterior', 'foto de referencia'),
(8,6, 'interior', 'foto de muestra'),
(9,7, 'exterior', 'foto de referencia'),
(10,7, 'interior', 'foto de muestra'),
(11,8, 'exterior', 'foto de referencia'),
(12,8, 'interior', 'foto de muestra'),
(13,9, 'exterior', 'foto de referencia'),
(14,9, 'interior', 'foto de muestra'),
(15,10, 'exterior', 'foto de referencia'),
(16,11, 'interior', 'foto de muestra'),
(17,12, 'exterior', 'foto de referencia'),
(18,13, 'interior', 'foto de muestra'),
(19,14, 'exterior', 'foto de referencia'),
(20,15, 'interior', 'foto de muestra'),
(21,16, 'exterior', 'foto de referencia'),
(22,17, 'interior', 'foto de muestra'),
(23,18, 'exterior', 'foto de referencia'),
(24,18, 'interior', 'foto de muestra'),
(25,19, 'exterior', 'foto de referencia'),
(26,19, 'interior', 'foto de muestra'),
(27,20, 'exterior', 'foto de referencia'),
(28,20, 'interior', 'foto de muestra');
--llenado de precio
INSERT INTO PRECIO (COD_OFERTA, COD_PRECIO,MONTO_PRECIO,FECHA_PRECIO)
VALUES
(1, 1, 10000.00, '2023-06-01'),
(2, 2, 15000.00, '2023-02-01'),
(3, 3, 20000.00, '2023-08-20'),
(4, 4, 12000.00, '2023-11-01'),
(5, 5, 18000.00,'2023-11-01'),
(6, 6, 24000.00, '2023-12-05'),
(7, 7, 9000.00, '2023-12-08'),
(8, 8, 13500.00, '2023-04-09'),
(9, 9, 18000.00, '2023-05-08'),
(10, 10, 8000.00, '2023-06-16'),
(11, 11, 12000.00, '2023-01-19'),
(12, 12, 16000.00, '2023-09-22'),
(13, 13, 11000.00, '2023-08-30'),
(14, 14, 16500.00, '2023-10-20'),
(15, 15, 22000.00, '2023-01-11'),
(16, 16, 9500.00, '2023-02-18'),
(17, 17, 14200.50, '2023-07-14'),
(18, 18, 19000.00, '2023-03-01'),
(19, 19,  13000.00,'2023-05-17'),
(20, 20, 19500.00, '2023-01-27');
--llenado requerimiento general
INSERT INTO REQUERIMIENTO_GENERAL (COD_REQUERIMIENTO, COD_CLIENTE, FECHA_CREACION_REQ,  TIPO_INM,  TIPO_CONTRATO)
VALUES
(1, 1, '2023-01-01',   'Casa','Venta'),
(2, 2,  '2023-02-15',  'Departamento',  'Alquiler'),
(3, 3,  '2023-03-10',  'Garzonier',  'Venta'),
(4, 4,  '2023-04-20',   'Lote',  'Venta'),
(5, 5, '2023-05-05',  'Casa', 'Alquiler');
-- reque cuantitativos

--coincidencia
INSERT INTO BUSQUEDA (COD_BUSQUEDA, COD_CLIENTE, COD_OFERTA, FECHA_COINCIDENCIA)
VALUES
(1, 1, 1,  '2023-06-17'),
(2, 2, 2,  '2023-02-18'),
(3, 3, 3,  '2023-09-19'),
(4, 3, 3,  '2023-09-15'),
(5, 5, 5,  '2023-11-15'),
(6, 4, 5,  '2023-11-10'),
(7, 2, 14,  '2023-11-01'),
(8, 1, 16,  '2023-02-20'),
(9, 1, 19,  '2023-06-25'),
(10, 1, 19,  '2023-06-25'),
(11, 5, 20,  '2023-01-30'),
(12, 2, 20,  '2023-02-25'),
(13, 1, 11,  '2023-01-22'),
(14, 4, 7, '2023-11-22'),
(15, 3, 12,  '2023-09-26');
-- llenado de contrato
INSERT INTO CONTRATO (COD_CONTRATO,COD_OFERTA, PAGO_CTRT, FECHA_INI_CNTRT, FECHA_FIN_CNTRT, DETALLE_CNTRT)
VALUES (1,1, 1500.00, '2023-01-01', '2023-12-31',  'alquier de un año con pagos mensuales de 1500'),
       (2,2, 2000.00, '2023-01-01' , '2023-12-31',  'venta de casa'),
       (3,3, 1800.00, '2023-06-01', '2024-05-31', '');

--transaccion
INSERT INTO TRANSACCION (COD_TRANSACCION, COD_CONTRATO, FECHA_TRANS, MONTO_TRANS, COMISION_SUC, COMISION_EMPL)
VALUES
(1,  1, '2023-07-01', 1000.00, 100.00, 10.00),
(2,  2, '2023-02-22', 2000.00, 200.00, 20.00),
(3,  3, '2023-10-03', 1500.00, 150.00, 15.00),
(4,  3, '2023-05-03', 3000.00, 300.00, 30.00),
(5,  2, '2023-12-05', 4000.00, 400.00, 40.00),
(6,  1, '2023-05-03', 5500.00, 550.00, 55.00),
(7,  1, '2023-07-23', 6800.00, 680.00, 68.00),
(8,  3, '2024-01-28', 2000.00, 200.00, 20.00),
(9,  2, '2023-02-13', 3000.00, 300.00, 30.00),
(10,  1, '2023-01-31', 3100.00, 310.00, 31.00);
-- llenado de ofertas

