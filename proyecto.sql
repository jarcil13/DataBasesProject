-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `Aqueduct`
--

DROP TABLE IF EXISTS `Aqueduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aqueduct` (
  `id_aqueduct` varchar(30) NOT NULL COMMENT 'Aqueduct service that was borrowed.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the aqueduct that specifically month.',
  `benefit` double(13,4) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
  `consumption_M3` int(11) NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
  `unitary_cost` double(13,4) NOT NULL COMMENT 'Cost per m3 in the current month.',
  `Const_aqueduct_id_const_aqueduct` varchar(30) NOT NULL COMMENT 'Identifier from cost_aqueduct where the Organization can realize fixed charge.',
  PRIMARY KEY (`id_aqueduct`),
  KEY `Aqueduct_Const_aqueduct` (`Const_aqueduct_id_const_aqueduct`),
  CONSTRAINT `Aqueduct_Const_aqueduct` FOREIGN KEY (`Const_aqueduct_id_const_aqueduct`) REFERENCES `Const_aqueduct` (`id_const_aqueduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aqueduct`
--

LOCK TABLES `Aqueduct` WRITE;
/*!40000 ALTER TABLE `Aqueduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aqueduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bill`
--

DROP TABLE IF EXISTS `Bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bill` (
  `id_payment` varchar(30) NOT NULL COMMENT 'Identification to recognize what the Organization has to pay and how much.',
  `bill_total_cost` double(13,4) NOT NULL COMMENT 'Total cost of all services.',
  `consumption_days` int(11) NOT NULL COMMENT 'Days that services have been borrowed since the last bill and have to be paid by the Organization.',
  `month` varchar(10) NOT NULL COMMENT '1- 12 Current bills month.',
  `Organization_contract` varchar(10) NOT NULL COMMENT 'Organization where services are being borrowed.',
  `Enterprise_id_enterprise` varchar(20) NOT NULL COMMENT 'Enterprise that lends services.',
  `Telephony_id_telephony` varchar(30) DEFAULT NULL COMMENT 'Telephony service that was borrowed.',
  `Television_id_tv` varchar(30) DEFAULT NULL COMMENT 'TV service that was borrowed.',
  `Internet_id_internet` varchar(30) DEFAULT NULL COMMENT 'Internet service that was borrowed.',
  `Energy_id_energy` varchar(30) DEFAULT NULL COMMENT 'Energy service that was borrowed.',
  `Aqueduct_id_aqueduct` varchar(30) DEFAULT NULL COMMENT 'Aqueduct service that was borrowed.',
  `Sewerage_id_sewerage` varchar(30) DEFAULT NULL COMMENT 'Sewerage service that was borrowed.',
  `Gas_id_gas` varchar(30) DEFAULT NULL COMMENT 'Gas service that was borrowed.',
  PRIMARY KEY (`id_payment`),
  KEY `Bill_Aqueduct` (`Aqueduct_id_aqueduct`),
  KEY `Bill_Energy` (`Energy_id_energy`),
  KEY `Bill_Enterprise` (`Enterprise_id_enterprise`),
  KEY `Bill_Gas` (`Gas_id_gas`),
  KEY `Bill_Internet` (`Internet_id_internet`),
  KEY `Bill_Organization` (`Organization_contract`),
  KEY `Bill_Sewerage` (`Sewerage_id_sewerage`),
  KEY `Bill_Telephony` (`Telephony_id_telephony`),
  KEY `Bill_Television` (`Television_id_tv`),
  CONSTRAINT `Bill_Aqueduct` FOREIGN KEY (`Aqueduct_id_aqueduct`) REFERENCES `Aqueduct` (`id_aqueduct`),
  CONSTRAINT `Bill_Energy` FOREIGN KEY (`Energy_id_energy`) REFERENCES `Energy` (`id_energy`),
  CONSTRAINT `Bill_Enterprise` FOREIGN KEY (`Enterprise_id_enterprise`) REFERENCES `Enterprise` (`id_enterprise`),
  CONSTRAINT `Bill_Gas` FOREIGN KEY (`Gas_id_gas`) REFERENCES `Gas` (`id_gas`),
  CONSTRAINT `Bill_Internet` FOREIGN KEY (`Internet_id_internet`) REFERENCES `Internet` (`id_internet`),
  CONSTRAINT `Bill_Organization` FOREIGN KEY (`Organization_contract`) REFERENCES `Organization` (`contract`),
  CONSTRAINT `Bill_Sewerage` FOREIGN KEY (`Sewerage_id_sewerage`) REFERENCES `Sewerage` (`id_sewerage`),
  CONSTRAINT `Bill_Telephony` FOREIGN KEY (`Telephony_id_telephony`) REFERENCES `Telephony` (`id_telephony`),
  CONSTRAINT `Bill_Television` FOREIGN KEY (`Television_id_tv`) REFERENCES `Television` (`id_tv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table that contains all services registers. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bill`
--

LOCK TABLES `Bill` WRITE;
/*!40000 ALTER TABLE `Bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Const_aqueduct`
--

DROP TABLE IF EXISTS `Const_aqueduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Const_aqueduct` (
  `id_const_aqueduct` varchar(30) NOT NULL COMMENT 'Constant cost of the aqueduct service that was borrowed.',
  `fixed_charge` double(13,4) NOT NULL COMMENT 'Fixed cost of the aqueduct.',
  PRIMARY KEY (`id_const_aqueduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Const_aqueduct`
--

LOCK TABLES `Const_aqueduct` WRITE;
/*!40000 ALTER TABLE `Const_aqueduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `Const_aqueduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Const_energy`
--

DROP TABLE IF EXISTS `Const_energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Const_energy` (
  `id_const_energy` char(30) NOT NULL COMMENT 'Constant cost of the energy service that was borrowed.',
  `fixed_charge` double(13,4) NOT NULL COMMENT 'Fixed cost of the energy.',
  PRIMARY KEY (`id_const_energy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Const_energy`
--

LOCK TABLES `Const_energy` WRITE;
/*!40000 ALTER TABLE `Const_energy` DISABLE KEYS */;
/*!40000 ALTER TABLE `Const_energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Const_gas`
--

DROP TABLE IF EXISTS `Const_gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Const_gas` (
  `id_const_gas` varchar(30) NOT NULL COMMENT 'Constant cost of the gas service that was borrowed.',
  `fixed_charge` double(13,4) NOT NULL COMMENT 'Fixed cost of the gas.',
  `cosumption_factor` double(9,4) NOT NULL COMMENT 'Constant factor of the gas consumption.',
  PRIMARY KEY (`id_const_gas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Const_gas`
--

LOCK TABLES `Const_gas` WRITE;
/*!40000 ALTER TABLE `Const_gas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Const_gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Const_sewerage`
--

DROP TABLE IF EXISTS `Const_sewerage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Const_sewerage` (
  `id_const_sewerage` varchar(30) NOT NULL COMMENT 'Constant cost of the sewerage service that was borrowed.',
  `fixed_charge` double(13,4) NOT NULL COMMENT 'Fixed cost of the sewerage.',
  PRIMARY KEY (`id_const_sewerage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Const_sewerage`
--

LOCK TABLES `Const_sewerage` WRITE;
/*!40000 ALTER TABLE `Const_sewerage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Const_sewerage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Energy`
--

DROP TABLE IF EXISTS `Energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Energy` (
  `id_energy` varchar(30) NOT NULL COMMENT 'Energy service that was borrowed.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the energy that specifically month.',
  `benefit` double(13,4) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
  `consumption_KWH` int(11) NOT NULL COMMENT 'Quantity of KWH the Organization spent in that month.',
  `unitary_cost` double(13,4) NOT NULL COMMENT 'Cost per KWH in the current month.',
  `Const_energy_id_const_energy` varchar(30) NOT NULL COMMENT 'Identifier from cost_energy where the Organization can realize fixed charge.',
  PRIMARY KEY (`id_energy`),
  KEY `Energy_Const_energy` (`Const_energy_id_const_energy`),
  CONSTRAINT `Energy_Const_energy` FOREIGN KEY (`Const_energy_id_const_energy`) REFERENCES `Const_energy` (`id_const_energy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Energy`
--

LOCK TABLES `Energy` WRITE;
/*!40000 ALTER TABLE `Energy` DISABLE KEYS */;
/*!40000 ALTER TABLE `Energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enterprise`
--

DROP TABLE IF EXISTS `Enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enterprise` (
  `id_enterprise` varchar(20) NOT NULL COMMENT 'Identification of the Enterprise.',
  `name` varchar(30) DEFAULT NULL COMMENT 'An enterprise that borrows services could have or not a name. Anyhow, it can be identified by its id.',
  `colldate` date NOT NULL COMMENT 'Collection date is when the service provider enterprise gathers the money that Organizations have to pay for all the services they have lent.',
  PRIMARY KEY (`id_enterprise`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Enterprise that borrows services.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enterprise`
--

LOCK TABLES `Enterprise` WRITE;
/*!40000 ALTER TABLE `Enterprise` DISABLE KEYS */;
INSERT INTO `Enterprise` VALUES ('1','EPM','2017-01-01'),('2','UNE','2017-01-02');
/*!40000 ALTER TABLE `Enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gas`
--

DROP TABLE IF EXISTS `Gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gas` (
  `id_gas` varchar(30) NOT NULL COMMENT 'Gas service that was borrowed.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the gas that specifically month.',
  `benefit` double(13,4) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
  `equivalence_KWH` double(9,4) NOT NULL COMMENT 'Equivalence of spent gas in m3 to KWH.',
  `consumption_M3` double(9,4) NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
  `diference_M3` double(9,4) NOT NULL COMMENT 'Difference of spent gas between actual and last month.',
  `unitary_cost` double(13,4) NOT NULL COMMENT 'Cost per m3 in the current month.',
  `Const_gas_id_const_gas` varchar(30) NOT NULL COMMENT 'Identifier from cost_gas where the Organization can realize fixed charge.',
  PRIMARY KEY (`id_gas`),
  KEY `Gas_Const_gas` (`Const_gas_id_const_gas`),
  CONSTRAINT `Gas_Const_gas` FOREIGN KEY (`Const_gas_id_const_gas`) REFERENCES `Const_gas` (`id_const_gas`)
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
  `id_internet` varchar(30) NOT NULL COMMENT 'Internet service that was borrowed.',
  `speed_MBS` int(11) NOT NULL COMMENT 'Speed of the internet in MB per second.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the internet that specifically month.',
  PRIMARY KEY (`id_internet`)
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
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `contract` varchar(10) NOT NULL COMMENT 'Contract which that organization has with the service provider enterprise. Enterprise and Organization are related by the bill.',
  `address` varchar(30) NOT NULL COMMENT 'Address is the Organization localization, where services are being borrowed. ',
  `activity` varchar(30) DEFAULT NULL COMMENT 'What the Organization does. It means that an Organization can be an enterprise or a house. That''''s why it can be null. ',
  PRIMARY KEY (`contract`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Organization or House that lends services.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
INSERT INTO `Organization` VALUES ('935300','CR 36 A CL 38 - 29','Residencial'),('99999','Calle linda 23 - 53','Ejemplo de UNE');
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sewerage`
--

DROP TABLE IF EXISTS `Sewerage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sewerage` (
  `id_sewerage` varchar(30) NOT NULL COMMENT 'Sewerage service that was borrowed.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the sewerage that specifically month.',
  `benefit` double(13,4) NOT NULL COMMENT 'Discount that the enterprise applies to the cost of the month.',
  `consumption_M3` int(11) NOT NULL COMMENT 'Quantity of m3 the Organization spent in that month.',
  `unitary_cost` double(13,4) NOT NULL COMMENT 'Cost per m3 in the current month.',
  `Const_sewerage_id_const_sewerage` varchar(30) NOT NULL COMMENT 'Identifier from cost_sewerage where the Organization can realize fixed charge.',
  PRIMARY KEY (`id_sewerage`),
  KEY `Sewerage_Const_sewerage` (`Const_sewerage_id_const_sewerage`),
  CONSTRAINT `Sewerage_Const_sewerage` FOREIGN KEY (`Const_sewerage_id_const_sewerage`) REFERENCES `Const_sewerage` (`id_const_sewerage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sewerage`
--

LOCK TABLES `Sewerage` WRITE;
/*!40000 ALTER TABLE `Sewerage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sewerage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Telephony`
--

DROP TABLE IF EXISTS `Telephony`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Telephony` (
  `id_telephony` varchar(30) NOT NULL COMMENT 'Telephony service that was borrowed.',
  `minutes` int(11) NOT NULL COMMENT 'Spent minutes in the month. ',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the telephony that specifically month.',
  PRIMARY KEY (`id_telephony`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Telephony`
--

LOCK TABLES `Telephony` WRITE;
/*!40000 ALTER TABLE `Telephony` DISABLE KEYS */;
/*!40000 ALTER TABLE `Telephony` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Television`
--

DROP TABLE IF EXISTS `Television`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Television` (
  `id_tv` varchar(30) NOT NULL COMMENT 'TV service that was borrowed.',
  `chanels` int(11) NOT NULL COMMENT 'Required channels by the Organization.',
  `cost_month` double(13,4) NOT NULL COMMENT 'Cost of the TV that specifically month.',
  PRIMARY KEY (`id_tv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Television`
--

LOCK TABLES `Television` WRITE;
/*!40000 ALTER TABLE `Television` DISABLE KEYS */;
/*!40000 ALTER TABLE `Television` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `dataAqueduct`
--

DROP TABLE IF EXISTS `dataAqueduct`;
/*!50001 DROP VIEW IF EXISTS `dataAqueduct`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataAqueduct` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`,
 1 AS `benefit`,
 1 AS `consumption_M3`,
 1 AS `unitary_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataEnergy`
--

DROP TABLE IF EXISTS `dataEnergy`;
/*!50001 DROP VIEW IF EXISTS `dataEnergy`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataEnergy` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`,
 1 AS `benefit`,
 1 AS `consumption_KWH`,
 1 AS `unitary_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataGas`
--

DROP TABLE IF EXISTS `dataGas`;
/*!50001 DROP VIEW IF EXISTS `dataGas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataGas` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`,
 1 AS `benefit`,
 1 AS `equivalence_KWH`,
 1 AS `diference_M3`,
 1 AS `unitary_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataInternet`
--

DROP TABLE IF EXISTS `dataInternet`;
/*!50001 DROP VIEW IF EXISTS `dataInternet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataInternet` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataSewerage`
--

DROP TABLE IF EXISTS `dataSewerage`;
/*!50001 DROP VIEW IF EXISTS `dataSewerage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataSewerage` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`,
 1 AS `benefit`,
 1 AS `consumption_M3`,
 1 AS `unitary_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataTV`
--

DROP TABLE IF EXISTS `dataTV`;
/*!50001 DROP VIEW IF EXISTS `dataTV`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataTV` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataTelephony`
--

DROP TABLE IF EXISTS `dataTelephony`;
/*!50001 DROP VIEW IF EXISTS `dataTelephony`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dataTelephony` AS SELECT 
 1 AS `month`,
 1 AS `cost_month`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'proyecto'
--
/*!50003 DROP FUNCTION IF EXISTS `constulSewerageUCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `constulSewerageUCost`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select unitary_cost from dataSewerage de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `constultAqueductUCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `constultAqueductUCost`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select unitary_cost from dataAqueduct de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `constultEnergyUCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `constultEnergyUCost`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select unitary_cost from dataEnergy de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultAqueductBenefit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultAqueductBenefit`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select benefit from dataAqueduct de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultAqueductCMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultAqueductCMonth`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataAqueduct de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultAqueductConsumption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultAqueductConsumption`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select consumption_M3 from dataAqueduct de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultEnergConsumptio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultEnergConsumptio`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select consumption_KWH from dataEnergy de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultEnergyBenefit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultEnergyBenefit`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select benefit from dataEnergy de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultEnergyCMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultEnergyCMonth`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataEnergy de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasBenefit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasBenefit`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select benefit from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasCMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasCMonth`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasConsumption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasConsumption`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select consumption_M3 from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasDiference` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasDiference`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select diference_M3 from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasEquivalence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasEquivalence`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select equivalence_KWH from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultGasUCost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultGasUCost`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select unitary_cost from dataGas de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultInternet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultInternet`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataInternet de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultSewerageBenefit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultSewerageBenefit`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select benefit from dataSewerage de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultSewerageCMonth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultSewerageCMonth`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataSewerage de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultSewerageConsumption` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultSewerageConsumption`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select consumption_M3 from dataSewerage de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultTelephony` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultTelephony`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataTelephony de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `consultTV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultTV`(month varchar(10)) RETURNS double(13,4)
    DETERMINISTIC
return (select cost_month from dataTV de where de.month = month) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `dataAqueduct`
--

/*!50001 DROP VIEW IF EXISTS `dataAqueduct`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataAqueduct` AS select `b`.`month` AS `month`,`a`.`cost_month` AS `cost_month`,`a`.`benefit` AS `benefit`,`a`.`consumption_M3` AS `consumption_M3`,`a`.`unitary_cost` AS `unitary_cost` from (`Aqueduct` `a` join `Bill` `b`) where (`a`.`id_aqueduct` = `b`.`Aqueduct_id_aqueduct`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataEnergy`
--

/*!50001 DROP VIEW IF EXISTS `dataEnergy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataEnergy` AS select `b`.`month` AS `month`,`e`.`cost_month` AS `cost_month`,`e`.`benefit` AS `benefit`,`e`.`consumption_KWH` AS `consumption_KWH`,`e`.`unitary_cost` AS `unitary_cost` from (`Energy` `e` join `Bill` `b`) where (`e`.`id_energy` = `b`.`Energy_id_energy`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataGas`
--

/*!50001 DROP VIEW IF EXISTS `dataGas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataGas` AS select `b`.`month` AS `month`,`g`.`cost_month` AS `cost_month`,`g`.`benefit` AS `benefit`,`g`.`equivalence_KWH` AS `equivalence_KWH`,`g`.`diference_M3` AS `diference_M3`,`g`.`unitary_cost` AS `unitary_cost` from (`Gas` `g` join `Bill` `b`) where (`g`.`id_gas` = `b`.`Gas_id_gas`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataInternet`
--

/*!50001 DROP VIEW IF EXISTS `dataInternet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataInternet` AS select `b`.`month` AS `month`,`i`.`cost_month` AS `cost_month` from (`Internet` `i` join `Bill` `b`) where (`i`.`id_internet` = `b`.`Internet_id_internet`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataSewerage`
--

/*!50001 DROP VIEW IF EXISTS `dataSewerage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataSewerage` AS select `b`.`month` AS `month`,`a`.`cost_month` AS `cost_month`,`a`.`benefit` AS `benefit`,`a`.`consumption_M3` AS `consumption_M3`,`a`.`unitary_cost` AS `unitary_cost` from (`Aqueduct` `a` join `Bill` `b`) where (`a`.`id_aqueduct` = `b`.`Aqueduct_id_aqueduct`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataTV`
--

/*!50001 DROP VIEW IF EXISTS `dataTV`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataTV` AS select `b`.`month` AS `month`,`t`.`cost_month` AS `cost_month` from (`Television` `t` join `Bill` `b`) where (`t`.`id_tv` = `b`.`Television_id_tv`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataTelephony`
--

/*!50001 DROP VIEW IF EXISTS `dataTelephony`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataTelephony` AS select `b`.`month` AS `month`,`t`.`cost_month` AS `cost_month` from (`Telephony` `t` join `Bill` `b`) where (`t`.`id_telephony` = `b`.`Telephony_id_telephony`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-14 20:36:34
