-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: hospital
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
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `fecha` datetime NOT NULL,
  `posible` tinyint(1) NOT NULL,
  `id_user` varchar(12) NOT NULL,
  `id_med` varchar(12) NOT NULL,
  PRIMARY KEY (`fecha`),
  KEY `id_med` (`id_med`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`id_med`) REFERENCES `medico` (`medico_id`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES ('2017-03-02 10:00:00',1,'123456','1'),('2017-03-02 10:10:00',1,'990329','2'),('2017-03-02 10:20:00',1,'254532','3'),('2017-03-02 10:30:00',1,'112000','4'),('2017-03-02 10:40:00',1,'2293939','5'),('2017-03-02 10:50:00',0,'393900','6'),('2017-03-02 11:00:00',0,'3948229','3'),('2017-03-02 12:00:00',0,'4944900','4'),('2017-03-02 12:15:00',1,'390490','5'),('2017-03-02 20:00:00',0,'76543','1');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilidad`
--

DROP TABLE IF EXISTS `disponibilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disponibilidad` (
  `hora` datetime NOT NULL,
  `id_med` varchar(12) NOT NULL,
  PRIMARY KEY (`hora`),
  KEY `id_med` (`id_med`),
  CONSTRAINT `disponibilidad_ibfk_1` FOREIGN KEY (`id_med`) REFERENCES `medico` (`medico_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidad`
--

LOCK TABLES `disponibilidad` WRITE;
/*!40000 ALTER TABLE `disponibilidad` DISABLE KEYS */;
INSERT INTO `disponibilidad` VALUES ('2017-03-02 10:00:00','1'),('2017-03-02 21:00:00','1'),('2017-03-02 10:10:00','2'),('2017-03-02 10:20:00','3'),('2017-03-02 11:30:00','3'),('2017-03-02 10:30:00','4'),('2017-03-02 11:00:00','4'),('2017-03-02 10:40:00','5'),('2017-03-02 12:15:00','5'),('2017-03-02 12:00:00','6');
/*!40000 ALTER TABLE `disponibilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplo`
--

DROP TABLE IF EXISTS `ejemplo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejemplo` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplo`
--

LOCK TABLES `ejemplo` WRITE;
/*!40000 ALTER TABLE `ejemplo` DISABLE KEYS */;
INSERT INTO `ejemplo` VALUES (12,'Andres'),(2,'Juan'),(34,'David '),(5,'Esteban');
/*!40000 ALTER TABLE `ejemplo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `medico_id` varchar(12) NOT NULL,
  `medico_nombre` varchar(30) NOT NULL,
  `medico_espe` varchar(40) NOT NULL,
  PRIMARY KEY (`medico_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES ('1','Fernando','Neurologo'),('2','Carlos','Odontologo'),('3','Maria','Internista'),('4','Cristhian','Anesteciologo'),('5','Andres','Ginecologo'),('6','Jorge','psicologo');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('112000','sisisis','Laura'),('123456','panchito','Juan David'),('2293939','esss','Rubiela'),('254532','notengo','Wendy'),('390490','q1w2e3','Fernanado'),('393900','hi','Hernando'),('3948229','qwerty','Rodolfo'),('4944900','12345qwert','Gustavo'),('76543','1999juan','Zoey'),('990329','laosa','Maria');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11 23:11:54
