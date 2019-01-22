DROP DATABASE IF EXISTS `medicos`;
CREATE DATABASE `medicos`;
USE `medicos`;
 
CREATE TABLE `medicos`.`dpto_especialidad_medica` (
  `id_departamento` TINYINT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `num_consulta` VARCHAR(15) NULL,
  PRIMARY KEY (`id_departamento`),
  UNIQUE INDEX `id_espepcialidad_UNIQUE` (`id_departamento` ASC));
  
  CREATE TABLE `medicos`.`medicos_facultativos` (
  `num_registro_medico` SMALLINT(4) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `num_consulta` SMALLINT(6) NULL,
  `fecha_alta` DATE NULL,
  `salario` FLOAT NULL,
  `complelmento` FLOAT NULL,
  `id_departamento` TINYINT(2) NULL,
  PRIMARY KEY (`num_registro_medico`),
  INDEX `id_departamento_idx` (`id_departamento` ASC),
  CONSTRAINT `id_departamento`
    FOREIGN KEY (`id_departamento`)
    REFERENCES `medicos`.`dpto_especialidad_medica` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);