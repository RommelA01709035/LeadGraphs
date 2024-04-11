-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.11.7-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para leadgraphs
CREATE DATABASE IF NOT EXISTS `leadgraphs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `leadgraphs`;

-- Volcando estructura para tabla leadgraphs.contenedor
CREATE TABLE IF NOT EXISTS `contenedor` (
  `IDContenedor` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Creacion_Contenedor` date DEFAULT current_timestamp(),
  `Autor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDContenedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.contenedor: ~6 rows (aproximadamente)
INSERT INTO `contenedor` (`IDContenedor`, `Fecha_Creacion_Contenedor`, `Autor`) VALUES
	(1, '2024-03-06', 'Juan'),
	(2, '2024-03-20', 'Alejandra'),
	(3, '2024-03-21', 'Miguel'),
	(4, '2024-03-22', 'Karla'),
	(5, '2024-03-23', 'Ricardo'),
	(6, '2024-03-24', 'Gabriela');

-- Volcando estructura para tabla leadgraphs.funcion
CREATE TABLE IF NOT EXISTS `funcion` (
  `IDFuncion` int(11) NOT NULL AUTO_INCREMENT,
  `Accion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDFuncion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.funcion: ~18 rows (aproximadamente)
INSERT INTO `funcion` (`IDFuncion`, `Accion`) VALUES
	(1, 'Consultar grafica'),
	(2, 'Consultar reportes'),
	(3, 'Autenticarse'),
	(4, 'Descargar reporte'),
	(5, 'Cargar CSV'),
	(6, 'Registrar usuario'),
	(7, 'Eliminar usuarios'),
	(8, 'Asigna seller'),
	(9, 'Asigna roles'),
	(10, 'Consultar historial'),
	(11, 'Editar usuario'),
	(12, 'Consultar usuario'),
	(13, 'Cambiar contraseña'),
	(14, 'Modificar Lead'),
	(15, 'Recuperar contraseña'),
	(16, 'Eliminar Lead'),
	(17, 'Crear Lead'),
	(18, 'Consultar Lead');

-- Volcando estructura para tabla leadgraphs.funtion_rol
CREATE TABLE IF NOT EXISTS `funtion_rol` (
  `IDPosee` int(11) NOT NULL AUTO_INCREMENT,
  `IDRol` int(11) DEFAULT NULL,
  `IDFuncion` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPosee`),
  KEY `IDRol` (`IDRol`),
  KEY `IDFuncion` (`IDFuncion`),
  CONSTRAINT `funtion_rol_ibfk_1` FOREIGN KEY (`IDRol`) REFERENCES `roles` (`IDRol`),
  CONSTRAINT `funtion_rol_ibfk_2` FOREIGN KEY (`IDFuncion`) REFERENCES `funcion` (`IDFuncion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.funtion_rol: ~39 rows (aproximadamente)
INSERT INTO `funtion_rol` (`IDPosee`, `IDRol`, `IDFuncion`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 2, 3),
	(5, 3, 3),
	(6, 1, 4),
	(7, 2, 4),
	(8, 3, 4),
	(9, 1, 5),
	(10, 2, 5),
	(11, 1, 6),
	(12, 2, 6),
	(13, 1, 7),
	(14, 1, 8),
	(15, 2, 8),
	(16, 1, 9),
	(17, 2, 9),
	(18, 1, 10),
	(19, 2, 10),
	(20, 1, 11),
	(21, 2, 11),
	(22, 1, 12),
	(23, 1, 12),
	(24, 1, 13),
	(25, 2, 13),
	(26, 3, 13),
	(27, 1, 14),
	(28, 2, 14),
	(29, 3, 14),
	(30, 1, 15),
	(31, 2, 15),
	(32, 3, 15),
	(33, 1, 16),
	(34, 2, 16),
	(35, 1, 17),
	(36, 2, 17),
	(37, 1, 18),
	(38, 2, 18),
	(39, 3, 18);

-- Volcando estructura para tabla leadgraphs.historial
CREATE TABLE IF NOT EXISTS `historial` (
  `IDHistorial` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Creacion_Historial` date DEFAULT current_timestamp(),
  `Fecha_Modificacion_Historial` date DEFAULT current_timestamp(),
  `Versiones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDHistorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.historial: ~7 rows (aproximadamente)
INSERT INTO `historial` (`IDHistorial`, `Fecha_Creacion_Historial`, `Fecha_Modificacion_Historial`, `Versiones`) VALUES
	(1, '2024-03-06', '2024-03-06', '1'),
	(2, '2024-03-06', '2024-03-07', '2'),
	(3, '2024-03-06', '2024-03-08', '3'),
	(4, '2024-03-06', '2024-03-09', '4'),
	(5, '2024-03-06', '2024-03-10', '5'),
	(6, '2024-03-06', '2024-03-11', '6'),
	(7, '2024-03-06', '2024-03-12', '7');

-- Volcando estructura para tabla leadgraphs.leads
CREATE TABLE IF NOT EXISTS `leads` (
  `IDLead` int(11) NOT NULL AUTO_INCREMENT,
  `IDHistorial` int(11) DEFAULT NULL,
  `IDWorkspace` int(11) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Valor` float DEFAULT NULL,
  `Ganado` tinyint(1) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Etiqueta` varchar(40) DEFAULT NULL,
  `Compania` varchar(100) DEFAULT NULL,
  `Creado` date DEFAULT NULL,
  `Hora_Creacion` time DEFAULT NULL,
  `Fecha_Primer_Mensaje` date DEFAULT NULL,
  `Hora_Primer_Mensaje` time DEFAULT NULL,
  `Primer_Mensaje` text DEFAULT NULL,
  `Fecha_Ultimo_Mensaje` date DEFAULT NULL,
  `Hora_Ultimo_Mensaje` time DEFAULT NULL,
  `Ultimo_Mensaje` text DEFAULT NULL,
  `Estado_Lead` varchar(40) DEFAULT NULL,
  `Seller_Asignado` varchar(100) DEFAULT NULL,
  `Embudo` varchar(50) DEFAULT NULL,
  `Etapa` varchar(50) DEFAULT NULL,
  `Archivado` varchar(10) DEFAULT NULL,
  `Creado_Manualmente` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDLead`),
  KEY `IDHistorial` (`IDHistorial`),
  KEY `IDWorkspace` (`IDWorkspace`),
  CONSTRAINT `leads_ibfk_1` FOREIGN KEY (`IDHistorial`) REFERENCES `historial` (`IDHistorial`),
  CONSTRAINT `leads_ibfk_2` FOREIGN KEY (`IDWorkspace`) REFERENCES `workspace` (`IDWorkspace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.leads: ~50 rows (aproximadamente)
INSERT INTO `leads` (`IDLead`, `IDHistorial`, `IDWorkspace`, `Telefono`, `Nombre`, `Valor`, `Ganado`, `Correo`, `Etiqueta`, `Compania`, `Creado`, `Hora_Creacion`, `Fecha_Primer_Mensaje`, `Hora_Primer_Mensaje`, `Primer_Mensaje`, `Fecha_Ultimo_Mensaje`, `Hora_Ultimo_Mensaje`, `Ultimo_Mensaje`, `Estado_Lead`, `Seller_Asignado`, `Embudo`, `Etapa`, `Archivado`, `Creado_Manualmente`) VALUES
	(1, 1, 1, '555-1234', 'Pedro', 1000, 1, 'Pedro@gmail.com', 'Importante', 'Telcel', '2024-03-06', '12:00:00', '2024-03-06', '12:30:00', 'Buenos días ', '2024-06-03', '13:00:00', 'Gracias hasta luego', 'Ended', 'John', 'Presales', 'Contactados', 'true', 0),
	(2, 1, 1, '555-5678', 'María', 1500, 0, 'María@gmail.com', 'Normal', 'Movistar', '2024-03-06', '11:30:00', '2024-03-07', '12:00:00', 'Hola, ¿cómo estás?', '2024-06-04', '14:00:00', 'Nos vemos pronto', 'In progress', 'Sarah', 'Sales', 'Qualified', 'false', 1),
	(3, 1, 2, '555-9012', 'Juan', 2000, 1, 'Juan@gmail.com', 'Urgente', 'MegaCable', '2024-03-06', '10:00:00', '2024-03-08', '10:30:00', 'Good morning', '2024-06-05', '15:00:00', 'See you later', 'New', 'Emily', 'Marketing', 'Cold', 'true', 0),
	(4, 1, 2, '555-3456', 'Ana', 1200, 1, 'Ana@gmail.com', 'Importante', 'Infinitum', '2024-03-09', '09:30:00', '2024-03-09', '10:00:00', 'Hi there', '2024-06-06', '16:00:00', 'Take care', 'Qualified', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(5, 1, 3, '555-6789', 'Luis', 1800, 0, 'Luis@gmail.com', 'Normal', 'Infinitum', '2024-03-10', '08:45:00', '2024-03-10', '09:15:00', 'Hello!', '2024-06-07', '17:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(6, 1, 3, '555-4321', 'Laura', 1600, 1, 'Laura@gmail.com', 'Urgente', 'Telcel', '2024-03-11', '14:00:00', '2024-03-11', '14:30:00', 'Hey!', '2024-06-08', '18:00:00', 'See you tomorrow', 'Qualified', 'David', 'Sales', 'Contacted', 'false', 1),
	(7, 2, 1, '555-7890', 'Carlos', 1400, 0, 'Carlos@gmail.com', 'Normal', 'Infinitum', '2024-03-12', '13:30:00', '2024-03-12', '14:00:00', 'Hi!', '2024-06-09', '09:00:00', 'Goodbye', 'Cold', 'Emma', 'Marketing', 'Qualified', 'true', 0),
	(8, 2, 3, '555-8901', 'Marta', 1700, 1, 'Marta@gmail.com', 'Importante', 'Infinitum', '2024-03-13', '10:45:00', '2024-03-13', '11:15:00', 'Good morning', '2024-06-10', '10:30:00', 'See you later', 'New', 'Daniel', 'Presales', 'Contacted', 'false', 1),
	(9, 2, 3, '555-6789', 'Elena', 1900, 0, 'Elena@gmail.com', 'Normal', 'Infinitum', '2024-03-14', '09:15:00', '2024-03-14', '09:45:00', 'Hello!', '2024-06-11', '11:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(10, 2, 3, '555-1234', 'Diego', 1300, 1, 'Diego@gmail.com', 'Urgente', 'Infinitum', '2024-03-15', '12:30:00', '2024-03-15', '13:00:00', 'Hey there!', '2024-06-12', '12:30:00', 'Talk to you later', 'Qualified', 'Sarah', 'Sales', 'Contacted', 'false', 1),
	(11, 2, 4, '555-2345', 'Sara', 1400, 0, 'Sara@gmail.com', 'Normal', 'Telcel', '2024-03-16', '11:45:00', '2024-03-16', '12:15:00', 'Hello!', '2024-06-13', '13:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Contacted', 'true', 0),
	(12, 2, 4, '555-3456', 'Mario', 1500, 1, 'Mario@gmail.com', 'Importante', 'Movistar', '2024-03-17', '10:15:00', '2024-03-17', '10:45:00', 'Good morning', '2024-06-14', '14:00:00', 'See you later', 'Qualified', 'Emily', 'Presales', 'Contacted', 'false', 1),
	(13, 3, 5, '555-4567', 'Lorena', 1600, 0, 'Lorena@gmail.com', 'Normal', 'Infinitum', '2024-03-18', '09:30:00', '2024-03-18', '10:00:00', 'Hi there', '2024-06-15', '15:30:00', 'Goodbye', 'Cold', 'Michael', 'Marketing', 'Qualified', 'true', 0),
	(14, 3, 5, '555-5678', 'Camila', 1700, 1, 'Camila@gmail.com', 'Urgente', 'Infinitum', '2024-03-19', '11:00:00', '2024-03-19', '11:30:00', 'Hello!', '2024-06-16', '16:00:00', 'See you tomorrow', 'New', 'Sophia', 'Sales', 'Contacted', 'false', 1),
	(15, 3, 6, '555-6789', 'Javier', 1800, 0, 'Javier@gmail.com', 'Normal', 'MegaCable', '2024-03-20', '10:30:00', '2024-03-20', '11:00:00', 'Hey there!', '2024-06-17', '17:30:00', 'Talk to you later', 'Cold', 'Daniel', 'Marketing', 'Qualified', 'true', 0),
	(16, 3, 6, '555-7890', 'Lucía', 1900, 1, 'Lucía@gmail.com', 'Importante', 'Pinnacle', '2024-03-21', '09:45:00', '2024-03-21', '10:15:00', 'Good morning', '2024-06-18', '12:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(17, 3, 7, '555-8901', 'Marcos', 2000, 0, 'Marcos@gmail.com', 'Normal', 'Telcel', '2024-03-22', '11:00:00', '2024-03-22', '11:30:00', 'Hi!', '2024-06-19', '14:30:00', 'Goodbye', 'Cold', 'Sarah', 'Marketing', 'Qualified', 'true', 0),
	(18, 3, 7, '555-9012', 'Ana María', 2200, 1, 'Ana María@gmail.com', 'Urgente', 'Infinitum', '2024-03-23', '10:15:00', '2024-03-23', '10:45:00', 'Hello!', '2024-06-20', '13:00:00', 'Take care', 'New', 'John', 'Sales', 'Contacted', 'false', 1),
	(19, 4, 8, '555-2345', 'Gabriel', 1800, 0, 'Gabriel@gmail.com', 'Normal', 'Infinitum', '2024-03-24', '12:00:00', '2024-03-24', '12:30:00', 'Hey there!', '2024-06-21', '15:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(20, 4, 8, '555-3456', 'Carolina', 1900, 1, 'Carolina@gmail.com', 'Importante', 'Infinitum', '2024-03-25', '11:30:00', '2024-03-25', '12:00:00', 'Good morning', '2024-06-22', '16:00:00', 'See you later', 'Qualified', 'David', 'Presales', 'Contacted', 'false', 1),
	(21, 4, 9, '555-4567', 'Daniel', 2000, 0, 'Daniel@gmail.com', 'Normal', 'Infinitum', '2024-03-26', '09:00:00', '2024-03-26', '09:30:00', 'Hi there', '2024-06-23', '10:30:00', 'Goodbye', 'Cold', 'Emily', 'Marketing', 'Qualified', 'true', 0),
	(22, 4, 9, '555-5678', 'Alejandro', 2100, 1, 'Alejandro@gmail.com', 'Urgente', 'Infinitum', '2024-03-27', '10:45:00', '2024-03-27', '11:15:00', 'Hello!', '2024-06-24', '12:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(23, 4, 10, '555-6789', 'Valeria', 2200, 0, 'Valeria@gmail.com', 'Normal', 'MegaCable', '2024-03-28', '12:30:00', '2024-03-28', '13:00:00', 'Hey there!', '2024-06-25', '14:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(24, 4, 10, '555-7890', 'Lucas', 2300, 1, 'Lucas@gmail.com', 'Importante', 'Infinitum', '2024-03-29', '13:15:00', '2024-03-29', '13:45:00', 'Good morning', '2024-06-26', '15:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(25, 5, 11, '555-9012', 'Paula', 2400, 0, 'Paula@gmail.com', 'Normal', 'Telcel', '2024-03-30', '14:00:00', '2024-03-30', '14:30:00', 'Hi!', '2024-06-27', '16:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(26, 5, 11, '555-1234', 'Julia', 2500, 1, 'Julia@gmail.com', 'Urgente', 'Infinitum', '2024-03-31', '15:30:00', '2024-03-31', '16:00:00', 'Hello!', '2024-06-28', '09:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(27, 5, 12, '555-2345', 'Mateo', 2600, 0, 'Mateo@gmail.com', 'Normal', 'Movistar', '2024-04-01', '16:45:00', '2024-04-01', '17:15:00', 'Hey there!', '2024-06-29', '10:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(28, 5, 12, '555-3456', 'Isabella', 2700, 1, 'Isabella@gmail.com', 'Importante', 'NatGas', '2024-04-02', '17:00:00', '2024-04-02', '17:30:00', 'Good morning', '2024-06-30', '11:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(29, 5, 13, '555-4567', 'David', 2800, 0, 'David@gmail.com', 'Normal', 'MegaCable', '2024-04-03', '09:30:00', '2024-04-03', '10:00:00', 'Hi there', '2024-07-01', '13:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(30, 5, 13, '555-5678', 'Valentina', 2900, 1, 'Valentina@gmail.com', 'Urgente', 'MegaCable', '2024-04-04', '10:45:00', '2024-04-04', '11:15:00', 'Hello!', '2024-07-02', '14:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(31, 5, 14, '555-6789', 'Martín', 3000, 0, 'Martín@gmail.com', 'Normal', 'MegaCable', '2024-04-05', '11:30:00', '2024-04-05', '12:00:00', 'Hi!', '2024-07-03', '15:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(32, 5, 14, '555-7890', 'Carla', 3100, 1, 'Carla@gmail.com', 'Importante', 'MegaCable', '2024-04-06', '12:15:00', '2024-04-06', '12:45:00', 'Good morning', '2024-07-04', '09:30:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(33, 6, 15, '555-9012', 'Julián', 3200, 0, 'Julián@gmail.com', 'Normal', 'Movistar', '2024-04-07', '13:00:00', '2024-04-07', '13:30:00', 'Hello!', '2024-07-05', '10:45:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(34, 6, 15, '555-2345', 'Fernanda', 3300, 1, 'Fernanda@gmail.com', 'Urgente', 'MegaCable', '2024-04-08', '14:30:00', '2024-04-08', '15:00:00', 'Hey there!', '2024-07-06', '11:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(35, 6, 16, '555-3456', 'Juan', 3400, 0, 'Juan@gmail.com', 'Normal', 'MegaCable', '2024-04-09', '15:45:00', '2024-04-09', '16:15:00', 'Hi there', '2024-07-07', '12:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(36, 6, 16, '555-4567', 'María', 3500, 1, 'María@gmail.com', 'Importante', 'MegaCable', '2024-04-10', '16:30:00', '2024-04-10', '17:00:00', 'Hello!', '2024-07-08', '13:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(37, 6, 17, '555-5678', 'Diego', 3600, 0, 'Diego@gmail.com', 'Normal', 'Movistar', '2024-04-11', '17:45:00', '2024-04-11', '18:15:00', 'Hi!', '2024-07-09', '14:45:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(38, 6, 17, '555-6789', 'Sofía', 3700, 1, 'Sofía@gmail.com', 'Urgente', 'NatGas', '2024-04-12', '09:00:00', '2024-04-12', '09:30:00', 'Hey there!', '2024-07-10', '15:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(39, 7, 18, '555-7890', 'Lucas', 3800, 0, 'Lucas@gmail.com', 'Normal', 'NatGas', '2024-04-13', '09:30:00', '2024-04-13', '10:00:00', 'Hello!', '2024-07-11', '16:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(40, 7, 18, '555-9012', 'Valentina', 3900, 1, 'Valentina@gmail.com', 'Importante', 'NatGas', '2024-04-14', '10:00:00', '2024-04-14', '10:30:00', 'Good morning', '2024-07-12', '09:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(41, 7, 19, '555-2345', 'Juan Pablo', 4000, 0, 'Juan Pablo@gmail.com', 'Normal', 'NatGas', '2024-04-15', '11:15:00', '2024-04-15', '11:45:00', 'Hi!', '2024-07-13', '10:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(42, 7, 19, '555-3456', 'Isabel', 4100, 1, 'Isabel@gmail.com', 'pruebaCU', 'Dell', '2024-04-16', '12:00:00', '2024-04-16', '12:30:00', 'Hello!', '2024-07-14', '11:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(43, 7, 20, '555-4567', 'Martina', 4200, 0, 'Martina@gmail.com', 'Normal', 'Dell', '2024-04-17', '12:45:00', '2024-04-17', '13:15:00', 'Hi there', '2024-07-15', '12:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(44, 7, 20, '555-5678', 'Gabriel', 4300, 1, 'Gabriel@gmail.com', 'Importante', 'Dell', '2024-04-18', '13:30:00', '2024-04-18', '14:00:00', 'Good morning', '2024-07-16', '13:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(45, 7, 10, '555-6789', 'Camila', 4400, 0, 'Camila@gmail.com', 'Normal', 'Dell', '2024-04-19', '14:15:00', '2024-04-19', '14:45:00', 'Hello!', '2024-07-17', '14:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(46, 7, 10, '555-7890', 'Tomás', 4500, 1, 'Tomás@gmail.com', 'Urgente', 'Dell', '2024-04-20', '15:00:00', '2024-04-20', '15:30:00', 'Hey there!', '2024-07-18', '15:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(47, 7, 10, '555-9012', 'Isabella', 4600, 0, 'Isabella@gmail.com', 'Normal', 'Dell', '2024-04-21', '15:30:00', '2024-04-21', '16:00:00', 'Hi!', '2024-07-19', '16:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(48, 7, 10, '555-1234', 'Matías', 4700, 1, 'Matías@gmail.com', 'Importante', 'Dell', '2024-04-22', '16:00:00', '2024-04-22', '16:30:00', 'Hello!', '2024-07-20', '17:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(49, 7, 10, '555-2345', 'Valeria', 4800, 0, 'Valeria@gmail.com', 'Normal', 'Dell', '2024-04-23', '16:30:00', '2024-04-23', '17:00:00', 'Hi there', '2024-07-21', '17:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(50, 7, 10, '555-3456', 'Emilio', 4900, 1, 'Emilio@gmail.com', 'Urgente', 'Dell', '2024-04-24', '17:00:00', '2024-04-24', '17:30:00', 'Hey there!', '2024-07-22', '18:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(51, 1, 1, '552-7734', 'Santiago', 1000, 1, 'Santiago@gmail.com', 'Importante', 'Telcel', '2024-03-06', '12:00:00', '2024-03-06', '12:30:00', 'Buenos días ', '2024-06-03', '13:00:00', 'Gracias hasta luego', 'Ended', 'John', 'Presales', 'Contactados', 'true', 0),
	(52, 1, 1, '552-7878', 'Valeria', 1500, 0, 'Valeria@gmail.com', 'Normal', 'Movistar', '2024-03-07', '11:30:00', '2024-03-07', '12:00:00', 'Hola, ¿cómo estás?', '2024-06-04', '14:00:00', 'Nos vemos pronto', 'In progress', 'Sarah', 'Sales', 'Qualified', 'false', 1),
	(53, 1, 2, '552-7912', 'Leonardo', 2000, 1, 'Leonardo@gmail.com', 'Urgente', 'MegaCable', '2024-03-08', '10:00:00', '2024-03-08', '10:30:00', 'Good morning', '2024-06-05', '15:00:00', 'See you later', 'New', 'Emily', 'Marketing', 'Cold', 'true', 0),
	(54, 1, 2, '552-3456', 'Ximena', 1200, 1, 'Ximena@gmail.com', 'Importante', 'Infinitum', '2024-03-09', '09:30:00', '2024-03-09', '10:00:00', 'Hi there', '2024-06-06', '16:00:00', 'Take care', 'Qualified', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(55, 1, 3, '552-6789', 'Emiliano', 1800, 0, 'Emiliano@gmail.com', 'Normal', 'Infinitum', '2024-03-10', '08:45:00', '2024-03-10', '09:15:00', 'Hello!', '2024-06-07', '17:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(56, 1, 3, '553-4321', 'Regina', 1600, 1, 'Regina@gmail.com', 'Urgente', 'Telcel', '2024-03-11', '14:00:00', '2024-03-11', '14:30:00', 'Hey!', '2024-06-08', '18:00:00', 'See you tomorrow', 'Qualified', 'David', 'Sales', 'Contacted', 'false', 1),
	(57, 2, 1, '553-7890', 'Sebastian', 1400, 0, 'Sebastian@gmail.com', 'Normal', 'Infinitum', '2024-03-12', '13:30:00', '2024-03-12', '14:00:00', 'Hi!', '2024-06-09', '09:00:00', 'Goodbye', 'Cold', 'Emma', 'Marketing', 'Qualified', 'true', 0),
	(58, 2, 3, '553-8901', 'Natalia', 1700, 1, 'Natalia@gmail.com', 'Importante', 'Infinitum', '2024-03-13', '10:45:00', '2024-03-13', '11:15:00', 'Good morning', '2024-06-10', '10:30:00', 'See you later', 'New', 'Daniel', 'Presales', 'Contacted', 'false', 1),
	(59, 2, 3, '553-6789', 'Donato', 1900, 0, 'Donato@gmail.com', 'Normal', 'Infinitum', '2024-03-14', '09:15:00', '2024-03-14', '09:45:00', 'Hello!', '2024-06-11', '11:00:00', 'Have a great day', 'Cold', 'Sophia', 'Marketing', 'Contacted', 'true', 0),
	(60, 2, 3, '553-1234', 'Sofia', 1300, 1, 'Sofia@gmail.com', 'Urgente', 'Infinitum', '2024-03-15', '12:30:00', '2024-03-15', '13:00:00', 'Hey there!', '2024-06-12', '12:30:00', 'Talk to you later', 'Qualified', 'Sarah', 'Sales', 'Contacted', 'false', 1),
	(61, 2, 4, '553-2345', 'Luis Alejandro', 1400, 0, 'Luis Alejandro@gmail.com', 'Normal', 'Telcel', '2024-03-16', '11:45:00', '2024-03-16', '12:15:00', 'Hello!', '2024-06-13', '13:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Contacted', 'true', 0),
	(62, 2, 4, '553-3456', 'Bernardo', 1500, 1, 'Bernardo@gmail.com', 'Importante', 'Movistar', '2024-03-17', '10:15:00', '2024-03-17', '10:45:00', 'Good morning', '2024-06-14', '14:00:00', 'See you later', 'Qualified', 'Emily', 'Presales', 'Contacted', 'false', 1),
	(63, 3, 5, '554-4567', 'Jimena', 1600, 0, 'Jimena@gmail.com', 'Normal', 'Infinitum', '2024-03-18', '09:30:00', '2024-03-18', '10:00:00', 'Hi there', '2024-06-15', '15:30:00', 'Goodbye', 'Cold', 'Michael', 'Marketing', 'Qualified', 'true', 0),
	(64, 3, 5, '554-5678', 'Gael', 1700, 1, 'Gael@gmail.com', 'Urgente', 'Infinitum', '2024-03-19', '11:00:00', '2024-03-19', '11:30:00', 'Hello!', '2024-06-16', '16:00:00', 'See you tomorrow', 'New', 'Sophia', 'Sales', 'Contacted', 'false', 1),
	(65, 3, 6, '554-6789', 'Isabella', 1800, 0, 'Isabella@gmail.com', 'Normal', 'MegaCable', '2024-03-20', '10:30:00', '2024-03-20', '11:00:00', 'Hey there!', '2024-06-17', '17:30:00', 'Talk to you later', 'Cold', 'Daniel', 'Marketing', 'Qualified', 'true', 0),
	(66, 3, 6, '554-7890', 'Andrés', 1900, 1, 'Andrés@gmail.com', 'Importante', 'Pinnacle', '2024-03-21', '09:45:00', '2024-03-21', '10:15:00', 'Good morning', '2024-06-18', '12:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(67, 3, 7, '554-8901', 'Renata', 2000, 0, 'Renata@gmail.com', 'Normal', 'Telcel', '2024-03-22', '11:00:00', '2024-03-22', '11:30:00', 'Hi!', '2024-06-19', '14:30:00', 'Goodbye', 'Cold', 'Sarah', 'Marketing', 'Qualified', 'true', 0),
	(68, 3, 7, '554-9012', 'Angel', 2200, 1, 'Angel@gmail.com', 'Urgente', 'Infinitum', '2024-03-23', '10:15:00', '2024-03-23', '10:45:00', 'Hello!', '2024-06-20', '13:00:00', 'Take care', 'New', 'John', 'Sales', 'Contacted', 'false', 1),
	(69, 4, 8, '554-2345', 'Valentina', 1800, 0, 'Valentina@gmail.com', 'Normal', 'Infinitum', '2024-03-24', '12:00:00', '2024-03-24', '12:30:00', 'Hey there!', '2024-06-21', '15:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(70, 4, 8, '557-3456', 'Daniel', 1900, 1, 'Daniel@gmail.com', 'Importante', 'Infinitum', '2024-03-25', '11:30:00', '2024-03-25', '12:00:00', 'Good morning', '2024-06-22', '16:00:00', 'See you later', 'Qualified', 'David', 'Presales', 'Contacted', 'false', 1),
	(71, 4, 9, '557-4567', 'Luis Daniel', 2000, 0, 'Luis Daniel@gmail.com', 'Normal', 'Infinitum', '2024-03-26', '09:00:00', '2024-03-26', '09:30:00', 'Hi there', '2024-06-23', '10:30:00', 'Goodbye', 'Cold', 'Emily', 'Marketing', 'Qualified', 'true', 0),
	(72, 4, 9, '557-5678', 'Juan Pablo', 2100, 1, 'Juan Pablo@gmail.com', 'Urgente', 'Infinitum', '2024-03-27', '10:45:00', '2024-03-27', '11:15:00', 'Hello!', '2024-06-24', '12:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(73, 4, 10, '575-6789', 'Luciana', 2200, 0, 'Luciana@gmail.com', 'Normal', 'MegaCable', '2024-03-28', '12:30:00', '2024-03-28', '13:00:00', 'Hey there!', '2024-06-25', '14:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(74, 4, 10, '575-7890', 'Javier', 2300, 1, 'Javier@gmail.com', 'Importante', 'Infinitum', '2024-03-29', '13:15:00', '2024-03-29', '13:45:00', 'Good morning', '2024-06-26', '15:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(75, 5, 11, '575-9012', 'Fernando', 2400, 0, 'Fernando@gmail.com', 'Normal', 'Telcel', '2024-03-30', '14:00:00', '2024-03-30', '14:30:00', 'Hi!', '2024-06-27', '16:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(76, 5, 11, '575-1234', 'Victoria', 2500, 1, 'Victoria@gmail.com', 'Urgente', 'Infinitum', '2024-03-31', '15:30:00', '2024-03-31', '16:00:00', 'Hello!', '2024-06-28', '09:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(77, 5, 12, '585-2345', 'Elena', 2600, 0, 'Elena@gmail.com', 'Normal', 'Movistar', '2024-04-01', '16:45:00', '2024-04-01', '17:15:00', 'Hey there!', '2024-06-29', '10:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(78, 5, 12, '585-3456', 'Ernesto', 2700, 1, 'Ernesto@gmail.com', 'Importante', 'NatGas', '2024-04-02', '17:00:00', '2024-04-02', '17:30:00', 'Good morning', '2024-06-30', '11:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(79, 5, 13, '585-4567', 'Ivana', 2800, 0, 'Ivana@gmail.com', 'Normal', 'MegaCable', '2024-04-03', '09:30:00', '2024-04-03', '10:00:00', 'Hi there', '2024-07-01', '13:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(80, 5, 13, '585-5678', 'Valentino', 2900, 1, 'Valentino@gmail.com', 'Urgente', 'MegaCable', '2024-04-04', '10:45:00', '2024-04-04', '11:15:00', 'Hello!', '2024-07-02', '14:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(81, 5, 14, '585-6789', 'Manuel', 3000, 0, 'Manuel@gmail.com', 'Normal', 'MegaCable', '2024-04-05', '11:30:00', '2024-04-05', '12:00:00', 'Hi!', '2024-07-03', '15:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(82, 5, 14, '585-7890', 'Carla', 3100, 1, 'Carla@gmail.com', 'Importante', 'MegaCable', '2024-04-06', '12:15:00', '2024-04-06', '12:45:00', 'Good morning', '2024-07-04', '09:30:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(83, 6, 15, '585-9012', 'Karla', 3200, 0, 'Karla@gmail.com', 'Normal', 'Movistar', '2024-04-07', '13:00:00', '2024-04-07', '13:30:00', 'Hello!', '2024-07-05', '10:45:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(84, 6, 15, '585-2345', 'Francisco', 3300, 1, 'Francisco@gmail.com', 'Urgente', 'MegaCable', '2024-04-08', '14:30:00', '2024-04-08', '15:00:00', 'Hey there!', '2024-07-06', '11:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(85, 6, 16, '585-3456', 'Paco', 3400, 0, 'Paco@gmail.com', 'Normal', 'MegaCable', '2024-04-09', '15:45:00', '2024-04-09', '16:15:00', 'Hi there', '2024-07-07', '12:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(86, 6, 16, '585-4567', 'María Belen', 3500, 1, 'María Belen@gmail.com', 'Importante', 'MegaCable', '2024-04-10', '16:30:00', '2024-04-10', '17:00:00', 'Hello!', '2024-07-08', '13:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(87, 6, 17, '595-5678', 'Belem', 3600, 0, 'Belem@gmail.com', 'Normal', 'Movistar', '2024-04-11', '17:45:00', '2024-04-11', '18:15:00', 'Hi!', '2024-07-09', '14:45:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(88, 6, 17, '595-6789', 'Oscar', 3700, 1, 'Oscar@gmail.com', 'Urgente', 'NatGas', '2024-04-12', '09:00:00', '2024-04-12', '09:30:00', 'Hey there!', '2024-07-10', '15:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(89, 7, 18, '595-7890', 'Pedro', 3800, 0, 'Pedro@gmail.com', 'Normal', 'NatGas', '2024-04-13', '09:30:00', '2024-04-13', '10:00:00', 'Hello!', '2024-07-11', '16:15:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(90, 7, 18, '595-9012', 'Nicole', 3900, 1, 'Nicole@gmail.com', 'Importante', 'NatGas', '2024-04-14', '10:00:00', '2024-04-14', '10:30:00', 'Good morning', '2024-07-12', '09:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(91, 7, 19, '595-2345', 'Alexis', 4000, 0, 'Alexis@gmail.com', 'Normal', 'NatGas', '2024-04-15', '11:15:00', '2024-04-15', '11:45:00', 'Hi!', '2024-07-13', '10:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(92, 7, 19, '595-3456', 'Alexys', 4100, 1, 'Alexys@gmail.com', 'pruebaCU', 'Dell', '2024-04-16', '12:00:00', '2024-04-16', '12:30:00', 'Hello!', '2024-07-14', '11:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(93, 7, 20, '595-4567', 'Martina', 4200, 0, 'Martina@gmail.com', 'Normal', 'Dell', '2024-04-17', '12:45:00', '2024-04-17', '13:15:00', 'Hi there', '2024-07-15', '12:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(94, 7, 20, '595-5678', 'Gabriel', 4300, 1, 'Gabriel@gmail.com', 'Importante', 'Dell', '2024-04-18', '13:30:00', '2024-04-18', '14:00:00', 'Good morning', '2024-07-16', '13:45:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(95, 7, 10, '525-6789', 'Esteban', 4400, 0, 'Esteban@gmail.com', 'Normal', 'Dell', '2024-04-19', '14:15:00', '2024-04-19', '14:45:00', 'Hello!', '2024-07-17', '14:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(96, 7, 10, '525-7890', 'Antonio', 4500, 1, 'Antonio@gmail.com', 'Urgente', 'Dell', '2024-04-20', '15:00:00', '2024-04-20', '15:30:00', 'Hey there!', '2024-07-18', '15:15:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(97, 7, 10, '525-9012', 'Iris', 4600, 0, 'Iris@gmail.com', 'Normal', 'Dell', '2024-04-21', '15:30:00', '2024-04-21', '16:00:00', 'Hi!', '2024-07-19', '16:30:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(98, 7, 10, '525-1234', 'Eunice', 4700, 1, 'Eunice@gmail.com', 'Importante', 'Dell', '2024-04-22', '16:00:00', '2024-04-22', '16:30:00', 'Hello!', '2024-07-20', '17:00:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(99, 7, 10, '525-2345', 'Jessica', 4800, 0, 'Jessica@gmail.com', 'Normal', 'Dell', '2024-04-23', '16:30:00', '2024-04-23', '17:00:00', 'Hi there', '2024-07-21', '17:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(100, 7, 10, '525-3456', 'Mariana', 4900, 1, 'Mariana@gmail.com', 'Urgente', 'Dell', '2024-04-24', '17:00:00', '2024-04-24', '17:30:00', 'Hey there!', '2024-07-22', '18:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(101, 7, 11, '+44-20-1234-5678', 'Emily Watson', 1100, 1, 'emily.watson@example.com', 'Importante', 'Telcel', '2024-04-25', '08:30:00', '2024-04-25', '09:00:00', 'Good morning!', '2024-07-23', '13:30:00', 'See you later', 'Qualified', 'John', 'Sales', 'Contacted', 'false', 1),
	(102, 7, 11, '+44-20-2345-6789', 'James Smith', 1200, 0, 'james.smith@example.com', 'Normal', 'Movistar', '2024-04-26', '09:00:00', '2024-04-26', '09:30:00', 'Hi there!', '2024-07-24', '14:00:00', 'Take care', 'Cold', 'Emily', 'Marketing', 'Qualified', 'true', 0),
	(103, 7, 12, '+44-20-3456-7890', 'Olivia Johnson', 1300, 1, 'olivia.johnson@example.com', 'Urgente', 'Infinitum', '2024-04-27', '09:30:00', '2024-04-27', '10:00:00', 'Hey!', '2024-07-25', '15:00:00', 'Goodbye', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(104, 7, 12, '+44-20-4567-8901', 'William Brown', 1400, 0, 'william.brown@example.com', 'Normal', 'Infinitum', '2024-04-28', '10:00:00', '2024-04-28', '10:30:00', 'Hello!', '2024-07-26', '16:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(105, 7, 13, '+44-20-5678-9012', 'Amelia Jones', 1500, 1, 'amelia.jones@example.com', 'Importante', 'Telcel', '2024-04-29', '10:30:00', '2024-04-29', '11:00:00', 'Good morning', '2024-07-27', '17:00:00', 'See you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(106, 7, 13, '+44-20-6789-0123', 'Oliver Davis', 1600, 0, 'oliver.davis@example.com', 'Normal', 'Movistar', '2024-04-30', '11:00:00', '2024-04-30', '11:30:00', 'Hi!', '2024-07-28', '09:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(107, 7, 14, '+44-20-7890-1234', 'Sophia Miller', 1700, 1, 'sophia.miller@example.com', 'Urgente', 'Infinitum', '2024-05-01', '11:30:00', '2024-05-01', '12:00:00', 'Hey there!', '2024-07-29', '10:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(108, 7, 14, '+44-20-8901-2345', 'Noah Wilson', 1800, 0, 'noah.wilson@example.com', 'Normal', 'Infinitum', '2024-05-02', '12:00:00', '2024-05-02', '12:30:00', 'Hello!', '2024-07-30', '11:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(109, 6, 15, '+44-20-9012-3456', 'Liam Taylor', 1900, 1, 'liam.taylor@example.com', 'Importante', 'Telcel', '2024-05-03', '12:30:00', '2024-05-03', '13:00:00', 'Good morning', '2024-07-31', '12:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(110, 6, 15, '+44-20-0123-4567', 'Emma Anderson', 2000, 0, 'emma.anderson@example.com', 'Normal', 'Movistar', '2024-05-04', '13:00:00', '2024-05-04', '13:30:00', 'Hi!', '2024-08-01', '13:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(111, 6, 16, '+33-1-2345-6789', 'Louis Martin', 2100, 1, 'louis.martin@example.com', 'Urgente', 'Infinitum', '2024-05-05', '13:30:00', '2024-05-05', '14:00:00', 'Hey there!', '2024-08-02', '13:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(112, 6, 16, '+33-1-3456-7890', 'Chloé Garcia', 2200, 0, 'chloe.garcia@example.com', 'Normal', 'Infinitum', '2024-05-06', '14:00:00', '2024-05-06', '14:30:00', 'Hello!', '2024-08-03', '14:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(113, 6, 17, '+33-1-4567-8901', 'Jules Dupont', 2300, 1, 'jules.dupont@example.com', 'Importante', 'Telcel', '2024-05-07', '14:30:00', '2024-05-07', '15:00:00', 'Good morning', '2024-08-04', '14:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(114, 6, 17, '+33-1-5678-9012', 'Emma Leroy', 2400, 0, 'emma.leroy@example.com', 'Normal', 'Movistar', '2024-05-08', '15:00:00', '2024-05-08', '15:30:00', 'Hi!', '2024-08-05', '15:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(115, 6, 18, '+33-1-6789-0123', 'Lucas Moreau', 2500, 1, 'lucas.moreau@example.com', 'Urgente', 'Infinitum', '2024-05-09', '15:30:00', '2024-05-09', '16:00:00', 'Hey there!', '2024-08-06', '15:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(116, 6, 18, '+33-1-7890-1234', 'Chloé Lefevre', 2600, 0, 'chloe.lefevre@example.com', 'Normal', 'Infinitum', '2024-05-10', '16:00:00', '2024-05-10', '16:30:00', 'Hello!', '2024-08-07', '16:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(117, 6, 19, '+33-1-8901-2345', 'Mathis Roux', 2700, 1, 'mathis.roux@example.com', 'Importante', 'Telcel', '2024-05-11', '16:30:00', '2024-05-11', '17:00:00', 'Good morning', '2024-08-08', '16:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(118, 6, 19, '+33-1-9012-3456', 'Lucie Vincent', 2800, 0, 'lucie.vincent@example.com', 'Normal', 'Movistar', '2024-05-12', '17:00:00', '2024-05-12', '17:30:00', 'Hi!', '2024-08-09', '17:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(119, 6, 20, '+33-1-0123-4567', 'Manon Thomas', 2900, 1, 'manon.thomas@example.com', 'Urgente', 'Infinitum', '2024-05-13', '17:30:00', '2024-05-13', '18:00:00', 'Hey there!', '2024-08-10', '17:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(120, 6, 20, '+33-1-1234-5678', 'Enzo Leroux', 3000, 0, 'enzo.leroux@example.com', 'Normal', 'Infinitum', '2024-05-14', '18:00:00', '2024-05-14', '18:30:00', 'Hello!', '2024-08-11', '18:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(121, 5, 20, '+33-1-2345-6789', 'Mathéo Leclerc', 3100, 1, 'matheo.leclerc@example.com', 'Importante', 'Telcel', '2024-05-15', '18:30:00', '2024-05-15', '19:00:00', 'Good morning', '2024-08-12', '18:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(122, 5, 20, '+33-1-3456-7890', 'Hugo Garcia', 3200, 0, 'hugo.garcia@example.com', 'Normal', 'Movistar', '2024-05-16', '19:00:00', '2024-05-16', '19:30:00', 'Hi!', '2024-08-13', '19:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(123, 5, 20, '+33-1-4567-8901', 'Raphaël Lefevre', 3300, 1, 'raphael.lefevre@example.com', 'Urgente', 'Infinitum', '2024-05-17', '19:30:00', '2024-05-17', '20:00:00', 'Hey there!', '2024-08-14', '19:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(124, 1, 8, '+44-20-9876-5432', 'Charlotte Martin', 3400, 1, 'charlotte.martin@example.com', 'Importante', 'Telcel', '2024-05-18', '20:00:00', '2024-05-18', '20:30:00', 'Good morning', '2024-08-15', '20:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(125, 2, 9, '+44-20-8765-4321', 'Sophie Dubois', 3500, 0, 'sophie.dubois@example.com', 'Normal', 'Movistar', '2024-05-19', '20:30:00', '2024-05-19', '21:00:00', 'Hi!', '2024-08-16', '20:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(126, 3, 10, '+44-20-7654-3210', 'Lucas Morel', 3600, 1, 'lucas.morel@example.com', 'Urgente', 'Infinitum', '2024-05-20', '21:00:00', '2024-05-20', '21:30:00', 'Hey there!', '2024-08-17', '21:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(127, 4, 11, '+44-20-6543-2109', 'Manon Petit', 3700, 0, 'manon.petit@example.com', 'Normal', 'Infinitum', '2024-05-21', '21:30:00', '2024-05-21', '22:00:00', 'Hello!', '2024-08-18', '21:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(128, 5, 12, '+44-20-5432-1098', 'Mathéo Lambert', 3800, 1, 'matheo.lambert@example.com', 'Importante', 'Telcel', '2024-05-22', '22:00:00', '2024-05-22', '22:30:00', 'Good morning', '2024-08-19', '22:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(129, 6, 13, '+44-20-4321-0987', 'Chloé Dupuis', 3900, 0, 'chloe.dupuis@example.com', 'Normal', 'Movistar', '2024-05-23', '22:30:00', '2024-05-23', '23:00:00', 'Hi!', '2024-08-20', '22:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(130, 7, 14, '+44-20-3210-9876', 'Lucas Roussel', 4000, 1, 'lucas.roussel@example.com', 'Urgente', 'Infinitum', '2024-05-24', '23:00:00', '2024-05-24', '23:30:00', 'Hey there!', '2024-08-21', '23:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(131, 1, 15, '+44-20-2109-8765', 'Emma Girard', 4100, 0, 'emma.girard@example.com', 'Normal', 'Infinitum', '2024-05-25', '23:30:00', '2024-05-25', '00:00:00', 'Hello!', '2024-08-22', '23:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(132, 2, 16, '+33-1-2345-6789', 'Louis Durand', 4200, 1, 'louis.durand@example.com', 'Importante', 'Telcel', '2024-05-26', '00:00:00', '2024-05-26', '00:30:00', 'Good morning', '2024-08-23', '00:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(133, 3, 17, '+33-1-3456-7890', 'Chloé Moreau', 4300, 0, 'chloe.moreau@example.com', 'Normal', 'Movistar', '2024-05-27', '00:30:00', '2024-05-27', '01:00:00', 'Hi!', '2024-08-24', '00:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(134, 4, 18, '+33-1-4567-8901', 'Lucas Simon', 4400, 1, 'lucas.simon@example.com', 'Urgente', 'Infinitum', '2024-05-28', '01:00:00', '2024-05-28', '01:30:00', 'Hey there!', '2024-08-25', '01:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(135, 5, 19, '+33-1-5678-9012', 'Manon Lefevre', 4500, 0, 'manon.lefevre@example.com', 'Normal', 'Infinitum', '2024-05-29', '01:30:00', '2024-05-29', '02:00:00', 'Hello!', '2024-08-26', '01:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(136, 6, 20, '+33-1-6789-0123', 'Mathis Leroy', 4600, 1, 'mathis.leroy@example.com', 'Importante', 'Telcel', '2024-05-30', '02:00:00', '2024-05-30', '02:30:00', 'Good morning', '2024-08-27', '02:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(137, 7, 1, '+33-1-7890-1234', 'Emma Lambert', 4700, 0, 'emma.lambert@example.com', 'Normal', 'Movistar', '2024-05-31', '02:30:00', '2024-05-31', '03:00:00', 'Hi!', '2024-08-28', '02:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(138, 1, 2, '+33-1-8901-2345', 'Louis Bonnet', 4800, 1, 'louis.bonnet@example.com', 'Urgente', 'Infinitum', '2024-06-01', '03:00:00', '2024-06-01', '03:30:00', 'Hey there!', '2024-08-29', '03:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(139, 2, 3, '+33-1-9012-3456', 'Chloé Laurent', 4900, 0, 'chloe.laurent@example.com', 'Normal', 'Infinitum', '2024-06-02', '03:30:00', '2024-06-02', '04:00:00', 'Hello!', '2024-08-30', '03:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(140, 3, 4, '+33-1-0123-4567', 'Lucas Dubois', 5000, 1, 'lucas.dubois@example.com', 'Importante', 'Telcel', '2024-06-03', '04:00:00', '2024-06-03', '04:30:00', 'Good morning', '2024-08-31', '04:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(141, 4, 5, '+33-1-1234-5678', 'Manon Girard', 5100, 0, 'manon.girard@example.com', 'Normal', 'Movistar', '2024-06-04', '04:30:00', '2024-06-04', '05:00:00', 'Hi!', '2024-09-01', '04:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(142, 5, 6, '+33-1-2345-6789', 'Mathéo Bonnet', 5200, 1, 'matheo.bonnet@example.com', 'Urgente', 'Infinitum', '2024-06-05', '05:00:00', '2024-06-05', '05:30:00', 'Hey there!', '2024-09-02', '05:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(143, 6, 7, '+33-1-3456-7890', 'Emma Laurent', 5300, 0, 'emma.laurent@example.com', 'Normal', 'Infinitum', '2024-06-06', '05:30:00', '2024-06-06', '06:00:00', 'Hello!', '2024-09-03', '05:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(144, 7, 8, '+33-1-4567-8901', 'Louis Dubois', 5400, 1, 'louis.dubois@example.com', 'Importante', 'Telcel', '2024-06-07', '06:00:00', '2024-06-07', '06:30:00', 'Good morning', '2024-09-04', '06:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(145, 1, 9, '+44-20-0987-6543', 'Chloé Petit', 5500, 0, 'chloe.petit@example.com', 'Normal', 'Movistar', '2024-06-08', '06:30:00', '2024-06-08', '07:00:00', 'Hi!', '2024-09-05', '06:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(146, 2, 10, '+44-20-9876-5432', 'Lucas Robert', 5600, 1, 'lucas.robert@example.com', 'Urgente', 'Infinitum', '2024-06-09', '07:00:00', '2024-06-09', '07:30:00', 'Hey there!', '2024-09-06', '07:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(147, 3, 11, '+44-20-8765-4321', 'Emma Garcia', 5700, 0, 'emma.garcia@example.com', 'Normal', 'Infinitum', '2024-06-10', '07:30:00', '2024-06-10', '08:00:00', 'Hello!', '2024-09-07', '07:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(148, 4, 12, '+44-20-7654-3210', 'Louis Durand', 5800, 1, 'louis.durand@example.com', 'Importante', 'Telcel', '2024-06-11', '08:00:00', '2024-06-11', '08:30:00', 'Good morning', '2024-09-08', '08:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(149, 5, 13, '+44-20-6543-2109', 'Chloé Martin', 5900, 0, 'chloe.martin@example.com', 'Normal', 'Movistar', '2024-06-12', '08:30:00', '2024-06-12', '09:00:00', 'Hi!', '2024-09-09', '08:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(150, 6, 14, '+44-20-5432-1098', 'Lucas Dupont', 6000, 1, 'lucas.dupont@example.com', 'Urgente', 'Infinitum', '2024-06-13', '09:00:00', '2024-06-13', '09:30:00', 'Hey there!', '2024-09-10', '09:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(151, 7, 15, '+44-20-4321-0987', 'Emma Leroy', 6100, 0, 'emma.leroy@example.com', 'Normal', 'Infinitum', '2024-06-14', '09:30:00', '2024-06-14', '10:00:00', 'Hello!', '2024-09-11', '09:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(152, 1, 16, '+44-20-3210-9876', 'Louis Moreau', 6200, 1, 'louis.moreau@example.com', 'Importante', 'Telcel', '2024-06-15', '10:00:00', '2024-06-15', '10:30:00', 'Good morning', '2024-09-12', '10:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(153, 2, 17, '+44-20-2109-8765', 'Chloé Laurent', 6300, 0, 'chloe.laurent@example.com', 'Normal', 'Movistar', '2024-06-16', '10:30:00', '2024-06-16', '11:00:00', 'Hi!', '2024-09-13', '10:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(154, 3, 18, '+44-20-0987-7654', 'Lucas Garcia', 6400, 1, 'lucas.garcia@example.com', 'Urgente', 'Infinitum', '2024-06-17', '11:00:00', '2024-06-17', '11:30:00', 'Hey there!', '2024-09-14', '11:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(155, 4, 19, '+44-20-9876-6543', 'Emma Dupuis', 6500, 0, 'emma.dupuis@example.com', 'Normal', 'Infinitum', '2024-06-18', '11:30:00', '2024-06-18', '12:00:00', 'Hello!', '2024-09-15', '11:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(156, 5, 20, '+44-20-8765-5432', 'Louis Leroy', 6600, 1, 'louis.leroy@example.com', 'Importante', 'Telcel', '2024-06-19', '12:00:00', '2024-06-19', '12:30:00', 'Good morning', '2024-09-16', '12:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(157, 6, 1, '+44-20-7654-4321', 'Chloé Martin', 6700, 0, 'chloe.martin@example.com', 'Normal', 'Movistar', '2024-06-20', '12:30:00', '2024-06-20', '13:00:00', 'Hi!', '2024-09-17', '12:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(158, 7, 2, '+44-20-6543-3210', 'Lucas Dubois', 6800, 1, 'lucas.dubois@example.com', 'Urgente', 'Infinitum', '2024-06-21', '13:00:00', '2024-06-21', '13:30:00', 'Hey there!', '2024-09-18', '13:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(159, 1, 3, '+44-20-5432-2109', 'Emma Lambert', 6900, 0, 'emma.lambert@example.com', 'Normal', 'Infinitum', '2024-06-22', '13:30:00', '2024-06-22', '14:00:00', 'Hello!', '2024-09-19', '13:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(160, 2, 4, '+44-20-4321-0987', 'Louis Bonnet', 7000, 1, 'louis.bonnet@example.com', 'Importante', 'Telcel', '2024-06-23', '14:00:00', '2024-06-23', '14:30:00', 'Good morning', '2024-09-20', '14:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(161, 3, 5, '+44-20-3210-9876', 'Chloé Laurent', 7100, 0, 'chloe.laurent@example.com', 'Normal', 'Movistar', '2024-06-24', '14:30:00', '2024-06-24', '15:00:00', 'Hi!', '2024-09-21', '14:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(162, 4, 6, '+44-20-2109-8765', 'Lucas Garcia', 7200, 1, 'lucas.garcia@example.com', 'Urgente', 'Infinitum', '2024-06-25', '15:00:00', '2024-06-25', '15:30:00', 'Hey there!', '2024-09-22', '15:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(163, 5, 7, '+44-20-0987-7654', 'Emma Dupuis', 7300, 0, 'emma.dupuis@example.com', 'Normal', 'Infinitum', '2024-06-26', '15:30:00', '2024-06-26', '16:00:00', 'Hello!', '2024-09-23', '15:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(164, 6, 8, '+44-20-9876-6543', 'Louis Leroy', 7400, 1, 'louis.leroy@example.com', 'Importante', 'Telcel', '2024-06-27', '16:00:00', '2024-06-27', '16:30:00', 'Good morning', '2024-09-24', '16:00:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(165, 7, 9, '+44-20-8765-5432', 'Chloé Martin', 7500, 0, 'chloe.martin@example.com', 'Normal', 'Movistar', '2024-06-28', '16:30:00', '2024-06-28', '17:00:00', 'Hi!', '2024-09-25', '16:30:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(166, 1, 10, '+1-212-345-6789', 'John Smith', 7600, 1, 'john.smith@example.com', 'Importante', 'Telcel', '2024-06-29', '17:00:00', '2024-06-29', '17:30:00', 'Hey there!', '2024-09-26', '17:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(167, 2, 11, '+1-312-456-7890', 'Aisha Patel', 7700, 0, 'aisha.patel@example.com', 'Normal', 'Infinitum', '2024-06-30', '17:30:00', '2024-06-30', '18:00:00', 'Hello!', '2024-09-27', '17:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(168, 3, 12, '+1-412-567-8901', 'Chen Wang', 7800, 1, 'chen.wang@example.com', 'Urgente', 'Movistar', '2024-07-01', '18:00:00', '2024-07-01', '18:30:00', 'Hi!', '2024-09-28', '18:00:00', 'Goodbye', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(169, 4, 13, '+1-512-678-9012', 'Fatima Khan', 7900, 0, 'fatima.khan@example.com', 'Normal', 'Telcel', '2024-07-02', '18:30:00', '2024-07-02', '19:00:00', 'Good morning', '2024-09-29', '18:30:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(170, 5, 14, '+1-612-789-0123', 'David Kim', 8000, 1, 'david.kim@example.com', 'Importante', 'Infinitum', '2024-07-03', '19:00:00', '2024-07-03', '19:30:00', 'Hey there!', '2024-09-30', '19:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(171, 6, 15, '+1-712-890-1234', 'Sophia Lee', 8100, 0, 'sophia.lee@example.com', 'Normal', 'Movistar', '2024-07-04', '19:30:00', '2024-07-04', '20:00:00', 'Hello!', '2024-10-01', '19:30:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(172, 7, 16, '+1-812-901-2345', 'Jose da Silva', 8200, 1, 'jose.silva@example.com', 'Urgente', 'Telcel', '2024-07-05', '20:00:00', '2024-07-05', '20:30:00', 'Hi!', '2024-10-02', '20:00:00', 'Goodbye', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(173, 1, 17, '+1-912-012-3456', 'Maria Garcia', 8300, 0, 'maria.garcia@example.com', 'Normal', 'Infinitum', '2024-07-06', '20:30:00', '2024-07-06', '21:00:00', 'Good morning', '2024-10-03', '20:30:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(174, 2, 18, '+86-10-1234-5678', 'Li Wei', 8400, 1, 'li.wei@example.com', 'Importante', 'Movistar', '2024-07-07', '21:00:00', '2024-07-07', '21:30:00', 'Hey there!', '2024-10-04', '21:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(175, 3, 19, '+86-20-2345-6789', 'Zhang Min', 8500, 0, 'zhang.min@example.com', 'Normal', 'Telcel', '2024-07-08', '21:30:00', '2024-07-08', '22:00:00', 'Hi!', '2024-10-05', '21:30:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(176, 4, 20, '+86-30-3456-7890', 'Wang Wei', 8600, 1, 'wang.wei@example.com', 'Urgente', 'Infinitum', '2024-07-09', '22:00:00', '2024-07-09', '22:30:00', 'Hello!', '2024-10-06', '22:00:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(177, 5, 1, '+86-40-4567-8901', 'Liu Jing', 8700, 0, 'liu.jing@example.com', 'Normal', 'Movistar', '2024-07-10', '22:30:00', '2024-07-10', '23:00:00', 'Good morning', '2024-10-07', '22:30:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(178, 6, 2, '+86-50-5678-9012', 'Chen Yi', 8800, 1, 'chen.yi@example.com', 'Importante', 'Telcel', '2024-07-11', '23:00:00', '2024-07-11', '23:30:00', 'Hey there!', '2024-10-08', '23:00:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(179, 7, 3, '+86-60-6789-0123', 'Wu Hong', 8900, 0, 'wu.hong@example.com', 'Normal', 'Infinitum', '2024-07-12', '23:30:00', '2024-07-12', '23:59:59', 'Hi!', '2024-10-09', '23:30:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(180, 1, 4, '+1-813-012-3456', 'Emily Johnson', 9000, 1, 'emily.johnson@example.com', 'Importante', 'Telcel', '2024-08-01', '08:00:00', '2024-08-05', '09:00:00', 'Hey there!', '2024-11-26', '08:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(181, 2, 5, '+1-813-123-4567', 'William Anderson', 9100, 0, 'william.anderson@example.com', 'Normal', 'Infinitum', '2024-08-02', '08:30:00', '2024-08-06', '09:30:00', 'Hello!', '2024-11-27', '09:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(182, 3, 6, '+1-813-234-5678', 'Olivia Martinez', 9200, 1, 'olivia.martinez@example.com', 'Urgente', 'Movistar', '2024-08-03', '09:00:00', '2024-08-07', '10:00:00', 'Hi!', '2024-11-28', '09:30:00', 'Goodbye', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(183, 4, 7, '+1-813-345-6789', 'James Brown', 9300, 0, 'james.brown@example.com', 'Normal', 'Telcel', '2024-08-04', '09:30:00', '2024-08-08', '10:30:00', 'Good morning', '2024-11-29', '10:00:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(184, 5, 8, '+1-813-456-7890', 'Amelia Taylor', 9400, 1, 'amelia.taylor@example.com', 'Importante', 'Infinitum', '2024-08-05', '10:00:00', '2024-08-09', '11:00:00', 'Hey there!', '2024-11-30', '10:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(185, 6, 9, '+1-813-567-8901', 'Oliver Wilson', 9500, 0, 'oliver.wilson@example.com', 'Normal', 'Movistar', '2024-08-06', '10:30:00', '2024-08-10', '11:30:00', 'Hi!', '2024-12-01', '11:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(186, 7, 10, '+1-813-678-9012', 'Sophia Thomas', 9600, 1, 'sophia.thomas@example.com', 'Urgente', 'Telcel', '2024-08-07', '11:00:00', '2024-08-11', '12:00:00', 'Hello!', '2024-12-02', '11:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(187, 1, 11, '+1-813-789-0123', 'Noah Garcia', 9700, 0, 'noah.garcia@example.com', 'Normal', 'Infinitum', '2024-08-08', '11:30:00', '2024-08-12', '12:30:00', 'Good morning', '2024-12-03', '12:00:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(188, 2, 12, '+1-813-890-1234', 'Emma Rodriguez', 9800, 1, 'emma.rodriguez@example.com', 'Importante', 'Movistar', '2024-08-09', '12:00:00', '2024-08-13', '13:00:00', 'Hey there!', '2024-12-04', '12:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(189, 3, 13, '+1-813-901-2345', 'Liam Martinez', 9900, 0, 'liam.martinez@example.com', 'Normal', 'Telcel', '2024-08-10', '12:30:00', '2024-08-14', '13:30:00', 'Hi!', '2024-12-05', '13:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(190, 4, 14, '+1-813-012-3456', 'Olivia Hernandez', 10000, 1, 'olivia.hernandez@example.com', 'Urgente', 'Infinitum', '2024-08-11', '13:00:00', '2024-08-15', '14:00:00', 'Good morning', '2024-12-06', '13:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(191, 5, 15, '+1-813-123-4567', 'William Lopez', 10100, 0, 'william.lopez@example.com', 'Normal', 'Movistar', '2024-08-12', '13:30:00', '2024-08-16', '14:30:00', 'Hello!', '2024-12-07', '14:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(192, 6, 16, '+1-813-234-5678', 'Amelia Perez', 10200, 1, 'amelia.perez@example.com', 'Importante', 'Telcel', '2024-08-13', '14:00:00', '2024-08-17', '15:00:00', 'Hey there!', '2024-12-08', '14:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(193, 7, 17, '+1-813-345-6789', 'Oliver Gonzalez', 10300, 0, 'oliver.gonzalez@example.com', 'Normal', 'Infinitum', '2024-08-14', '14:30:00', '2024-08-18', '15:30:00', 'Hi!', '2024-12-09', '15:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(194, 1, 18, '+1-813-456-7890', 'Sophia Rodriguez', 10400, 1, 'sophia.rodriguez@example.com', 'Urgente', 'Movistar', '2024-08-15', '15:00:00', '2024-08-19', '16:00:00', 'Hello!', '2024-12-10', '15:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(195, 2, 19, '+1-813-567-8901', 'Noah Garcia', 10500, 0, 'noah.garcia@example.com', 'Normal', 'Telcel', '2024-08-16', '15:30:00', '2024-08-20', '16:30:00', 'Good morning', '2024-12-11', '16:00:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(196, 3, 20, '+1-813-678-9012', 'Emma Hernandez', 10600, 1, 'emma.hernandez@example.com', 'Importante', 'Infinitum', '2024-08-17', '16:00:00', '2024-08-21', '17:00:00', 'Hey there!', '2024-12-12', '16:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(197, 4, 1, '+1-813-789-0123', 'Liam Lopez', 10700, 0, 'liam.lopez@example.com', 'Normal', 'Movistar', '2024-08-18', '16:30:00', '2024-08-22', '17:30:00', 'Hi!', '2024-12-13', '17:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(198, 5, 2, '+1-813-890-1234', 'Olivia Perez', 10800, 1, 'olivia.perez@example.com', 'Urgente', 'Telcel', '2024-08-19', '17:00:00', '2024-08-23', '18:00:00', 'Good morning', '2024-12-14', '17:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(199, 6, 3, '+1-813-901-2345', 'William Gonzalez', 10900, 0, 'william.gonzalez@example.com', 'Normal', 'Infinitum', '2024-08-20', '17:30:00', '2024-08-24', '18:30:00', 'Hello!', '2024-12-15', '18:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(200, 7, 4, '+1-813-012-3456', 'Amelia Rodriguez', 11000, 1, 'amelia.rodriguez@example.com', 'Importante', 'Movistar', '2024-08-21', '18:00:00', '2024-08-25', '19:00:00', 'Hey there!', '2024-12-16', '18:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(201, 1, 5, '+1-813-123-4567', 'Oliver Garcia', 11100, 0, 'oliver.garcia@example.com', 'Normal', 'Telcel', '2024-08-22', '18:30:00', '2024-08-26', '19:30:00', 'Hi!', '2024-12-17', '19:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(202, 2, 6, '+1-813-234-5678', 'Sophia Hernandez', 11200, 1, 'sophia.hernandez@example.com', 'Urgente', 'Infinitum', '2024-08-23', '19:00:00', '2024-08-27', '20:00:00', 'Good morning', '2024-12-18', '19:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(203, 3, 7, '+1-813-345-6789', 'Noah Lopez', 11300, 0, 'noah.lopez@example.com', 'Normal', 'Movistar', '2024-08-24', '19:30:00', '2024-08-28', '20:30:00', 'Hello!', '2024-12-19', '20:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(204, 4, 8, '+1-813-456-7890', 'Emma Perez', 11400, 1, 'emma.perez@example.com', 'Importante', 'Telcel', '2024-08-25', '20:00:00', '2024-08-29', '21:00:00', 'Hey there!', '2024-12-20', '20:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(205, 5, 9, '+1-813-567-8901', 'Liam Gonzalez', 11500, 0, 'liam.gonzalez@example.com', 'Normal', 'Infinitum', '2024-08-26', '20:30:00', '2024-08-30', '21:30:00', 'Hi!', '2024-12-21', '21:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(206, 6, 10, '+1-813-678-9012', 'Olivia Rodriguez', 11600, 1, 'olivia.rodriguez@example.com', 'Urgente', 'Movistar', '2024-08-27', '21:00:00', '2024-08-31', '22:00:00', 'Good morning', '2024-12-22', '21:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(207, 7, 11, '+1-813-789-0123', 'William Garcia', 11700, 0, 'william.garcia@example.com', 'Normal', 'Telcel', '2024-08-28', '21:30:00', '2024-09-01', '22:30:00', 'Hello!', '2024-12-23', '22:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(208, 1, 12, '+1-813-890-1234', 'Amelia Hernandez', 11800, 1, 'amelia.hernandez@example.com', 'Importante', 'Infinitum', '2024-08-29', '22:00:00', '2024-09-02', '23:00:00', 'Hey there!', '2024-12-24', '22:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(209, 2, 13, '+1-813-901-2345', 'Oliver Lopez', 11900, 0, 'oliver.lopez@example.com', 'Normal', 'Movistar', '2024-08-30', '22:30:00', '2024-09-03', '23:30:00', 'Hi!', '2024-12-25', '23:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(210, 3, 14, '+1-813-012-3456', 'Sophia Perez', 12000, 1, 'sophia.perez@example.com', 'Urgente', 'Telcel', '2024-08-31', '23:00:00', '2024-09-04', '00:00:00', 'Good morning', '2024-12-26', '23:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(211, 4, 15, '+1-813-123-4567', 'Noah Gonzalez', 12100, 0, 'noah.gonzalez@example.com', 'Normal', 'Infinitum', '2024-09-01', '23:30:00', '2024-09-05', '00:30:00', 'Hello!', '2024-12-27', '00:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(212, 5, 16, '+1-813-234-5678', 'Emma Rodriguez', 12200, 1, 'emma.rodriguez@example.com', 'Importante', 'Movistar', '2024-09-02', '00:00:00', '2024-09-06', '01:00:00', 'Hey there!', '2024-12-28', '00:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(213, 6, 17, '+1-813-345-6789', 'Liam Garcia', 12300, 0, 'liam.garcia@example.com', 'Normal', 'Telcel', '2024-09-03', '00:30:00', '2024-09-07', '01:30:00', 'Hi!', '2024-12-29', '01:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(214, 7, 18, '+1-813-456-7890', 'Olivia Hernandez', 12400, 1, 'olivia.hernandez@example.com', 'Urgente', 'Infinitum', '2024-09-04', '01:00:00', '2024-09-08', '02:00:00', 'Good morning', '2024-12-30', '01:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(215, 1, 19, '+1-813-567-8901', 'William Lopez', 12500, 0, 'william.lopez@example.com', 'Normal', 'Movistar', '2024-09-05', '01:30:00', '2024-09-09', '02:30:00', 'Hello!', '2024-12-31', '02:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(216, 2, 20, '+1-813-678-9012', 'Amelia Perez', 12600, 1, 'amelia.perez@example.com', 'Importante', 'Telcel', '2024-09-06', '02:00:00', '2024-09-10', '03:00:00', 'Hey there!', '2025-01-01', '02:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(217, 3, 1, '+1-813-789-0123', 'Oliver Gonzalez', 12700, 0, 'oliver.gonzalez@example.com', 'Normal', 'Infinitum', '2024-09-07', '02:30:00', '2024-09-11', '03:30:00', 'Hi!', '2025-01-02', '03:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(218, 4, 2, '+1-813-890-1234', 'Sophia Rodriguez', 12800, 1, 'sophia.rodriguez@example.com', 'Urgente', 'Movistar', '2024-09-08', '03:00:00', '2024-09-12', '04:00:00', 'Hello!', '2025-01-03', '03:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(219, 5, 3, '+1-813-901-2345', 'Noah Garcia', 12900, 0, 'noah.garcia@example.com', 'Normal', 'Telcel', '2024-09-09', '03:30:00', '2024-09-13', '04:30:00', 'Good morning', '2025-01-04', '04:00:00', 'Talk to you later', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(220, 6, 4, '+1-813-012-3456', 'Emma Hernandez', 13000, 1, 'emma.hernandez@example.com', 'Importante', 'Infinitum', '2024-09-10', '04:00:00', '2024-09-14', '05:00:00', 'Hey there!', '2025-01-05', '04:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(221, 7, 5, '+1-813-123-4567', 'Liam Lopez', 13100, 0, 'liam.lopez@example.com', 'Normal', 'Movistar', '2024-09-11', '04:30:00', '2024-09-15', '05:30:00', 'Hi!', '2025-01-06', '05:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(222, 1, 6, '+1-813-234-5678', 'Olivia Perez', 13200, 1, 'olivia.perez@example.com', 'Urgente', 'Telcel', '2024-09-12', '05:00:00', '2024-09-16', '06:00:00', 'Hello!', '2025-01-07', '05:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(223, 2, 7, '+1-813-345-6789', 'William Gonzalez', 13300, 0, 'william.gonzalez@example.com', 'Normal', 'Infinitum', '2024-09-13', '05:30:00', '2024-09-17', '06:30:00', 'Hey there!', '2025-01-08', '06:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(224, 3, 8, '+1-813-456-7890', 'Amelia Rodriguez', 13400, 1, 'amelia.rodriguez@example.com', 'Importante', 'Movistar', '2024-09-14', '06:00:00', '2024-09-18', '07:00:00', 'Hi!', '2025-01-09', '06:30:00', 'Goodbye', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(225, 4, 9, '+1-813-567-8901', 'Oliver Hernandez', 13500, 0, 'oliver.hernandez@example.com', 'Normal', 'Telcel', '2024-09-15', '06:30:00', '2024-09-19', '07:30:00', 'Good morning', '2025-01-10', '07:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(226, 5, 10, '+1-813-678-9012', 'Sophia Lopez', 13600, 1, 'sophia.lopez@example.com', 'Urgente', 'Infinitum', '2024-09-16', '07:00:00', '2024-09-20', '08:00:00', 'Hello!', '2025-01-11', '07:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(227, 6, 11, '+1-813-789-0123', 'Noah Perez', 13700, 0, 'noah.perez@example.com', 'Normal', 'Movistar', '2024-09-17', '07:30:00', '2024-09-21', '08:30:00', 'Hey there!', '2025-01-12', '08:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(228, 7, 12, '+1-813-890-1234', 'Emma Gonzalez', 13800, 1, 'emma.gonzalez@example.com', 'Importante', 'Telcel', '2024-09-18', '08:00:00', '2024-09-22', '09:00:00', 'Hi!', '2025-01-13', '08:30:00', 'Goodbye', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(229, 1, 13, '+1-813-901-2345', 'Olivia Hernandez', 13900, 0, 'olivia.hernandez@example.com', 'Normal', 'Infinitum', '2024-09-19', '08:30:00', '2024-09-23', '09:30:00', 'Hello!', '2025-01-14', '09:00:00', 'Talk to you later', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(230, 2, 14, '+1-813-012-3456', 'William Perez', 14000, 1, 'william.perez@example.com', 'Urgente', 'Movistar', '2024-09-20', '09:00:00', '2024-09-24', '10:00:00', 'Good morning', '2025-01-15', '09:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(231, 3, 15, '+1-813-123-4567', 'Amelia Rodriguez', 14100, 0, 'amelia.rodriguez@example.com', 'Normal', 'Telcel', '2024-09-21', '09:30:00', '2024-09-25', '10:30:00', 'Hey there!', '2025-01-16', '10:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(232, 4, 16, '+1-813-234-5678', 'Oliver Hernandez', 14200, 1, 'oliver.hernandez@example.com', 'Importante', 'Infinitum', '2024-09-22', '10:00:00', '2024-09-26', '11:00:00', 'Hi!', '2025-01-17', '10:30:00', 'Goodbye', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(233, 5, 17, '+1-813-345-6789', 'Sophia Gonzalez', 14300, 0, 'sophia.gonzalez@example.com', 'Normal', 'Movistar', '2024-09-23', '10:30:00', '2024-09-27', '11:30:00', 'Hello!', '2025-01-18', '11:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(234, 6, 18, '+1-813-456-7890', 'Noah Perez', 14400, 1, 'noah.perez@example.com', 'Urgente', 'Telcel', '2024-09-24', '11:00:00', '2024-09-28', '12:00:00', 'Hey there!', '2025-01-19', '11:30:00', 'Take care', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(235, 7, 19, '+1-813-567-8901', 'Emma Rodriguez', 14500, 0, 'emma.rodriguez@example.com', 'Normal', 'Infinitum', '2024-09-25', '11:30:00', '2024-09-29', '12:30:00', 'Hi!', '2025-01-20', '12:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(236, 1, 20, '+1-813-678-9012', 'Olivia Hernandez', 14600, 1, 'olivia.hernandez@example.com', 'Importante', 'Movistar', '2024-09-26', '12:00:00', '2024-09-30', '13:00:00', 'Good morning', '2025-01-21', '12:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(237, 2, 1, '+1-813-789-0123', 'William Perez', 14700, 0, 'william.perez@example.com', 'Normal', 'Telcel', '2024-09-27', '12:30:00', '2024-10-01', '13:30:00', 'Hello!', '2025-01-22', '13:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(238, 3, 2, '+1-813-890-1234', 'Amelia Rodriguez', 14800, 1, 'amelia.rodriguez@example.com', 'Urgente', 'Infinitum', '2024-09-28', '13:00:00', '2024-10-02', '14:00:00', 'Hey there!', '2025-01-23', '13:30:00', 'Take care', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(239, 4, 3, '+1-813-901-2345', 'Oliver Hernandez', 14900, 0, 'oliver.hernandez@example.com', 'Normal', 'Movistar', '2024-09-29', '13:30:00', '2024-10-03', '14:30:00', 'Hi!', '2025-01-24', '14:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(240, 5, 4, '+1-813-012-3456', 'Sophia Gonzalez', 15000, 1, 'sophia.gonzalez@example.com', 'Importante', 'Telcel', '2024-09-30', '14:00:00', '2024-10-04', '15:00:00', 'Hello!', '2025-01-25', '14:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(241, 6, 5, '+1-813-123-4567', 'Noah Perez', 15100, 0, 'noah.perez@example.com', 'Normal', 'Infinitum', '2024-10-01', '14:30:00', '2024-10-05', '15:30:00', 'Hey there!', '2025-01-26', '15:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(242, 7, 6, '+1-813-234-5678', 'Emma Hernandez', 15200, 1, 'emma.hernandez@example.com', 'Urgente', 'Movistar', '2024-10-02', '15:00:00', '2024-10-06', '16:00:00', 'Good morning', '2025-01-27', '15:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(243, 1, 7, '+1-813-345-6789', 'Olivia Rodriguez', 15300, 0, 'olivia.rodriguez@example.com', 'Normal', 'Telcel', '2024-10-03', '15:30:00', '2024-10-07', '16:30:00', 'Hi!', '2025-01-28', '16:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(244, 2, 8, '+1-813-456-7890', 'William Perez', 15400, 1, 'william.perez@example.com', 'Importante', 'Infinitum', '2024-10-04', '16:00:00', '2024-10-08', '17:00:00', 'Hello!', '2025-01-29', '16:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(245, 3, 9, '+1-813-567-8901', 'Amelia Gonzalez', 15500, 0, 'amelia.gonzalez@example.com', 'Normal', 'Movistar', '2024-10-05', '16:30:00', '2024-10-09', '17:30:00', 'Hey there!', '2025-01-30', '17:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(246, 4, 10, '+1-813-678-9012', 'Oliver Perez', 15600, 1, 'oliver.perez@example.com', 'Urgente', 'Telcel', '2024-10-06', '17:00:00', '2024-10-10', '18:00:00', 'Good morning', '2025-01-31', '17:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(247, 5, 11, '+1-813-789-0123', 'Sophia Hernandez', 15700, 0, 'sophia.hernandez@example.com', 'Normal', 'Infinitum', '2024-10-07', '17:30:00', '2024-10-11', '18:30:00', 'Hi!', '2025-02-01', '18:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(248, 6, 12, '+1-813-890-1234', 'Noah Rodriguez', 15800, 1, 'noah.rodriguez@example.com', 'Importante', 'Movistar', '2024-10-08', '18:00:00', '2024-10-12', '19:00:00', 'Hello!', '2025-02-02', '18:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(249, 7, 13, '+1-813-901-2345', 'Emma Perez', 15900, 0, 'emma.perez@example.com', 'Normal', 'Telcel', '2024-10-09', '18:30:00', '2024-10-13', '19:30:00', 'Hey there!', '2025-02-03', '19:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(250, 1, 14, '+1-813-012-3456', 'Olivia Gonzalez', 16000, 1, 'olivia.gonzalez@example.com', 'Urgente', 'Infinitum', '2024-10-10', '19:00:00', '2024-10-14', '20:00:00', 'Good morning', '2025-02-04', '19:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(251, 2, 15, '+1-813-123-4567', 'William Lopez', 16100, 0, 'william.lopez@example.com', 'Normal', 'Movistar', '2024-10-11', '19:30:00', '2024-10-15', '20:30:00', 'Hello!', '2025-02-05', '20:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(252, 3, 16, '+1-813-234-5678', 'Amelia Garcia', 16200, 1, 'amelia.garcia@example.com', 'Importante', 'Telcel', '2024-10-12', '20:00:00', '2024-10-16', '21:00:00', 'Hi!', '2025-02-06', '20:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(253, 4, 17, '+1-813-345-6789', 'Oliver Hernandez', 16300, 0, 'oliver.hernandez@example.com', 'Normal', 'Infinitum', '2024-10-13', '20:30:00', '2024-10-17', '21:30:00', 'Hey there!', '2025-02-07', '21:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(254, 5, 18, '+1-813-456-7890', 'Sophia Perez', 16400, 1, 'sophia.perez@example.com', 'Urgente', 'Movistar', '2024-10-14', '21:00:00', '2024-10-18', '22:00:00', 'Good morning', '2025-02-08', '21:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(255, 6, 19, '+1-813-567-8901', 'Noah Rodriguez', 16500, 0, 'noah.rodriguez@example.com', 'Normal', 'Telcel', '2024-10-15', '21:30:00', '2024-10-19', '22:30:00', 'Hello!', '2025-02-09', '22:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(256, 7, 20, '+1-813-678-9012', 'Emma Garcia', 16600, 1, 'emma.garcia@example.com', 'Importante', 'Infinitum', '2024-10-16', '22:00:00', '2024-10-20', '23:00:00', 'Hey there!', '2025-02-10', '22:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(257, 1, 1, '+1-813-789-0123', 'Olivia Hernandez', 16700, 0, 'olivia.hernandez@example.com', 'Normal', 'Movistar', '2024-10-17', '22:30:00', '2024-10-21', '23:30:00', 'Hi!', '2025-02-11', '23:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(258, 2, 2, '+1-813-890-1234', 'William Lopez', 16800, 1, 'william.lopez@example.com', 'Urgente', 'Telcel', '2024-10-18', '23:00:00', '2024-10-22', '00:00:00', 'Hello!', '2025-02-12', '23:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(259, 3, 3, '+1-813-901-2345', 'Amelia Gonzalez', 16900, 0, 'amelia.gonzalez@example.com', 'Importante', 'Infinitum', '2024-10-19', '23:30:00', '2024-10-23', '00:30:00', 'Hey there!', '2025-02-13', '00:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(260, 4, 4, '+1-813-012-3456', 'Oliver Perez', 17000, 1, 'oliver.perez@example.com', 'Normal', 'Movistar', '2024-10-20', '00:00:00', '2024-10-24', '01:00:00', 'Good morning', '2025-02-14', '00:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(261, 5, 5, '+1-813-123-4567', 'Sophia Rodriguez', 17100, 0, 'sophia.rodriguez@example.com', 'Urgente', 'Telcel', '2024-10-21', '00:30:00', '2024-10-25', '01:30:00', 'Hello!', '2025-02-15', '01:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(262, 6, 6, '+1-813-234-5678', 'Noah Garcia', 17200, 1, 'noah.garcia@example.com', 'Importante', 'Infinitum', '2024-10-22', '01:00:00', '2024-10-26', '02:00:00', 'Hey there!', '2025-02-16', '01:30:00', 'Take care', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(263, 7, 7, '+1-813-345-6789', 'Emma Hernandez', 17300, 0, 'emma.hernandez@example.com', 'Normal', 'Movistar', '2024-10-23', '01:30:00', '2024-10-27', '02:30:00', 'Hi!', '2025-02-17', '02:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(264, 1, 8, '+1-813-456-7890', 'Olivia Perez', 17400, 1, 'olivia.perez@example.com', 'Urgente', 'Telcel', '2024-10-24', '02:00:00', '2024-10-28', '03:00:00', 'Good morning', '2025-02-18', '02:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(265, 2, 9, '+1-813-567-8901', 'William Gonzalez', 17500, 0, 'william.gonzalez@example.com', 'Importante', 'Infinitum', '2024-10-25', '02:30:00', '2024-10-29', '03:30:00', 'Hello!', '2025-02-19', '03:00:00', 'See you tomorrow', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(266, 3, 10, '+1-813-678-9012', 'Amelia Rodriguez', 17600, 1, 'amelia.rodriguez@example.com', 'Normal', 'Movistar', '2024-10-26', '03:00:00', '2024-10-30', '04:00:00', 'Hey there!', '2025-02-20', '03:30:00', 'Take care', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(267, 4, 11, '+1-813-789-0123', 'Oliver Garcia', 17700, 0, 'oliver.garcia@example.com', 'Urgente', 'Telcel', '2024-10-27', '03:30:00', '2024-10-31', '04:30:00', 'Hi!', '2025-02-21', '04:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(268, 5, 12, '+1-813-890-1234', 'Sophia Hernandez', 17800, 1, 'sophia.hernandez@example.com', 'Importante', 'Infinitum', '2024-10-28', '04:00:00', '2024-11-01', '05:00:00', 'Hello!', '2025-02-22', '04:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(269, 6, 13, '+1-813-901-2345', 'Noah Perez', 17900, 0, 'noah.perez@example.com', 'Normal', 'Movistar', '2024-10-29', '04:30:00', '2024-11-02', '05:30:00', 'Hey there!', '2025-02-23', '05:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(270, 7, 14, '+1-813-012-3456', 'Emma Garcia', 18000, 1, 'emma.garcia@example.com', 'Urgente', 'Telcel', '2024-10-30', '05:00:00', '2024-11-03', '06:00:00', 'Good morning', '2025-02-24', '05:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(271, 1, 15, '+1-813-123-4567', 'Olivia Rodriguez', 18100, 0, 'olivia.rodriguez@example.com', 'Importante', 'Infinitum', '2024-10-31', '05:30:00', '2024-11-04', '06:30:00', 'Hi!', '2025-02-25', '06:00:00', 'Goodbye', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(272, 2, 16, '+1-813-234-5678', 'William Gonzalez', 18200, 1, 'william.gonzalez@example.com', 'Normal', 'Movistar', '2024-11-01', '06:00:00', '2024-11-05', '07:00:00', 'Hello!', '2025-02-26', '06:30:00', 'See you tomorrow', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(273, 3, 17, '+1-813-345-6789', 'Amelia Garcia', 18300, 0, 'amelia.garcia@example.com', 'Urgente', 'Telcel', '2024-11-02', '06:30:00', '2024-11-06', '07:30:00', 'Hey there!', '2025-02-27', '07:00:00', 'Take care', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(274, 4, 18, '+1-813-456-7890', 'Oliver Perez', 18400, 1, 'oliver.perez@example.com', 'Importante', 'Infinitum', '2024-11-03', '07:00:00', '2024-11-07', '08:00:00', 'Good morning', '2025-02-28', '07:30:00', 'Talk to you later', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(275, 5, 19, '+1-813-567-8901', 'Sophia Gonzalez', 18500, 0, 'sophia.gonzalez@example.com', 'Normal', 'Movistar', '2024-11-04', '07:30:00', '2024-11-08', '08:30:00', 'Hello!', '2025-03-01', '08:00:00', 'See you tomorrow', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(276, 6, 20, '+1-813-678-9012', 'Noah Rodriguez', 18600, 1, 'noah.rodriguez@example.com', 'Urgente', 'Telcel', '2024-11-05', '08:00:00', '2024-11-09', '09:00:00', 'Hey there!', '2025-03-02', '08:30:00', 'Take care', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(277, 7, 1, '+1-813-789-0123', 'Emma Perez', 18700, 0, 'emma.perez@example.com', 'Normal', 'Infinitum', '2024-11-06', '08:30:00', '2024-11-10', '09:30:00', 'Hi!', '2025-03-03', '09:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(278, 1, 2, '+1-813-890-1234', 'Olivia Garcia', 18800, 1, 'olivia.garcia@example.com', 'Importante', 'Movistar', '2024-11-07', '09:00:00', '2024-11-11', '10:00:00', 'Hello!', '2025-03-04', '09:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(279, 2, 3, '+1-813-901-2345', 'William Lopez', 18900, 0, 'william.lopez@example.com', 'Normal', 'Telcel', '2024-11-08', '09:30:00', '2024-11-12', '10:30:00', 'Hey there!', '2025-03-05', '10:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(280, 3, 4, '+1-813-012-3456', 'Amelia Perez', 19000, 1, 'amelia.perez@example.com', 'Urgente', 'Infinitum', '2024-11-09', '10:00:00', '2024-11-13', '11:00:00', 'Good morning', '2025-03-06', '10:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(281, 4, 5, '+1-813-123-4567', 'Oliver Rodriguez', 19100, 0, 'oliver.rodriguez@example.com', 'Normal', 'Movistar', '2024-11-10', '10:30:00', '2024-11-14', '11:30:00', 'Hi!', '2025-03-07', '11:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(282, 5, 6, '+1-813-234-5678', 'Sophia Gonzalez', 19200, 1, 'sophia.gonzalez@example.com', 'Importante', 'Telcel', '2024-11-11', '11:00:00', '2024-11-15', '12:00:00', 'Hello!', '2025-03-08', '11:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(283, 6, 7, '+1-813-345-6789', 'Noah Hernandez', 19300, 0, 'noah.hernandez@example.com', 'Urgente', 'Infinitum', '2024-11-12', '11:30:00', '2024-11-16', '12:30:00', 'Hey there!', '2025-03-09', '12:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(284, 7, 8, '+1-813-456-7890', 'Emma Perez', 19400, 1, 'emma.perez@example.com', 'Normal', 'Movistar', '2024-11-13', '12:00:00', '2024-11-17', '13:00:00', 'Good morning', '2025-03-10', '12:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(285, 1, 9, '+1-813-567-8901', 'Olivia Gonzalez', 19500, 0, 'olivia.gonzalez@example.com', 'Importante', 'Telcel', '2024-11-14', '12:30:00', '2024-11-18', '13:30:00', 'Hi!', '2025-03-11', '13:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(286, 2, 10, '+1-813-678-9012', 'William Rodriguez', 19600, 1, 'william.rodriguez@example.com', 'Urgente', 'Infinitum', '2024-11-15', '13:00:00', '2024-11-19', '14:00:00', 'Hello!', '2025-03-12', '13:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(287, 3, 11, '+1-813-789-0123', 'Amelia Garcia', 19700, 0, 'amelia.garcia@example.com', 'Normal', 'Movistar', '2024-11-16', '13:30:00', '2024-11-20', '14:30:00', 'Hey there!', '2025-03-13', '14:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(288, 4, 12, '+1-813-890-1234', 'Oliver Perez', 19800, 1, 'oliver.perez@example.com', 'Importante', 'Telcel', '2024-11-17', '14:00:00', '2024-11-21', '15:00:00', 'Good morning', '2025-03-14', '14:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(289, 5, 13, '+1-813-901-2345', 'Sophia Rodriguez', 19900, 0, 'sophia.rodriguez@example.com', 'Urgente', 'Infinitum', '2024-11-18', '14:30:00', '2024-11-22', '15:30:00', 'Hi!', '2025-03-15', '15:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(290, 6, 14, '+1-813-012-3456', 'Noah Gonzalez', 20000, 1, 'noah.gonzalez@example.com', 'Normal', 'Movistar', '2024-11-19', '15:00:00', '2024-11-23', '16:00:00', 'Hello!', '2025-03-16', '15:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(291, 7, 15, '+1-813-123-4567', 'Emma Garcia', 20100, 0, 'emma.garcia@example.com', 'Importante', 'Telcel', '2024-11-20', '15:30:00', '2024-11-24', '16:30:00', 'Hey there!', '2025-03-17', '16:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(292, 1, 16, '+1-813-234-5678', 'Olivia Hernandez', 20200, 1, 'olivia.hernandez@example.com', 'Urgente', 'Infinitum', '2024-11-21', '16:00:00', '2024-11-25', '17:00:00', 'Good morning', '2025-03-18', '16:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(293, 2, 17, '+1-813-345-6789', 'William Perez', 20300, 0, 'william.perez@example.com', 'Normal', 'Movistar', '2024-11-22', '16:30:00', '2024-11-26', '17:30:00', 'Hi!', '2025-03-19', '17:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(294, 3, 18, '+1-813-456-7890', 'Amelia Lopez', 20400, 1, 'amelia.lopez@example.com', 'Importante', 'Telcel', '2024-11-23', '17:00:00', '2024-11-27', '18:00:00', 'Hello!', '2025-03-20', '17:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(295, 4, 19, '+1-813-567-8901', 'Oliver Garcia', 20500, 0, 'oliver.garcia@example.com', 'Urgente', 'Infinitum', '2024-11-24', '17:30:00', '2024-11-28', '18:30:00', 'Hey there!', '2025-03-21', '18:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0),
	(296, 5, 20, '+1-813-678-9012', 'Sophia Hernandez', 20600, 1, 'sophia.hernandez@example.com', 'Normal', 'Movistar', '2024-11-25', '18:00:00', '2024-11-29', '19:00:00', 'Good morning', '2025-03-22', '18:30:00', 'Talk to you later', 'New', 'Michael', 'Sales', 'Contacted', 'false', 1),
	(297, 6, 1, '+1-813-789-0123', 'Noah Rodriguez', 20700, 0, 'noah.rodriguez@example.com', 'Importante', 'Telcel', '2024-11-26', '18:30:00', '2024-11-30', '19:30:00', 'Hi!', '2025-03-23', '19:00:00', 'Goodbye', 'Cold', 'Sophia', 'Marketing', 'Qualified', 'true', 0),
	(298, 7, 2, '+1-813-890-1234', 'Emma Perez', 20800, 1, 'emma.perez@example.com', 'Urgente', 'Infinitum', '2024-11-27', '19:00:00', '2024-12-01', '20:00:00', 'Hello!', '2025-03-24', '19:30:00', 'See you tomorrow', 'Qualified', 'Emma', 'Presales', 'Contacted', 'false', 1),
	(299, 1, 3, '+1-813-901-2345', 'Olivia Gonzalez', 20900, 0, 'olivia.gonzalez@example.com', 'Normal', 'Movistar', '2024-11-28', '19:30:00', '2024-12-02', '20:30:00', 'Hey there!', '2025-03-25', '20:00:00', 'Take care', 'Cold', 'John', 'Marketing', 'Qualified', 'true', 0);

-- Volcando estructura para tabla leadgraphs.lead_contenedor
CREATE TABLE IF NOT EXISTS `lead_contenedor` (
  `IDGenerado` int(11) NOT NULL AUTO_INCREMENT,
  `IDContenedor` int(11) DEFAULT NULL,
  `IDLead` int(11) DEFAULT NULL,
  `Fecha_Generacion` date DEFAULT current_timestamp(),
  PRIMARY KEY (`IDGenerado`),
  KEY `IDContenedor` (`IDContenedor`),
  KEY `IDLead` (`IDLead`),
  CONSTRAINT `lead_contenedor_ibfk_1` FOREIGN KEY (`IDContenedor`) REFERENCES `contenedor` (`IDContenedor`),
  CONSTRAINT `lead_contenedor_ibfk_2` FOREIGN KEY (`IDLead`) REFERENCES `leads` (`IDLead`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.lead_contenedor: ~20 rows (aproximadamente)
INSERT INTO `lead_contenedor` (`IDGenerado`, `IDContenedor`, `IDLead`, `Fecha_Generacion`) VALUES
	(1, 1, 1, '2024-03-06'),
	(2, 1, 2, '2024-03-08'),
	(3, 2, 3, '2023-11-15'),
	(4, 2, 4, '2022-07-25'),
	(5, 3, 5, '2021-04-10'),
	(6, 3, 6, '2020-09-03'),
	(7, 4, 7, '2019-12-28'),
	(8, 4, 8, '2018-06-20'),
	(9, 5, 9, '2017-01-14'),
	(10, 5, 10, '2016-08-07'),
	(11, 6, 11, '2015-02-19'),
	(12, 6, 12, '2014-10-22'),
	(13, 4, 13, '2013-05-30'),
	(14, 4, 14, '2012-11-01'),
	(15, 1, 15, '2011-07-11'),
	(16, 1, 16, '2010-03-24'),
	(17, 2, 17, '2009-09-11'),
	(18, 2, 18, '2008-04-05'),
	(19, 3, 19, '2007-12-17'),
	(20, 3, 20, '2006-06-26');

-- Volcando estructura para tabla leadgraphs.reporte
CREATE TABLE IF NOT EXISTS `reporte` (
  `IDReporte` int(11) NOT NULL AUTO_INCREMENT,
  `IDContenedor` int(11) DEFAULT NULL,
  `Fecha_Creacion_Informe` date DEFAULT current_timestamp(),
  `Autor` varchar(100) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  PRIMARY KEY (`IDReporte`),
  KEY `IDContenedor` (`IDContenedor`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`IDContenedor`) REFERENCES `contenedor` (`IDContenedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.reporte: ~11 rows (aproximadamente)
INSERT INTO `reporte` (`IDReporte`, `IDContenedor`, `Fecha_Creacion_Informe`, `Autor`, `Descripcion`) VALUES
	(1, 1, '2024-03-06', 'Juan', 'Informe del día 2024-03-06'),
	(2, 1, '2024-03-07', 'Carlos', 'Informe del día 2024-03-07'),
	(3, 2, '2024-03-08', 'Ana', 'Informe del día 2024-03-08'),
	(4, 2, '2024-03-09', 'David', 'Informe del día 2024-03-09'),
	(5, 3, '2024-03-10', 'Elena', 'Informe del día 2024-03-10'),
	(6, 3, '2024-03-11', 'Fernando', 'Informe del día 2024-03-11'),
	(7, 4, '2024-03-12', 'Gabriela', 'Informe del día 2024-03-12'),
	(8, 4, '2024-03-13', 'Hugo', 'Informe del día 2024-03-13'),
	(9, 5, '2024-03-14', 'Isabel', 'Informe del día 2024-03-14'),
	(10, 6, '2024-03-15', 'Juan', 'Informe del día 2024-03-15'),
	(11, 6, '2024-03-16', 'Carlos', 'Informe del día 2024-03-16');

-- Volcando estructura para tabla leadgraphs.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `IDRol` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion_Rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.roles: ~3 rows (aproximadamente)
INSERT INTO `roles` (`IDRol`, `Descripcion_Rol`) VALUES
	(1, 'Owner'),
	(2, 'Admin'),
	(3, 'Seller');

-- Volcando estructura para tabla leadgraphs.rol_usuario
CREATE TABLE IF NOT EXISTS `rol_usuario` (
  `IDTiene` int(11) NOT NULL AUTO_INCREMENT,
  `IDUsuario` int(11) DEFAULT NULL,
  `IDRol` int(11) DEFAULT NULL,
  `Fecha_Asignacion` date DEFAULT current_timestamp(),
  PRIMARY KEY (`IDTiene`),
  KEY `IDUsuario` (`IDUsuario`),
  KEY `IDRol` (`IDRol`),
  CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`IDUsuario`),
  CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`IDRol`) REFERENCES `roles` (`IDRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.rol_usuario: ~20 rows (aproximadamente)
INSERT INTO `rol_usuario` (`IDTiene`, `IDUsuario`, `IDRol`, `Fecha_Asignacion`) VALUES
	(1, 1, 1, '2024-03-06'),
	(2, 2, 1, '2024-03-07'),
	(3, 3, 1, '2024-03-08'),
	(4, 4, 1, '2024-03-09'),
	(5, 5, 1, '2024-03-10'),
	(6, 6, 2, '2024-03-11'),
	(7, 7, 2, '2024-03-12'),
	(8, 8, 2, '2024-03-13'),
	(9, 9, 2, '2024-03-14'),
	(10, 10, 2, '2024-03-15'),
	(11, 11, 3, '2024-03-16'),
	(12, 12, 3, '2024-03-17'),
	(13, 13, 3, '2024-03-18'),
	(14, 14, 3, '2024-03-19'),
	(15, 15, 3, '2024-03-20'),
	(16, 16, 3, '2024-03-21'),
	(17, 17, 3, '2024-03-22'),
	(18, 18, 3, '2024-03-23'),
	(19, 19, 3, '2024-03-24'),
	(20, 20, 3, '2024-03-25');

-- Volcando estructura para tabla leadgraphs.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `IDUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `Celular` varchar(20) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Contrasena` varchar(600) DEFAULT NULL,
  `Fecha_Ingreso` date DEFAULT current_timestamp(),
  `Habilitado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.usuario: ~20 rows (aproximadamente)
INSERT INTO `usuario` (`IDUsuario`, `nombre_usuario`, `Celular`, `Correo`, `Contrasena`, `Fecha_Ingreso`, `Habilitado`) VALUES
	(1, 'Juan', '123-456-7890', 'Juane@gmail.com', 'securepassword', '2024-03-06', 1),
	(2, 'Alejandra', '555-111-2222', 'alejandra@gmail.com', 'password123', '2024-03-07', 1),
	(3, 'Miguel', '555-333-4444', 'miguel@gmail.com', 'miguelito123', '2024-03-08', 1),
	(4, 'Karla', '555-555-6666', 'karla@gmail.com', 'karlita456', '2024-03-09', 1),
	(5, 'Ricardo', '555-777-8888', 'ricardo@gmail.com', 'ricardito789', '2024-03-10', 1),
	(6, 'Gabriela', '555-999-0000', 'gabriela@gmail.com', 'gaby567', '2024-03-11', 1),
	(7, 'Javier', '555-222-3333', 'javier@gmail.com', 'javi890', '2024-03-12', 1),
	(8, 'María', '555-444-5555', 'maria@gmail.com', 'marita123', '2024-03-13', 1),
	(9, 'Carlos', '555-666-7777', 'carlos@gmail.com', 'carlitos456', '2024-03-14', 1),
	(10, 'Laura', '555-888-9999', 'laura@gmail.com', 'laurita789', '2024-03-15', 1),
	(11, 'Eduardo', '555-000-1111', 'eduardo@gmail.com', 'edu567', '2024-03-16', 1),
	(12, 'Ana', '555-222-3333', 'ana@gmail.com', 'ana890', '2024-03-17', 1),
	(13, 'José', '555-444-5555', 'jose@gmail.com', 'jose123', '2024-03-18', 1),
	(14, 'Verónica', '555-666-7777', 'veronica@gmail.com', 'vero456', '2024-03-19', 1),
	(15, 'Francisco', '555-888-9999', 'francisco@gmail.com', 'fran789', '2024-03-20', 1),
	(16, 'Silvia', '555-111-2222', 'silvia@gmail.com', 'silvi123', '2024-03-21', 1),
	(17, 'Raul', '555-333-4444', 'raul@gmail.com', 'raulito456', '2024-03-22', 1),
	(18, 'Patricia', '555-555-6666', 'patricia@gmail.com', 'patty789', '2024-03-23', 1),
	(19, 'Héctor', '555-777-8888', 'hector@gmail.com', 'hect123', '2024-03-24', 1),
	(20, 'Carmen', '555-999-0000', 'carmen@gmail.com', 'carmencita456', '2024-03-25', 1);

-- Volcando estructura para tabla leadgraphs.usuario_workspace
CREATE TABLE IF NOT EXISTS `usuario_workspace` (
  `IDCreacion` int(11) NOT NULL AUTO_INCREMENT,
  `IDWorkspace` int(11) DEFAULT NULL,
  `IDUsuario` int(11) DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT current_timestamp(),
  PRIMARY KEY (`IDCreacion`),
  KEY `IDWorkspace` (`IDWorkspace`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `usuario_workspace_ibfk_1` FOREIGN KEY (`IDWorkspace`) REFERENCES `workspace` (`IDWorkspace`),
  CONSTRAINT `usuario_workspace_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`IDUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.usuario_workspace: ~5 rows (aproximadamente)
INSERT INTO `usuario_workspace` (`IDCreacion`, `IDWorkspace`, `IDUsuario`, `Fecha_Creacion`) VALUES
	(1, 1, 1, '2024-03-06'),
	(2, 2, 2, '2024-03-07'),
	(3, 3, 3, '2024-03-08'),
	(4, 4, 4, '2024-03-09'),
	(5, 5, 5, '2024-03-10');

-- Volcando estructura para tabla leadgraphs.workspace
CREATE TABLE IF NOT EXISTS `workspace` (
  `IDWorkspace` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Versiones` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDWorkspace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.workspace: ~20 rows (aproximadamente)
INSERT INTO `workspace` (`IDWorkspace`, `Numero_Versiones`) VALUES
	(1, 2),
	(2, 3),
	(3, 1),
	(4, 5),
	(5, 2),
	(6, 4),
	(7, 1),
	(8, 3),
	(9, 2),
	(10, 6),
	(11, 1),
	(12, 4),
	(13, 2),
	(14, 3),
	(15, 1),
	(16, 4),
	(17, 2),
	(18, 5),
	(19, 3),
	(20, 2);

-- Volcando estructura para tabla leadgraphs.usuario_historial
CREATE TABLE IF NOT EXISTS `usuario_historial` (
  `IDUsuario_Historial` int(11) NOT NULL AUTO_INCREMENT,
  `IDUsuario` int(11) DEFAULT NULL,
  `IDHistorial` int(11) DEFAULT NULL,
  `Descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`IDUsuario_Historial`),
  KEY `IDUsuario` (`IDUsuario`),
  KEY `IDHistorial` (`IDHistorial`),
  CONSTRAINT `usuario_historial_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`IDUsuario`),
  CONSTRAINT `usuario_historial_ibfk_2` FOREIGN KEY (`IDHistorial`) REFERENCES `historial` (`IDHistorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla leadgraphs.usuario_historial: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
