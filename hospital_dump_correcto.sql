-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `numero_cuarto` int NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `fk_cuartos_pacientes` (`paciente_id`),
  CONSTRAINT `fk_cuartos_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `forma_pago_pac_id` int NOT NULL,
  `fecha_emision` date NOT NULL,
  `otros` text,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `fk_cuentas_pacientes_pacientes` (`paciente_id`),
  KEY `fk_cuentas_pacientes_formas_pago_pacientes` (`forma_pago_pac_id`),
  CONSTRAINT `fk_cuentas_pacientes_formas_pago_pacientes` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_cuentas_pacientes_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,1,'2017-04-20',NULL),(2,2,2,'2017-04-17',NULL),(3,3,3,'2017-04-20',NULL),(4,4,4,'2017-04-22',NULL),(5,5,5,'2017-04-21',NULL),(6,6,6,'2017-04-18',NULL),(7,7,7,'2017-04-24',NULL),(8,8,8,'2017-04-27',NULL),(9,9,9,'2017-04-28',NULL),(10,10,10,'2017-04-27',NULL),(11,11,11,'2017-04-28',NULL),(12,12,12,'2017-04-28',NULL),(13,13,13,'2017-04-29',NULL),(14,14,14,'2017-04-26',NULL),(15,15,15,'2017-05-05',NULL),(16,16,16,'2017-05-02',NULL),(17,17,17,'2017-05-01',NULL),(18,18,18,'2017-05-12',NULL),(19,19,19,'2017-05-03',NULL),(20,20,20,'2017-05-09',NULL),(21,21,21,'2017-05-08',NULL),(22,22,22,'2017-05-14',NULL),(23,23,23,'2017-05-12',NULL),(24,24,24,'2017-05-05',NULL),(25,25,25,'2017-05-19',NULL),(26,26,26,'2017-05-14',NULL),(27,27,27,'2017-05-12',NULL),(28,28,28,'2017-05-15',NULL),(29,29,29,'2017-05-13',NULL),(30,30,30,'2017-05-18',NULL),(31,31,31,'2017-05-20',NULL),(32,32,32,'2017-05-26',NULL),(33,33,33,'2017-05-22',NULL),(34,34,34,'2017-05-21',NULL),(35,35,35,'2017-05-16',NULL),(36,36,36,'2017-05-20',NULL),(37,37,37,'2017-05-27',NULL),(38,38,38,'2017-05-21',NULL),(39,39,39,'2017-05-26',NULL),(40,40,40,'2017-05-31',NULL),(41,41,41,'2017-05-31',NULL),(42,42,42,'2017-06-01',NULL),(43,43,43,'2017-05-27',NULL),(44,44,44,'2017-06-07',NULL),(45,45,45,'2017-06-04',NULL),(46,46,46,'2017-06-07',NULL),(47,47,47,'2017-05-31',NULL),(48,48,48,'2017-06-07',NULL),(49,49,49,'2017-05-31',NULL),(50,50,50,'2017-06-03',NULL),(51,51,51,'2017-06-03',NULL),(52,52,52,'2017-06-10',NULL),(53,53,53,'2017-06-14',NULL),(54,54,54,'2017-06-09',NULL),(55,55,55,'2017-06-14',NULL),(56,56,56,'2017-06-17',NULL),(57,57,57,'2017-06-16',NULL),(58,58,58,'2017-06-15',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int NOT NULL,
  `detalle` varchar(255) DEFAULT 'Diagnóstico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`),
  KEY `fk_cuentas_pacientes_detalles_cuentas_pacientes` (`cuentas_pacientes_id`),
  CONSTRAINT `fk_cuentas_pacientes_detalles_cuentas_pacientes` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (117,1,'Tratamiento',6,437557),(118,2,'Tratamiento',5,420352),(119,3,'Tratamiento',4,803455),(120,4,'Tratamiento',6,863833),(121,5,'Tratamiento',2,835504),(122,6,'Tratamiento',4,845256),(123,7,'Tratamiento',3,553474),(124,8,'Tratamiento',3,1299575),(125,9,'Tratamiento',2,1144618),(126,10,'Tratamiento',2,1033289),(127,11,'Tratamiento',5,775124),(128,12,'Tratamiento',5,666403),(129,13,'Tratamiento',4,527460),(130,14,'Tratamiento',6,528996),(131,15,'Tratamiento',3,909453),(132,16,'Tratamiento',3,555734),(133,17,'Tratamiento',4,1318496),(134,18,'Tratamiento',5,903422),(135,19,'Tratamiento',3,584977),(136,20,'Tratamiento',4,968731),(137,21,'Tratamiento',2,932764),(138,22,'Tratamiento',5,1254654),(139,23,'Tratamiento',6,1536903),(140,24,'Tratamiento',3,422753),(141,25,'Tratamiento',4,942310),(142,26,'Tratamiento',3,805018),(143,27,'Tratamiento',6,405645),(144,28,'Tratamiento',6,951084),(145,29,'Tratamiento',6,265126),(146,30,'Tratamiento',3,1113848),(147,31,'Tratamiento',4,824572),(148,32,'Tratamiento',4,844650),(149,33,'Tratamiento',4,1140223),(150,34,'Tratamiento',4,1038846),(151,35,'Tratamiento',2,833046),(152,36,'Tratamiento',6,909805),(153,37,'Tratamiento',3,1000135),(154,38,'Tratamiento',4,431209),(155,39,'Tratamiento',6,513181),(156,40,'Tratamiento',5,593033),(157,41,'Tratamiento',4,941333),(158,42,'Tratamiento',4,1185991),(159,43,'Tratamiento',4,392658),(160,44,'Tratamiento',5,441482),(161,45,'Tratamiento',3,605941),(162,46,'Tratamiento',4,1404520),(163,47,'Tratamiento',5,929980),(164,48,'Tratamiento',4,228805),(165,49,'Tratamiento',2,863760),(166,50,'Tratamiento',2,1170219),(167,51,'Tratamiento',4,224462),(168,52,'Tratamiento',4,680019),(169,53,'Tratamiento',5,1351265),(170,54,'Tratamiento',4,813048),(171,55,'Tratamiento',6,695843),(172,56,'Tratamiento',4,431025),(173,57,'Tratamiento',6,906084),(174,58,'Tratamiento',5,831506);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `direccion_id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(255) NOT NULL,
  `numero_exterior` int NOT NULL,
  `numero_interior` int DEFAULT NULL,
  `colonia` varchar(255) NOT NULL,
  `codigo_postal` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `otros` text NOT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (92,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France','Sin otros'),(93,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA','Sin otros'),(94,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France','Sin otros'),(95,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK','Sin otros'),(96,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France','Sin otros'),(97,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA','Sin otros'),(98,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada','Sin otros'),(99,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','Sin país','Sin otros'),(100,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada','Sin otros'),(101,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France','Sin otros'),(102,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France','Sin otros'),(103,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France','Sin otros'),(104,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA','Sin otros'),(105,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA','Sin otros'),(106,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA','Sin otros'),(107,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland','Sin otros'),(108,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK','Sin otros'),(109,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada','Sin otros'),(110,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela','Sin otros'),(111,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France','Sin otros'),(112,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA','Sin otros'),(113,'59 rue de l\'Abbaye',59,NULL,'No especifica','21955','Warszawa','No especifica','Sin país','Sin otros'),(114,'67, avenue de l\'Europe',67,NULL,'No especifica','42768','Versailles','No especifica','France','Sin otros'),(115,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France','Sin otros'),(116,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA','Sin otros'),(117,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland','Sin otros'),(118,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA','Sin otros'),(119,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA','Sin otros'),(120,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA','Sin otros'),(121,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK','Sin otros'),(122,'Adenauerallee 900',900,NULL,'No especifica','86925','Lyon','No especifica','France','Sin otros'),(123,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil','Sin otros'),(124,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil','Sin otros'),(125,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil','Sin otros'),(126,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina','Sin otros'),(127,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil','Sin otros'),(128,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil','Sin otros'),(129,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico','Sin otros'),(130,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico','Sin otros'),(131,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela','Sin otros'),(132,'Berguvsvgen  8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden','Sin otros'),(133,'Berkeley Gardens 12  Brewery',12,NULL,'No especifica','61775','London','No especifica','UK','Sin otros'),(134,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany','Sin otros'),(135,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium','Sin otros'),(136,'C/ Araquil, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain','Sin otros'),(137,'C/ Moralzarzal, 86',86,NULL,'No especifica','77528','Madrid','No especifica','Spain','Sin otros'),(138,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain','Sin otros'),(139,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico','Sin otros'),(140,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela','Sin otros'),(141,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela','Sin otros'),(142,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina','Sin otros'),(143,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA','Sin otros'),(144,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway','Sin otros'),(145,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal','Sin otros'),(146,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK','Sin otros'),(147,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany','Sin otros'),(148,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK','Sin otros'),(149,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria','Sin otros'),(150,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain','Sin otros'),(151,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland','Sin otros'),(152,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Switzerland','Sin otros'),(153,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany','Sin otros'),(154,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina','Sin otros'),(155,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal','Sin otros'),(156,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden','Sin otros'),(157,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil','Sin otros'),(158,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria','Sin otros'),(159,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany','Sin otros'),(160,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','Sin estado','Germany','Sin otros'),(161,'Mataderos  2312',2312,NULL,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico','Sin otros'),(162,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany','Sin otros'),(163,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany','Sin otros'),(164,'Obere Str. 57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany','Sin otros'),(165,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA','Sin otros'),(166,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain','Sin otros'),(167,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil','Sin otros'),(168,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany','Sin otros'),(169,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil','Sin otros'),(170,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil','Sin otros'),(171,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium','Sin otros'),(172,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico','Sin otros'),(173,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark','Sin otros'),(174,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK','Sin otros'),(175,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy','Sin otros'),(176,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany','Sin otros'),(177,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France','Sin otros'),(178,'ul. Filtrowa 6+B7:B928',68,NULL,'No especifica','33192','Seattle','WA','USA','Sin otros'),(179,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy','Sin otros'),(180,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy','Sin otros'),(181,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark','Sin otros'),(182,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany','Sin otros');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empleados_id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int NOT NULL,
  `direccion_id` int NOT NULL,
  PRIMARY KEY (`direccion_empleados_id`),
  KEY `fk_direcciones_empleados_empleados` (`empleado_id`),
  KEY `fk_direcciones_empleados_direcciones` (`direccion_id`),
  CONSTRAINT `fk_direcciones_empleados_direcciones` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_direcciones_empleados_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,1,149),(2,2,145),(3,3,167),(4,4,123),(5,5,176),(6,6,126),(7,7,106),(8,8,175),(9,9,125),(10,10,151),(11,11,150),(12,12,144),(13,13,97),(14,14,121),(15,15,181),(16,16,102),(17,17,165),(18,18,135),(19,19,120),(20,20,112),(21,21,159),(22,22,129),(23,23,128),(24,24,116),(25,25,173),(26,26,99),(27,27,113),(28,28,122),(29,29,177),(30,30,168);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `fk_direcciones_pacientes_pacientes` (`paciente_id`),
  KEY `fk_direcciones_pacientes_direcciones` (`direccion_id`),
  CONSTRAINT `fk_direcciones_pacientes_direcciones` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_direcciones_pacientes_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (117,1,164),(118,2,130),(119,3,NULL),(120,4,95),(121,5,NULL),(122,6,147),(123,7,101),(124,8,136),(125,9,94),(126,10,100),(127,11,146),(128,12,142),(129,13,172),(130,14,152),(131,15,127),(132,16,NULL),(133,17,182),(134,18,115),(135,19,108),(136,20,158),(137,21,170),(138,22,137),(139,23,96),(140,24,156),(141,25,134),(142,26,111),(143,27,180),(144,28,155),(145,29,166),(146,30,138),(147,31,124),(148,32,104),(149,33,110),(150,34,169),(151,35,140),(152,36,143),(153,37,117),(154,38,148),(155,39,162),(156,40,114),(157,41,92),(158,42,98),(159,43,93),(160,44,160),(161,45,118),(162,46,141),(163,47,131),(164,48,119),(165,49,179),(166,50,171),(167,51,109),(168,52,153),(169,53,174),(170,54,154),(171,55,105),(172,56,163),(173,57,103),(174,58,139);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleado_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',NULL),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',NULL),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19',NULL),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',NULL),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',NULL),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07',NULL),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',NULL),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',NULL),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',NULL),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26',NULL),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',NULL),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',NULL),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21',NULL),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',NULL),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23',NULL),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',NULL),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',NULL),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',NULL),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',NULL),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',NULL),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',NULL),(22,'Premal','Baek','Baek','Staff','1957-12-03',NULL),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',NULL),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09',NULL),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23',NULL),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',NULL),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',NULL),(28,'Somnath','Foote','Foote','Engineer','1962-11-19',NULL),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23',NULL),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago_pacientes`
--

DROP TABLE IF EXISTS `forma_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago_pacientes` (
  `Descripcion2` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago_pacientes`
--

LOCK TABLES `forma_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `forma_pago_pacientes` DISABLE KEYS */;
INSERT INTO `forma_pago_pacientes` VALUES ('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('Tratamiento'),('0      1\n1      2\n2      3\n3      4\n4      5\n5      6\n6      7\n7      8\n8      9\n9     10\n10    11\n11    12\n12    13\n13    14\n14    15\n15    16\n16    17\n17    18\n18    19\n19    20\n20    21\n21    22\n22    23\n23    24\n24    25\n25    26\n26    27\n27    28\n28    29\n29    30\n30    31\n31    32\n32    33\n33    34\n34    35\n35    36\n36    37\n37    38\n38    39\n39    40\n40    41\n41    42\n42    43\n43    44\n44    45\n45    46\n46    47\n47    48\n48    49\n49    50\n50    51\n51    52\n52    53\n53    54\n54    55\n55    56\n56    57\n57    58\nName: paciente_id, dtype: int64'),('0    1\n1    2\n2    3\n3    4\n4    5\nName: forma_pago_id, dtype: int64');
/*!40000 ALTER TABLE `forma_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int NOT NULL AUTO_INCREMENT,
  `forma_pago` text NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO'),(2,'TARJETA CRÉDITO'),(3,'TARJETA DEBITO'),(4,'SEGURO'),(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `forma_pago_id` int DEFAULT NULL,
  `detalles` text,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `fk_formas_pago_pacientes_pacientes` (`paciente_id`),
  KEY `fk_formas_pago_pacientes_formas_pago` (`forma_pago_id`),
  CONSTRAINT `fk_formas_pago_pacientes_formas_pago` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_formas_pago_pacientes_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,NULL,'Tratamiento'),(2,2,NULL,'Tratamiento'),(3,3,1,'Tratamiento'),(4,4,2,'Tratamiento'),(5,5,3,'Tratamiento'),(6,6,4,'Tratamiento'),(7,7,5,'Tratamiento'),(8,8,1,'Tratamiento'),(9,9,2,'Tratamiento'),(10,10,3,'Tratamiento'),(11,11,4,'Tratamiento'),(12,12,5,'Tratamiento'),(13,13,NULL,'Tratamiento'),(14,14,NULL,'Tratamiento'),(15,15,NULL,'Tratamiento'),(16,16,NULL,'Tratamiento'),(17,17,1,'Tratamiento'),(18,18,2,'Tratamiento'),(19,19,3,'Tratamiento'),(20,20,4,'Tratamiento'),(21,21,5,'Tratamiento'),(22,22,NULL,'Tratamiento'),(23,23,NULL,'Tratamiento'),(24,24,NULL,'Tratamiento'),(25,25,NULL,'Tratamiento'),(26,26,1,'Tratamiento'),(27,27,2,'Tratamiento'),(28,28,3,'Tratamiento'),(29,29,4,'Tratamiento'),(30,30,5,'Tratamiento'),(31,31,NULL,'Tratamiento'),(32,32,NULL,'Tratamiento'),(33,33,NULL,'Tratamiento'),(34,34,NULL,'Tratamiento'),(35,35,NULL,'Tratamiento'),(36,36,NULL,'Tratamiento'),(37,37,1,'Tratamiento'),(38,38,2,'Tratamiento'),(39,39,3,'Tratamiento'),(40,40,4,'Tratamiento'),(41,41,5,'Tratamiento'),(42,42,NULL,'Tratamiento'),(43,43,NULL,'Tratamiento'),(44,44,NULL,'Tratamiento'),(45,45,NULL,'Tratamiento'),(46,46,1,'Tratamiento'),(47,47,2,'Tratamiento'),(48,48,3,'Tratamiento'),(49,49,4,'Tratamiento'),(50,50,5,'Tratamiento'),(51,51,NULL,'Tratamiento'),(52,52,NULL,'Tratamiento'),(53,53,1,'Tratamiento'),(54,54,2,'Tratamiento'),(55,55,3,'Tratamiento'),(56,56,4,'Tratamiento'),(57,57,5,'Tratamiento'),(58,58,NULL,'Tratamiento');
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido_pat` varchar(255) NOT NULL,
  `apellido_mat` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `altura` decimal(10,2) NOT NULL,
  `numero_seguro_social` varchar(255) NOT NULL,
  `genero` enum('masculino','femenino') NOT NULL,
  `telefono_casa` varchar(255) DEFAULT NULL,
  `telefono_trabajo` varchar(255) DEFAULT NULL,
  `telefono_movil` varchar(255) DEFAULT NULL,
  `otros` text,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93.00,1.99,'10001','masculino',NULL,NULL,NULL,NULL),(2,'Bezalel','Simmel','Simmel','1952-07-08',88.00,1.69,'10002','femenino',NULL,NULL,NULL,NULL),(3,'Parto','Bamford','Bamford','1953-09-29',62.00,1.88,'10003','masculino',NULL,NULL,NULL,NULL),(4,'Chirstian','Koblick','Koblick','1958-09-05',93.00,1.84,'10004','masculino',NULL,NULL,NULL,NULL),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86.00,1.89,'10005','masculino',NULL,NULL,NULL,NULL),(6,'Anneke','Preusig','Preusig','1953-04-03',86.00,1.54,'10006','femenino',NULL,NULL,NULL,NULL),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56.00,1.77,'10007','femenino',NULL,NULL,NULL,NULL),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78.00,1.82,'10008','masculino',NULL,NULL,NULL,NULL),(9,'Sumant','Peac','Peac','1956-12-13',85.00,1.64,'10009','femenino',NULL,NULL,NULL,NULL),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92.00,1.71,'10010','femenino',NULL,NULL,NULL,NULL),(11,'Mary','Sluis','Sluis','1959-01-27',96.00,1.96,'10011','femenino',NULL,NULL,NULL,NULL),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63.00,1.90,'10012','masculino',NULL,NULL,NULL,NULL),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81.00,1.64,'10013','masculino',NULL,NULL,NULL,NULL),(14,'Berni','Genin','Genin','1962-12-29',67.00,1.74,'10014','masculino',NULL,NULL,NULL,NULL),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60.00,1.55,'10015','masculino',NULL,NULL,NULL,NULL),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97.00,1.71,'10016','masculino',NULL,NULL,NULL,NULL),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66.00,1.91,'10017','femenino',NULL,NULL,NULL,NULL),(18,'Kazuhide','Peha','Peha','1960-07-20',88.00,1.51,'10018','femenino',NULL,NULL,NULL,NULL),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85.00,1.61,'10019','masculino',NULL,NULL,NULL,NULL),(20,'Mayuko','Warwick','Warwick','1959-09-13',96.00,1.78,'10020','masculino',NULL,NULL,NULL,NULL),(21,'Ramzi','Erde','Erde','1959-08-27',91.00,1.61,'10021','masculino',NULL,NULL,NULL,NULL),(22,'Shahaf','Famili','Famili','1956-02-26',70.00,1.81,'10022','masculino',NULL,NULL,NULL,NULL),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86.00,1.80,'10023','femenino',NULL,NULL,NULL,NULL),(24,'Suzette','Pettey','Pettey','1961-09-21',79.00,1.74,'10024','femenino',NULL,NULL,NULL,NULL),(25,'Prasadram','Heyers','Heyers','1957-08-14',91.00,1.95,'10025','masculino',NULL,NULL,NULL,NULL),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75.00,1.91,'10026','masculino',NULL,NULL,NULL,NULL),(27,'Divier','Reistad','Reistad','1952-06-29',57.00,1.60,'10027','femenino',NULL,NULL,NULL,NULL),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62.00,1.72,'10028','masculino',NULL,NULL,NULL,NULL),(29,'Otmar','Herbst','Herbst','1961-04-24',77.00,1.60,'10029','masculino',NULL,NULL,NULL,NULL),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93.00,1.64,'10030','masculino',NULL,NULL,NULL,NULL),(31,'Karsten','Joslin','Joslin','1953-07-28',95.00,1.52,'10031','masculino',NULL,NULL,NULL,NULL),(32,'Jeong','Reistad','Reistad','1961-02-26',84.00,1.60,'10032','femenino',NULL,NULL,NULL,NULL),(33,'Arif','Merlo','Merlo','1954-09-13',92.00,1.77,'10033','masculino',NULL,NULL,NULL,NULL),(34,'Bader','Swan','Swan','1957-04-04',69.00,1.56,'10034','masculino',NULL,NULL,NULL,NULL),(35,'Alain','Chappelet','Chappelet','1956-06-06',57.00,1.55,'10035','masculino',NULL,NULL,NULL,NULL),(36,'Adamantios','Portugali','Portugali','1961-09-01',62.00,1.99,'10036','masculino',NULL,NULL,NULL,NULL),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60.00,1.75,'10037','masculino',NULL,NULL,NULL,NULL),(38,'Huan','Lortz','Lortz','1954-10-01',97.00,1.88,'10038','masculino',NULL,NULL,NULL,NULL),(39,'Alejandro','Brender','Brender','1959-10-01',92.00,1.78,'10039','masculino',NULL,NULL,NULL,NULL),(40,'Weiyi','Meriste','Meriste','1959-09-13',97.00,1.84,'10040','femenino',NULL,NULL,NULL,NULL),(41,'Uri','Lenart','Lenart','1959-08-27',80.00,1.90,'10041','femenino',NULL,NULL,NULL,NULL),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69.00,1.91,'10042','femenino',NULL,NULL,NULL,NULL),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65.00,1.95,'10043','masculino',NULL,NULL,NULL,NULL),(44,'Mingsen','Casley','Casley','1961-09-21',90.00,1.80,'10044','femenino',NULL,NULL,NULL,NULL),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90.00,1.97,'10045','masculino',NULL,NULL,NULL,NULL),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85.00,1.53,'10046','masculino',NULL,NULL,NULL,NULL),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78.00,1.65,'10047','masculino',NULL,NULL,NULL,NULL),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76.00,1.58,'10048','masculino',NULL,NULL,NULL,NULL),(49,'Basil','Tramer','Tramer','1961-04-24',99.00,1.55,'10049','femenino',NULL,NULL,NULL,NULL),(50,'Yinghua','Dredge','Dredge','1958-05-21',78.00,1.54,'10050','masculino',NULL,NULL,NULL,NULL),(51,'Hidefumi','Caine','Caine','1953-07-28',54.00,1.84,'10051','masculino',NULL,NULL,NULL,NULL),(52,'Heping','Nitsch','Nitsch','1961-02-26',85.00,1.59,'10052','masculino',NULL,NULL,NULL,NULL),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52.00,1.53,'10053','femenino',NULL,NULL,NULL,NULL),(54,'Mayumi','Schueller','Schueller','1957-04-04',75.00,1.72,'10054','masculino',NULL,NULL,NULL,NULL),(55,'Georgy','Dredge','Dredge','1956-06-06',97.00,1.61,'10055','masculino',NULL,NULL,NULL,NULL),(56,'Brendon','Bernini','Bernini','1961-09-01',91.00,1.63,'10056','femenino',NULL,NULL,NULL,NULL),(57,'Ebbe','Callaway','Callaway','1954-05-30',91.00,1.96,'10057','femenino',NULL,NULL,NULL,NULL),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99.00,1.96,'10058','masculino',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `cuentas_pacientes_id` int NOT NULL,
  `registro_por_empleado_id` int NOT NULL,
  `fecha_admision` date NOT NULL,
  `condición_medica` text NOT NULL,
  `otros` text,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `fk_registro_pacientes_pacientes` (`paciente_id`),
  KEY `fk_registro_pacientes_cuentas_pacientes` (`cuentas_pacientes_id`),
  KEY `fk_registro_pacientes_empleados` (`registro_por_empleado_id`),
  CONSTRAINT `fk_registro_pacientes_cuentas_pacientes` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_registro_pacientes_empleados` FOREIGN KEY (`registro_por_empleado_id`) REFERENCES `empleados` (`empleado_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_registro_pacientes_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,1,'2017-04-08','Abdominal Aortic Aneurysm',NULL),(2,2,2,2,'2017-04-09','Abdominal Cramps (Heat Cramps)',NULL),(3,3,3,3,'2017-04-10','Abdominal Hernia (Hernia Overview)',NULL),(4,4,4,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(5,5,5,5,'2017-04-12','Bad Breath',NULL),(6,6,6,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)',NULL),(7,7,7,7,'2017-04-15','Baker Cyst',NULL),(8,8,8,8,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(9,9,9,9,'2017-04-16','Fast Heart Beat (Palpitations Overview)',NULL),(10,10,10,10,'2017-04-17','Fatigue',NULL),(11,11,11,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue',NULL),(12,12,12,12,'2017-04-19','Lambliasis (Giardia Lamblia)',NULL),(13,13,13,13,'2017-04-20','Lambliosis (Giardia Lamblia)',NULL),(14,14,14,14,'2017-04-22','Landau-Kleffner Syndrome',NULL),(15,15,15,15,'2017-04-22','Lap Band Surgery (Gastric Banding)',NULL),(16,16,16,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(17,17,17,17,'2017-04-24','Omega-3 Fatty Acids',NULL),(18,18,18,18,'2017-04-25','Onchocerciasis',NULL),(19,19,19,19,'2017-04-27','Onychocryptosis (Ingrown Toenail)',NULL),(20,20,20,20,'2017-04-28','Scarlatina)',NULL),(21,21,21,21,'2017-04-28','Scars',NULL),(22,22,22,22,'2017-04-30','Schatzki Ring',NULL),(23,23,23,23,'2017-05-01','Scheuermann\'s Kyphosis (Kyphosis)',NULL),(24,24,24,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis)',NULL),(25,25,25,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis)',NULL),(26,26,26,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis)',NULL),(27,27,27,27,'2017-05-04','Tachycardia (Heart Rhythm Disorders)',NULL),(28,28,28,28,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(29,29,29,29,'2017-05-07','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(30,30,30,30,'2017-05-07','Tailbone Pain (Coccydynia)',NULL),(31,31,31,1,'2017-05-09','Tailor\'s Bunion (Bunions)',NULL),(32,32,32,2,'2017-05-10','Takayasu Arteritis (Takayasu Disease)',NULL),(33,33,33,3,'2017-05-10','Takayasu Disease',NULL),(34,34,34,4,'2017-05-11','Taking Dental Medications',NULL),(35,35,35,5,'2017-05-13','Tarry Stools (Stool Color Changes)',NULL),(36,36,36,6,'2017-05-14','Abdominal Aortic Aneurysm',NULL),(37,37,37,7,'2017-05-14','Abdominal Cramps (Heat Cramps)',NULL),(38,38,38,8,'2017-05-15','Abdominal Hernia (Hernia Overview)',NULL),(39,39,39,9,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(40,40,40,10,'2017-05-18','Bad Breath',NULL),(41,41,41,11,'2017-05-18','Bad Cholesterol Test (Cholesterol Test)',NULL),(42,42,42,12,'2017-05-20','Baker Cyst',NULL),(43,43,43,13,'2017-05-21','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(44,44,44,14,'2017-05-22','Fast Heart Beat (Palpitations Overview)',NULL),(45,45,45,15,'2017-05-23','Fatigue',NULL),(46,46,46,16,'2017-05-23','Fatigue From Cancer (Cancer Fatigue',NULL),(47,47,47,17,'2017-05-25','Lambliasis (Giardia Lamblia)',NULL),(48,48,48,18,'2017-05-25','Lambliosis (Giardia Lamblia)',NULL),(49,49,49,19,'2017-05-27','Landau-Kleffner Syndrome',NULL),(50,50,50,20,'2017-05-28','Lap Band Surgery (Gastric Banding)',NULL),(51,51,51,21,'2017-05-29','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(52,52,52,22,'2017-05-29','Omega-3 Fatty Acids',NULL),(53,53,53,23,'2017-05-31','Onchocerciasis',NULL),(54,54,54,24,'2017-05-31','Onychocryptosis (Ingrown Toenail)',NULL),(55,55,55,25,'2017-06-01','Scarlatina)',NULL),(56,56,56,26,'2017-06-02','Scars',NULL),(57,57,57,27,'2017-06-04','Schatzki Ring',NULL),(58,58,58,28,'2017-06-05','Scheuermann\'s Kyphosis (Kyphosis)',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-28 23:31:06
