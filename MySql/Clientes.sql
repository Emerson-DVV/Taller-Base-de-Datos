use inmobiliaria_dega
-- Tabla de clientes
CREATE TABLE clientes (
  ci INT PRIMARY KEY,
  nombres VARCHAR(50),
  apellidos VARCHAR(50),
  direccion VARCHAR(100)
);

-- Tabla telefonos
CREATE TABLE telefonos (
  id_telefono INT PRIMARY KEY AUTO_INCREMENT,
  ci INT,
  numero VARCHAR(20),
  FOREIGN KEY (ci) REFERENCES clientes (ci)
);