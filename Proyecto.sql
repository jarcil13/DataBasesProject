-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: Proyecto
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Acueducto`
--

DROP TABLE IF EXISTS `Acueducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Acueducto` (
  `id_acueducto` varchar(30) NOT NULL,
  `diferencia_ac` decimal(6,4) NOT NULL,
  `consumo_ac` decimal(7,5) NOT NULL,
  `componenUnitario_ac` decimal(6,4) NOT NULL,
  `cargoFijo_ac` decimal(7,5) NOT NULL,
  PRIMARY KEY (`id_acueducto`),
  CONSTRAINT `Acueducto_ibfk_1` FOREIGN KEY (`id_acueducto`) REFERENCES `Servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acueducto`
--

LOCK TABLES `Acueducto` WRITE;
/*!40000 ALTER TABLE `Acueducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acueducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alcantarillado`
--

DROP TABLE IF EXISTS `Alcantarillado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alcantarillado` (
  `id_al` varchar(30) NOT NULL,
  `componenteUnitario_al` decimal(6,4) NOT NULL,
  `consumo_al` decimal(7,5) NOT NULL,
  PRIMARY KEY (`id_al`),
  CONSTRAINT `Alcantarillado_ibfk_1` FOREIGN KEY (`id_al`) REFERENCES `Servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alcantarillado`
--

LOCK TABLES `Alcantarillado` WRITE;
/*!40000 ALTER TABLE `Alcantarillado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alcantarillado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comunicaciones`
--

DROP TABLE IF EXISTS `Comunicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comunicaciones` (
  `id_com` varchar(30) NOT NULL,
  `distribucion_com` decimal(6,4) DEFAULT NULL,
  `consumo_com` decimal(6,4) DEFAULT NULL,
  PRIMARY KEY (`id_com`),
  CONSTRAINT `Comunicaciones_ibfk_1` FOREIGN KEY (`id_com`) REFERENCES `Servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comunicaciones`
--

LOCK TABLES `Comunicaciones` WRITE;
/*!40000 ALTER TABLE `Comunicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comunicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Energia`
--

DROP TABLE IF EXISTS `Energia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Energia` (
  `id_en` varchar(30) NOT NULL,
  `generacion_en` decimal(6,4) NOT NULL,
  `transmision` decimal(6,4) NOT NULL,
  `distribucion_en` decimal(6,4) NOT NULL,
  `comercializacion_en` decimal(6,4) NOT NULL,
  `perdidas_en` decimal(6,4) DEFAULT NULL,
  `restricciones_en` decimal(6,4) NOT NULL,
  `energia_activa` decimal(6,4) DEFAULT NULL,
  `consumo_en` decimal(7,5) DEFAULT NULL,
  PRIMARY KEY (`id_en`),
  CONSTRAINT `Energia_ibfk_1` FOREIGN KEY (`id_en`) REFERENCES `Servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Energia`
--

LOCK TABLES `Energia` WRITE;
/*!40000 ALTER TABLE `Energia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Energia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enterprise`
--

DROP TABLE IF EXISTS `Enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enterprise` (
  `id_ent` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fechaRec` date NOT NULL,
  PRIMARY KEY (`id_ent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enterprise`
--

LOCK TABLES `Enterprise` WRITE;
/*!40000 ALTER TABLE `Enterprise` DISABLE KEYS */;
/*!40000 ALTER TABLE `Enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gas`
--

DROP TABLE IF EXISTS `Gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gas` (
  `id_gas` varchar(30) NOT NULL,
  `compra_gas` decimal(6,0) NOT NULL,
  `distribucion_gas` decimal(6,4) NOT NULL,
  `transporte_gas` decimal(6,4) NOT NULL,
  `diferencia_gas` decimal(6,4) NOT NULL,
  `consumo_gas` decimal(7,5) NOT NULL,
  PRIMARY KEY (`id_gas`),
  CONSTRAINT `Gas_ibfk_1` FOREIGN KEY (`id_gas`) REFERENCES `Servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gas`
--

LOCK TABLES `Gas` WRITE;
/*!40000 ALTER TABLE `Gas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Internet`
--

DROP TABLE IF EXISTS `Internet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Internet` (
  `id_int` varchar(30) NOT NULL,
  `velocidad` smallint(6) NOT NULL,
  PRIMARY KEY (`id_int`),
  CONSTRAINT `Internet_ibfk_1` FOREIGN KEY (`id_int`) REFERENCES `Comunicaciones` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Internet`
--

LOCK TABLES `Internet` WRITE;
/*!40000 ALTER TABLE `Internet` DISABLE KEYS */;
/*!40000 ALTER TABLE `Internet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organizacion`
--

DROP TABLE IF EXISTS `Organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organizacion` (
  `id_org` varchar(20) NOT NULL,
  `actividad_orga` varchar(30) NOT NULL,
  `direccion_org` varchar(30) NOT NULL,
  PRIMARY KEY (`id_org`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organizacion`
--

LOCK TABLES `Organizacion` WRITE;
/*!40000 ALTER TABLE `Organizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prestamo`
--

DROP TABLE IF EXISTS `Prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prestamo` (
  `id_prestamo` varchar(20) NOT NULL,
  `id_enterprise` varchar(20) NOT NULL,
  `id_serviceType` varchar(30) NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `id_enterprise` (`id_enterprise`),
  KEY `id_serviceType` (`id_serviceType`),
  CONSTRAINT `Prestamo_ibfk_1` FOREIGN KEY (`id_enterprise`) REFERENCES `Enterprise` (`id_ent`),
  CONSTRAINT `Prestamo_ibfk_2` FOREIGN KEY (`id_serviceType`) REFERENCES `Servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prestamo`
--

LOCK TABLES `Prestamo` WRITE;
/*!40000 ALTER TABLE `Prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servicio`
--

DROP TABLE IF EXISTS `Servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Servicio` (
  `id_servicio` varchar(30) NOT NULL,
  `costo` decimal(20,4) NOT NULL,
  `cantidad` decimal(10,10) NOT NULL,
  `tiempo_ser` time NOT NULL,
  `id_org` varchar(20) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_org` (`id_org`),
  CONSTRAINT `Servicio_ibfk_1` FOREIGN KEY (`id_org`) REFERENCES `Organizacion` (`id_org`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicio`
--

LOCK TABLES `Servicio` WRITE;
/*!40000 ALTER TABLE `Servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Telefonia`
--

DROP TABLE IF EXISTS `Telefonia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Telefonia` (
  `id_telf` varchar(30) NOT NULL,
  `capacidad_telf` smallint(6) NOT NULL,
  `internacionalidad_telf` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_telf`),
  CONSTRAINT `Telefonia_ibfk_1` FOREIGN KEY (`id_telf`) REFERENCES `Comunicaciones` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telefonia`
--

LOCK TABLES `Telefonia` WRITE;
/*!40000 ALTER TABLE `Telefonia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Telefonia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Television`
--

DROP TABLE IF EXISTS `Television`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Television` (
  `id_tel` varchar(30) NOT NULL,
  `numeroCanales_tel` smallint(6) NOT NULL,
  PRIMARY KEY (`id_tel`),
  CONSTRAINT `Television_ibfk_1` FOREIGN KEY (`id_tel`) REFERENCES `Comunicaciones` (`id_com`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Television`
--

LOCK TABLES `Television` WRITE;
/*!40000 ALTER TABLE `Television` DISABLE KEYS */;
/*!40000 ALTER TABLE `Television` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-17 22:10:22
