-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.16-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5143
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para rrdactilar
CREATE DATABASE IF NOT EXISTS `rrdactilar` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `rrdactilar`;

-- Volcando estructura para tabla rrdactilar.entrada_salida
CREATE TABLE IF NOT EXISTS `entrada_salida` (
  `id_entrada_salida` int(11) NOT NULL AUTO_INCREMENT,
  `cedula_usuario` int(11) NOT NULL,
  `entrada1` bigint(20) DEFAULT NULL,
  `salida1` bigint(20) DEFAULT NULL,
  `entrada2` bigint(20) DEFAULT NULL,
  `salida2` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_entrada_salida`),
  KEY `FK_entrada_salida_usuarios` (`cedula_usuario`),
  CONSTRAINT `FK_entrada_salida_usuarios` FOREIGN KEY (`cedula_usuario`) REFERENCES `usuarios` (`cedula_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla rrdactilar.entrada_salida: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `entrada_salida` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrada_salida` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
