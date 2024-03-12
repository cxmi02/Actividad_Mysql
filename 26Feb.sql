SHOW DATABASES;

-- Tablas --

CREATE TABLE empresas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit INT(25),
    telefono INT(25),
    direccion VARCHAR(45)
);

CREATE TABLE vehiculos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(25),
    modelo VARCHAR(45),
    color VARCHAR(25),
    tipo_vehiculo VARCHAR(25)
);

CREATE TABLE paises(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25)
);

CREATE TABLE ciudad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25)
);

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    contraseña INT,
    fecha_nacimiento DATE,
    genero VARCHAR(20),
    altura INT,
    peso INT
);

-- INSERTAR --

INSERT INTO empresas(nombre, nit, telefono, direccion)
            VALUES("Riwi", 20202020, 3136020554,"calle xx nro xxa");

INSERT INTO vehiculos(NULL, "327FGZ", "sandero", "gris", "sandero");

INSERT INTO paises(nombre)
            VALUES("colombia");

INSERT INTO ciudad(NULL, "Medellin");

INSERT INTO usuarios(nombres, apellidos, correo, contraseña, fecha_nacimiento, genero, altura, peso)
            VALUES("Maria Camila", "Sepulveda Giraldo", "sepulveda.giraldo.camila@gmail", 12345, "2002-11-02", "femenino", 158, 58);


-- SELECT --

SELECT * FROM empresas;

SELECT placa, tipo_vehiculo FROM vehiculos;

SELECT * FROM paises, ciudad;

SELECT nombre, correo, fecha_nacimiento FROM usuarios;

-- UPDATE --

UPDATE empresas 
SET nombre = "Dislon", nit = 50505050
WHERE id = 1;

UPDATE vehiculos
SET color = "rojo"
WHERE id = 1;

UPDATE paises
SET nombre = "Mexico"
WHERE id = 1;

UPDATE ciudad
SET nombre = "Ciudad de mexico"
WHERE id = 1;

UPDATE usuarios
SET nombre = "pepita", apellido = "gonzales", correo = "pepita@gmail"
WHERE id = 1;

-- DELETE --

DROP TABLE empresas, vehiculos, paises, ciudad, usuarios;

-- ALTER TABLE --

-- renombrar llaves
ALTER TABLE empresas RENAME COLUMN nombre TO identidad;

-- agregar llaves
ALTER TABLE vehiculos ADD accesorios VARCHAR(45);

-- eliminar llavas
ALTER TABLE usuarios DROP COLUMN peso; 

-- modificar llaves
ALTER TABLE empresas MODIFY nit VARCHAR(30);
