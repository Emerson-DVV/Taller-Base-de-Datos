use inmobiliaria_dega
-- Tabla requerimientos_generales
CREATE TABLE requerimientos_generales (
  id_rg INT PRIMARY KEY AUTO_INCREMENT,
  ci INT,
  fecha_creacion DATE,
  ubicacion VARCHAR(100),
  tipo_inmueble VARCHAR(20),
  tipo_oferta VARCHAR(20),
  precio_minimo INT,
  precio_maximo INT,
  superficie INT,
  FOREIGN KEY (ci) REFERENCES clientes (ci)
);

-- Tabla requerimientos_especificos
CREATE TABLE requerimientos_especificos (
  id_re INT PRIMARY KEY AUTO_INCREMENT,
  id_rg INT UNIQUE,
  sala BOOLEAN,
  comedor BOOLEAN,
  cocina BOOLEAN,
  dormitorios INT,
  banios INT,
  antiguedad_construccion INT,
  FOREIGN KEY (id_rg) REFERENCES requerimientos_generales (id_rg)
);

-- Tabla lote_requerimientos_especificos
CREATE TABLE lote_requerimientos_especificos (
  id_lre INT PRIMARY KEY AUTO_INCREMENT,
  id_rg INT UNIQUE,
  uso_actual VARCHAR(20),
  topografia BOOLEAN,
  FOREIGN KEY (id_rg) REFERENCES requerimientos_generales (id_rg)
);

-- Tabla casa_requerimientos_especificos
CREATE TABLE casa_requerimientos_especificos (
  id_cre INT PRIMARY KEY AUTO_INCREMENT,
  id_re INT UNIQUE,
  garaje BOOLEAN,
  patio BOOLEAN,
  superficie_construccion INT,
  numero_plantas INT,
  FOREIGN KEY (id_re) REFERENCES requerimientos_especificos (id_re)
);

-- Tabla departamento_requerimientos_especificos
CREATE TABLE departamento_requerimientos_especificos (
  id_dre INT PRIMARY KEY AUTO_INCREMENT,
  id_re INT UNIQUE,
  numero_estacionamiento VARCHAR(10),
  permiso_mascota BOOLEAN,
  numero_piso INT,
  FOREIGN KEY (id_re) REFERENCES requerimientos_especificos (id_re)
);

-- Tabla garzonier_requerimientos_especificos
CREATE TABLE garzonier_requerimientos_especificos (
  id_gre INT PRIMARY KEY AUTO_INCREMENT,
  id_re INT UNIQUE,
  amueblado BOOLEAN,
  capacidad_maxima INT,
  FOREIGN KEY (id_re) REFERENCES requerimientos_especificos (id_re)
);
