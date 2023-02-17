CREATE DATABASE prestamos;

--
-- Table structure for table estudiantes
--


CREATE TABLE estudiantes (
  Nro_ID varchar(25) NOT NULL,
  Nombres varchar(50) NOT NULL,
  Apellido varchar(50) NOT NULL,
  Direccion varchar(50) DEFAULT NULL,
  PRIMARY KEY (Nro_ID)
) ;

INSERT INTO estudiantes VALUES ('CC12457895','Juan Esteban','Mora','Calle 3 # 2-32 piso 3'),('CC555555','Pedro','Perez','Carrera 5 # 2-32'),('CC999999','Leonardo','Rojas','Calle 8 # 9-10'),('RC1222254478','Matias','Segura','Diagonal 5 # 2-33'),('TI123456789','Luisa Fernanda','Giraldo',NULL);


--
-- Table structure for table libro
--


CREATE TABLE libro (
  ISBN varchar(30) NOT NULL,
  Titulo varchar(50) NOT NULL,
  Editorial varchar(50) DEFAULT 'Planeta',
  Autor varchar(30) NOT NULL,
  Nro_paginas int DEFAULT NULL,
  PRIMARY KEY (ISBN)
) ;



INSERT INTO libro VALUES ('sbn4545421','Cien años de Soledad','Planeta','Gabriel Garcia',NULL),('sbn488888421','Cien años de Soledad','Planeta','Gabriel Garcia',NULL),('sbn5555550','Cuentos de Terror','Planeta','Alvaro Uribe',NULL),('sbn989989','Trigonometria 2','Planeta','Pepito Perez',NULL);

--
-- Table structure for table prestamos
--

CREATE TABLE prestamos (
  Id_Prestamo int NOT NULL AUTO_INCREMENT,
  Estudiante varchar(25) NOT NULL,
  Libro varchar(30) NOT NULL,
  Fecha_Prestamo date NOT NULL,
  PRIMARY KEY (Id_Prestamo),
  KEY Estudiante (Estudiante),
  KEY ind_presta (Libro),
  CONSTRAINT ind_presta FOREIGN KEY (Libro) REFERENCES libro (ISBN),
  CONSTRAINT prestamos_ibfk_1 FOREIGN KEY (Estudiante) REFERENCES estudiantes (Nro_ID)
) ;
--
-- Dumping data for table prestamos
--


INSERT INTO prestamos VALUES (1,'CC12457895','sbn5555550','2020-10-31');