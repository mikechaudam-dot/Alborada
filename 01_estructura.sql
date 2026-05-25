CREATE DATABASE IF NOT EXISTS alborada;
USE alborada;
-- ----------------------------------------------------
-- Creamos primero las tablas 
-- -----------------------------------------------------
-- Creamos primero las de nivel 1 (Sin Foering key)
-- Tabla No 1
CREATE TABLE IF NOT EXISTS entidad (
    id_entidad VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    correo VARCHAR(50) NOT NULL UNIQUE,
    direccion VARCHAR(80) NOT NULL,
    sector VARCHAR(80)
);

-- Tabla No 2
CREATE TABLE IF NOT EXISTS trabajador (
    id_trabajador VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(50) NOT NULL UNIQUE,
    rol VARCHAR(50),
    porcentaje_ganancia DECIMAL(5 , 2 ) NOT NULL
);

-- Tabla No 3
CREATE TABLE IF NOT EXISTS proveedor (
    id_proveedor VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    correo VARCHAR(50) NOT NULL UNIQUE,
    direccion VARCHAR(80) NOT NULL,
    sector VARCHAR(50) NOT NULL,
    tipo_distribucion VARCHAR(50) NOT NULL,
    forma_juridica VARCHAR(50) NOT NULL
);
-- Tabla No 4
CREATE TABLE IF NOT EXISTS contrato (
    id_contrato VARCHAR(50) PRIMARY KEY,
    valor DECIMAL(15 , 2 ) NOT NULL,
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,
    garantias VARCHAR(50)
);

-- Tabla No 5
CREATE TABLE IF NOT EXISTS producto (
    id_producto SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    referencia VARCHAR(80),
    caracteristicas TEXT,
    unidad_medida VARCHAR(20),
    precio DECIMAL(10 , 2 ) NOT NULL
);
-- ----------------------------------
-- Creacion Tablas con Foering Key relacion 1-n
-- --------------------------------
-- Tabla No 6
CREATE TABLE IF NOT EXISTS funcionario (
    id_funcionario VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50),
    cargo VARCHAR(50),
    entidad_id VARCHAR(20),
    CONSTRAINT fk_funcionario_entidad FOREIGN KEY (entidad_id)
        REFERENCES entidad (id_entidad)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Tabla No 7
CREATE TABLE IF NOT EXISTS licitacion (
    id_licitacion VARCHAR(50) PRIMARY KEY,
    fecha_cierre DATETIME NOT NULL,
    evaluacion_pre DATETIME NOT NULL,
    fecha_subsanacion DATETIME NOT NULL,
    evaluacion_final DATETIME NOT NULL,
    tipo_evaluacion VARCHAR(50),
    garantias VARCHAR(80),
    presupuesto DECIMAL(15 , 2 ) NOT NULL,
    sector VARCHAR(50),
    entidad_id VARCHAR(20),
    trabajador_id VARCHAR(20),
    CONSTRAINT fk_licitacion_entidad FOREIGN KEY (entidad_id)
        REFERENCES entidad (id_entidad)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_licitacion_trabajador FOREIGN KEY (trabajador_id)
        REFERENCES trabajador (id_trabajador)
        ON DELETE SET NULL ON UPDATE CASCADE
);
-- ----------------------------------
-- Creamo tablas nivel 3 de relacion 
-- ----------------------------------
-- Tabla No 8
CREATE TABLE IF NOT EXISTS ejecuta (
    contrato_id VARCHAR(50),
    trabajador_id VARCHAR(20),
    tipo_de_fase VARCHAR(30),
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,
    PRIMARY KEY (contrato_id , trabajador_id , tipo_de_fase),
    CONSTRAINT fk_ejecuta_contrato FOREIGN KEY (contrato_id)
        REFERENCES contrato (id_contrato)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_ejecuta_trabajador FOREIGN KEY (trabajador_id)
        REFERENCES trabajador (id_trabajador)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
-- Tabla No 9
CREATE TABLE IF NOT EXISTS gestiona (
    entidad_id VARCHAR(20),
    contrato_id VARCHAR(50),
    PRIMARY KEY (entidad_id , contrato_id),
    CONSTRAINT fk_gestiona_entidad FOREIGN KEY (entidad_id)
        REFERENCES entidad (id_entidad)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_gestiona_contrato FOREIGN KEY (contrato_id)
        REFERENCES contrato (id_contrato)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
-- Tabla No 10
CREATE TABLE IF NOT EXISTS tiene (
    producto_id SMALLINT UNSIGNED AUTO_INCREMENT,
    contrato_id VARCHAR(50),
    PRIMARY KEY (producto_id , contrato_id),
    CONSTRAINT fk_tienes_productos FOREIGN KEY (producto_id)
        REFERENCES producto (id_producto)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_tiene_contrato FOREIGN KEY (contrato_id)
        REFERENCES contrato (id_contrato)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
-- Tabla No 11
CREATE TABLE IF NOT EXISTS abjudica (
    licitacion_id VARCHAR(50),
    contrato_id VARCHAR(50),
    PRIMARY KEY (licitacion_id , contrato_id),
    CONSTRAINT fk_abjudica_licitacion FOREIGN KEY (licitacion_id)
        REFERENCES licitacion (id_licitacion)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_abjudica_contrato FOREIGN KEY (contrato_id)
        REFERENCES contrato (id_contrato)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
-- Tabla N0 12
CREATE TABLE IF NOT EXISTS distribuye (
    proveedor_id VARCHAR(50),
    producto_id SMALLINT UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY (proveedor_id , producto_id),
    CONSTRAINT fk_distribuye_proveedor FOREIGN KEY (proveedor_id)
        REFERENCES proveedor (id_proveedor)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_distribuye_producto FOREIGN KEY (producto_id)
        REFERENCES producto (id_producto)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
