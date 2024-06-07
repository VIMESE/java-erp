-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authorized.personnel`
--

DROP TABLE IF EXISTS `authorized.personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorized.personnel` (
  `EmploID` int NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Username` varchar(15) NOT NULL,
  PRIMARY KEY (`Password`),
  UNIQUE KEY `Password_UNIQUE` (`Password`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  KEY `FK_EmploID_authooper_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_author` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorized.personnel`
--

LOCK TABLES `authorized.personnel` WRITE;
/*!40000 ALTER TABLE `authorized.personnel` DISABLE KEYS */;
INSERT INTO `authorized.personnel` VALUES (1,'75','Rex');
/*!40000 ALTER TABLE `authorized.personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card.emplo`
--

DROP TABLE IF EXISTS `card.emplo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card.emplo` (
  `EmploID` int NOT NULL,
  `cardID` int NOT NULL AUTO_INCREMENT,
  `CARDDATE` date NOT NULL,
  `CHECK_IN` time DEFAULT NULL,
  `CHECK_OUT` time DEFAULT NULL,
  `worHours` int GENERATED ALWAYS AS (hour(timediff(`CHECK_OUT`,`CHECK_IN`))) STORED,
  PRIMARY KEY (`cardID`),
  KEY `FK_EmploID_CARD_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_CARD` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card.emplo`
--

LOCK TABLES `card.emplo` WRITE;
/*!40000 ALTER TABLE `card.emplo` DISABLE KEYS */;
INSERT INTO `card.emplo` (`EmploID`, `cardID`, `CARDDATE`, `CHECK_IN`, `CHECK_OUT`) VALUES (3,1,'2023-12-01','08:00:00','16:00:00'),(3,2,'2023-12-02','08:00:00','16:00:00'),(3,3,'2023-12-04','08:00:00','16:00:00'),(3,4,'2023-12-05','08:00:00','16:00:00'),(3,5,'2023-12-06','08:00:00','16:00:00'),(3,6,'2023-12-07','08:00:00','16:00:00'),(3,7,'2023-12-08','08:00:00','16:00:00'),(3,8,'2023-12-09','08:00:00','16:00:00'),(3,9,'2023-12-11','08:00:00','16:00:00'),(3,10,'2023-12-12','08:00:00','16:00:00'),(3,11,'2023-12-13','08:00:00','16:00:00'),(3,12,'2023-12-14','08:00:00','16:00:00'),(3,13,'2023-12-15','08:00:00','16:00:00'),(3,14,'2023-12-16','08:00:00','16:00:00'),(3,15,'2023-12-18','08:00:00','16:00:00'),(3,16,'2023-12-19','08:00:00','16:00:00'),(3,17,'2023-12-20','08:00:00','16:00:00'),(3,18,'2023-12-21','08:00:00','16:00:00'),(3,19,'2023-12-22','08:00:00','16:00:00'),(3,20,'2023-12-23','08:00:00','16:00:00'),(3,21,'2023-12-25','08:00:00','16:00:00'),(3,22,'2023-12-26','08:00:00','16:00:00'),(3,23,'2023-12-27','08:00:00','16:00:00'),(3,24,'2023-12-28','08:00:00','16:00:00'),(3,25,'2023-12-29','08:00:00','16:00:00'),(3,98,'2024-01-01','08:00:00','16:00:00'),(3,99,'2024-01-02','08:00:00','16:00:00'),(3,100,'2024-01-03','08:00:00','16:00:00'),(3,101,'2024-01-04','08:00:00','16:00:00'),(3,102,'2024-01-05','08:00:00','16:00:00'),(3,103,'2024-01-06','08:00:00','16:00:00'),(3,104,'2024-01-08','08:00:00','16:00:00'),(3,105,'2024-01-09','08:00:00','16:00:00'),(3,106,'2024-01-10','08:00:00','16:00:00'),(3,107,'2024-01-11','08:00:00','16:00:00'),(3,108,'2024-01-12','08:00:00','16:00:00'),(3,109,'2024-01-13','08:00:00','16:00:00'),(3,110,'2024-01-16','08:00:00','16:00:00'),(3,111,'2024-01-17','08:00:00','16:00:00'),(3,112,'2024-01-18','08:00:00','16:00:00'),(3,113,'2024-01-19','08:00:00','16:00:00'),(3,114,'2024-01-20','08:00:00','16:00:00'),(3,115,'2024-01-22','08:00:00','16:00:00'),(3,116,'2024-01-23','08:00:00','16:00:00'),(3,117,'2024-01-24','08:00:00','16:00:00'),(3,118,'2024-01-25','08:00:00','16:00:00'),(3,119,'2024-01-26','08:00:00','16:00:00'),(3,120,'2024-01-27','08:00:00','16:00:00'),(3,121,'2024-01-29','08:00:00','16:00:00'),(3,122,'2024-01-15','08:00:00','16:00:00'),(2,123,'2023-12-04','10:00:00','13:00:00'),(2,124,'2023-12-05','10:00:00','13:00:00'),(2,125,'2023-12-07','10:00:00','13:00:00'),(2,126,'2023-12-11','10:00:00','13:00:00'),(2,127,'2023-12-12','10:00:00','13:00:00'),(2,128,'2023-12-14','10:00:00','13:00:00'),(2,129,'2023-12-18','10:00:00','13:00:00'),(2,130,'2023-12-19','10:00:00','13:00:00'),(2,131,'2023-12-21','10:00:00','13:00:00'),(2,132,'2023-12-25','10:00:00','13:00:00'),(2,133,'2023-12-26','10:00:00','13:00:00'),(2,134,'2023-12-28','10:00:00','13:00:00'),(2,135,'2024-01-01','10:00:00','13:00:00'),(2,136,'2024-01-02','10:00:00','13:00:00'),(2,137,'2024-01-04','10:00:00','13:00:00'),(2,138,'2024-01-08','10:00:00','13:00:00'),(2,139,'2024-01-09','10:00:00','13:00:00'),(2,140,'2024-01-11','10:00:00','13:00:00'),(2,141,'2024-01-15','10:00:00','13:00:00'),(2,142,'2024-01-16','10:00:00','13:00:00'),(2,143,'2024-01-18','10:00:00','13:00:00'),(2,144,'2024-01-22','10:00:00','13:00:00'),(2,145,'2024-01-23','10:00:00','13:00:00'),(2,146,'2024-01-25','10:00:00','13:00:00'),(2,147,'2024-01-29','10:00:00','13:00:00'),(2,148,'2024-01-30','10:00:00','13:00:00'),(2,149,'2024-02-01','10:00:00','13:00:00'),(2,150,'2024-02-05','10:00:00','13:00:00'),(2,151,'2024-02-06','10:00:00','13:00:00'),(3,153,'2024-02-01','08:00:00','16:00:00'),(3,154,'2024-02-02','08:00:00','16:00:00'),(3,155,'2024-02-03','08:00:00','16:00:00'),(3,156,'2024-02-05','08:00:00','16:00:00'),(3,157,'2024-02-06','08:00:00','16:00:00'),(3,158,'2024-02-07','08:00:00','16:00:00'),(3,159,'2024-02-08','08:00:00','16:00:00'),(3,160,'2024-02-09','08:00:00','16:00:00'),(3,161,'2024-02-10','08:00:00','16:00:00'),(4,162,'2023-12-02','08:00:00','16:00:00'),(4,163,'2023-12-04','08:00:00','16:00:00'),(4,164,'2023-12-06','08:00:00','16:00:00'),(4,165,'2023-12-08','08:00:00','16:00:00'),(4,166,'2023-12-09','08:00:00','16:00:00'),(4,167,'2023-12-11','08:00:00','16:00:00'),(4,168,'2023-12-12','08:00:00','16:00:00'),(4,169,'2023-12-13','08:00:00','16:00:00'),(4,170,'2023-12-14','08:00:00','16:00:00'),(4,171,'2023-12-15','08:00:00','16:00:00'),(4,172,'2023-12-16','08:00:00','16:00:00'),(4,173,'2023-12-18','08:00:00','16:00:00'),(4,174,'2023-12-21','08:00:00','16:00:00'),(4,175,'2023-12-23','08:00:00','16:00:00'),(4,176,'2023-12-26','08:00:00','16:00:00'),(4,177,'2023-12-27','08:00:00','16:00:00'),(4,178,'2023-12-29','08:00:00','16:00:00'),(4,179,'2024-02-01','08:00:00','16:00:00'),(4,180,'2024-02-02','08:00:00','16:00:00'),(4,181,'2024-02-03','08:00:00','16:00:00'),(4,182,'2024-02-05','08:00:00','16:00:00'),(4,183,'2024-02-06','08:00:00','16:00:00'),(4,184,'2024-02-07','08:00:00','16:00:00'),(4,185,'2024-02-08','08:00:00','16:00:00'),(4,186,'2024-02-09','08:00:00','16:00:00'),(4,187,'2024-02-10','08:00:00','16:00:00'),(4,188,'2024-02-12','08:00:00','16:00:00'),(4,189,'2024-02-13','08:00:00','16:00:00'),(4,190,'2024-02-14','08:00:00','16:00:00'),(4,191,'2024-02-15','08:00:00','16:00:00'),(4,192,'2024-02-16','08:00:00','16:00:00'),(4,193,'2024-02-17','08:00:00','16:00:00'),(4,194,'2024-02-19','08:00:00','16:00:00'),(4,195,'2024-02-20','08:00:00','16:00:00'),(4,196,'2024-02-20','08:00:00','16:00:00'),(4,197,'2024-02-21','08:00:00','16:00:00'),(4,198,'2024-02-22','08:00:00','16:00:00'),(4,199,'2024-02-23','08:00:00','16:00:00'),(4,200,'2024-02-24','08:00:00','16:00:00'),(4,201,'2024-02-26','08:00:00','16:00:00'),(4,202,'2024-02-27','08:00:00','16:00:00'),(4,203,'2024-02-28','08:00:00','16:00:00'),(4,204,'2024-02-29','08:00:00','16:00:00'),(4,205,'2024-01-01','08:00:00','16:00:00'),(4,206,'2024-01-02','08:00:00','16:00:00'),(4,207,'2024-01-03','08:00:00','16:00:00'),(4,208,'2024-01-04','08:00:00','16:00:00'),(4,209,'2024-01-05','08:00:00','16:00:00'),(4,210,'2024-01-06','08:00:00','16:00:00'),(4,211,'2024-01-08','08:00:00','16:00:00'),(4,212,'2024-01-09','08:00:00','16:00:00'),(4,213,'2024-01-10','08:00:00','16:00:00'),(4,214,'2024-01-11','08:00:00','16:00:00'),(4,215,'2024-01-12','08:00:00','16:00:00'),(4,216,'2024-01-13','08:00:00','16:00:00'),(4,217,'2024-01-15','08:00:00','16:00:00'),(4,218,'2024-01-16','08:00:00','16:00:00'),(4,219,'2024-01-17','08:00:00','16:00:00'),(4,220,'2024-01-18','08:00:00','16:00:00'),(4,221,'2024-01-19','08:00:00','16:00:00'),(4,222,'2024-01-20','08:00:00','16:00:00'),(4,223,'2024-01-22','08:00:00','16:00:00'),(4,224,'2024-01-23','08:00:00','16:00:00'),(4,225,'2024-01-24','08:00:00','16:00:00'),(4,226,'2024-01-25','08:00:00','16:00:00'),(4,227,'2024-01-26','08:00:00','16:00:00'),(4,228,'2024-01-27','08:00:00','16:00:00'),(4,229,'2024-01-29','08:00:00','16:00:00');
/*!40000 ALTER TABLE `card.emplo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depart.positon`
--

DROP TABLE IF EXISTS `depart.positon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depart.positon` (
  `EmploID` int NOT NULL,
  `depoID` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  PRIMARY KEY (`depoID`),
  UNIQUE KEY `departmentID_UNIQUE` (`depoID`),
  KEY `FK_EmploID_Depart_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_Depart` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depart.positon`
--

LOCK TABLES `depart.positon` WRITE;
/*!40000 ALTER TABLE `depart.positon` DISABLE KEYS */;
INSERT INTO `depart.positon` VALUES (1,1,'management','ceo'),(2,2,'customer service','secretary'),(3,3,'company info','guide'),(4,4,'research fossils','manageer'),(5,5,'sales','mascot'),(15,15,'cant','come on'),(16,16,'oof','pls');
/*!40000 ALTER TABLE `depart.positon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees.main.data`
--

DROP TABLE IF EXISTS `employees.main.data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees.main.data` (
  `EmploID` int NOT NULL AUTO_INCREMENT,
  `EmpName` varchar(25) NOT NULL,
  `SurNam` varchar(25) NOT NULL,
  `dadNam` varchar(25) NOT NULL,
  `MothaNam` varchar(25) NOT NULL,
  `afm` varchar(9) NOT NULL,
  `AMKA` varchar(11) NOT NULL,
  `ADRESS` varchar(200) NOT NULL,
  `kids` int DEFAULT NULL,
  `married` tinyint NOT NULL,
  `email` varchar(70) NOT NULL,
  `ActiveStatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`EmploID`),
  UNIQUE KEY `afm_UNIQUE` (`afm`),
  UNIQUE KEY `AMKA_UNIQUE` (`AMKA`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `EmploID_UNIQUE` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='it contains all the private and basic information of an employee';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees.main.data`
--

LOCK TABLES `employees.main.data` WRITE;
/*!40000 ALTER TABLE `employees.main.data` DISABLE KEYS */;
INSERT INTO `employees.main.data` VALUES (1,'alex','Stef','Dim','Stam','157','180','524 Athens',0,0,'alex@gmail.com,vim@gmail.com',1),(2,'Nat','Fest','Mid','Tsam','283','756','333 Komotini',0,1,'nat@gmail.com',1),(3,'Stella','Stetfa','Dimi','Mast','333','100','127 Winnie',0,1,'stella2@gmail.com',1),(4,'Chris','Sfet','Trim','Mat','384','567','332  Pagg',1,1,'chris@gmail.com',1),(5,'Troufa','Stef','Alex','SteNa','999','919','13 Meow',0,0,'troufa@gmail.com',1),(15,'as','qwe','ewr','kl','1234','346','asd',1,1,'aqd@',1),(16,'ds','jim','dad','mom','846','653','523 ave',11,1,'qew@',0);
/*!40000 ALTER TABLE `employees.main.data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment.history`
--

DROP TABLE IF EXISTS `employment.history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment.history` (
  `EmploID` int NOT NULL,
  `HisDatID` int NOT NULL AUTO_INCREMENT,
  `HireDate` date NOT NULL,
  `PauseFired` date DEFAULT NULL,
  PRIMARY KEY (`HisDatID`),
  KEY `FK_EmploID_history_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_history` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment.history`
--

LOCK TABLES `employment.history` WRITE;
/*!40000 ALTER TABLE `employment.history` DISABLE KEYS */;
INSERT INTO `employment.history` VALUES (1,1,'2023-08-29','2023-09-29'),(2,3,'2023-11-03',NULL),(3,4,'2022-09-04',NULL),(4,5,'2019-06-18',NULL),(5,6,'2021-03-30',NULL),(15,15,'2024-02-18',NULL),(16,16,'2024-02-19',NULL),(1,19,'2024-03-03',NULL),(1,20,'2024-03-15','2024-03-15');
/*!40000 ALTER TABLE `employment.history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
  `EmploID` int NOT NULL,
  `payrollID` int NOT NULL AUTO_INCREMENT,
  `paydate` date DEFAULT NULL,
  `paysum` decimal(10,2) DEFAULT NULL,
  `sick` int DEFAULT NULL,
  `absences` int DEFAULT NULL,
  `vacations` int DEFAULT NULL,
  PRIMARY KEY (`payrollID`),
  KEY `FK_EmploID_pay_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_pay` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (2,1,'2023-12-30',2160.00,0,0,0);
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `present.not.present`
--

DROP TABLE IF EXISTS `present.not.present`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `present.not.present` (
  `EmploID` int NOT NULL,
  `DatID` int NOT NULL AUTO_INCREMENT,
  `AbsenceDate` date DEFAULT NULL,
  `LeaveType` varchar(14) DEFAULT NULL,
  `YEAR` year DEFAULT NULL,
  PRIMARY KEY (`DatID`),
  KEY `FK_EmploID_HISTORY_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_preNOTpres` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `present.not.present`
--

LOCK TABLES `present.not.present` WRITE;
/*!40000 ALTER TABLE `present.not.present` DISABLE KEYS */;
INSERT INTO `present.not.present` VALUES (4,2,'2023-12-05','ALLOWED LEAVE',2023),(4,4,'2023-12-19','ALLOWED LEAVE',2023),(4,5,'2023-12-20','ALLOWED LEAVE',2023),(4,7,'2023-12-25','ALLOWED LEAVE',2023),(4,8,'2023-12-28','ALLOWED LEAVE',2023);
/*!40000 ALTER TABLE `present.not.present` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `EmploID` int NOT NULL,
  `idSALARIES` int NOT NULL AUTO_INCREMENT,
  `SALARY` decimal(10,2) DEFAULT NULL,
  `salaryDATE` date DEFAULT NULL,
  PRIMARY KEY (`idSALARIES`),
  KEY `FK_EmploiID_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_SAL` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,1,600.00,'2023-08-29'),(1,2,60.00,'2024-02-02'),(2,3,50.00,'2023-11-03'),(3,4,624.00,'2022-09-04'),(4,5,1200.00,'2019-06-18'),(5,6,60.00,'2021-03-30'),(16,16,1200.00,'2024-02-19');
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills.employee`
--

DROP TABLE IF EXISTS `skills.employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills.employee` (
  `EmploID` int NOT NULL,
  `skillsid` int NOT NULL AUTO_INCREMENT,
  `skills` varchar(300) NOT NULL,
  PRIMARY KEY (`skillsid`),
  KEY `FK_EmploID_SKILLS_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_SKILLS` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills.employee`
--

LOCK TABLES `skills.employee` WRITE;
/*!40000 ALTER TABLE `skills.employee` DISABLE KEYS */;
INSERT INTO `skills.employee` VALUES (1,1,'wastingtime, being an idiot'),(2,2,'secretary, high school graduate'),(3,3,'physics  graduate, proffessori'),(4,4,'archaeologist, computer skills'),(5,5,'sleeping, eating, hissing'),(15,15,'none'),(16,16,'komi');
/*!40000 ALTER TABLE `skills.employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone.info`
--

DROP TABLE IF EXISTS `telephone.info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephone.info` (
  `EmploID` int DEFAULT NULL,
  `teleID` int NOT NULL AUTO_INCREMENT,
  `telenumber` varchar(45) NOT NULL,
  PRIMARY KEY (`teleID`),
  UNIQUE KEY `teleID_UNIQUE` (`teleID`),
  KEY `FK_EmploiID_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_COM` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='telephone numbers of the employees';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone.info`
--

LOCK TABLES `telephone.info` WRITE;
/*!40000 ALTER TABLE `telephone.info` DISABLE KEYS */;
INSERT INTO `telephone.info` VALUES (1,1,'7567'),(1,2,'6891'),(2,3,'6986'),(3,4,'4347'),(4,5,'4011'),(5,6,'9999'),(15,15,'3426'),(16,16,'7895');
/*!40000 ALTER TABLE `telephone.info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_card`
--

DROP TABLE IF EXISTS `view_card`;
/*!50001 DROP VIEW IF EXISTS `view_card`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_card` AS SELECT 
 1 AS `emploid`,
 1 AS `cardid`,
 1 AS `carddate`,
 1 AS `check_in`,
 1 AS `check_out`,
 1 AS `worhours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_his`
--

DROP TABLE IF EXISTS `view_his`;
/*!50001 DROP VIEW IF EXISTS `view_his`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_his` AS SELECT 
 1 AS `emploid`,
 1 AS `hisdatid`,
 1 AS `hiredate`,
 1 AS `pausefired`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_main`
--

DROP TABLE IF EXISTS `view_main`;
/*!50001 DROP VIEW IF EXISTS `view_main`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_main` AS SELECT 
 1 AS `emploid`,
 1 AS `empname`,
 1 AS `surnam`,
 1 AS `dadnam`,
 1 AS `mothanam`,
 1 AS `afm`,
 1 AS `amka`,
 1 AS `adress`,
 1 AS `kids`,
 1 AS `married`,
 1 AS `email`,
 1 AS `depoid`,
 1 AS `department_name`,
 1 AS `position`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_pay`
--

DROP TABLE IF EXISTS `view_pay`;
/*!50001 DROP VIEW IF EXISTS `view_pay`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_pay` AS SELECT 
 1 AS `emploid`,
 1 AS `payrollid`,
 1 AS `paydate`,
 1 AS `paysum`,
 1 AS `sick`,
 1 AS `absences`,
 1 AS `vacations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_press`
--

DROP TABLE IF EXISTS `view_press`;
/*!50001 DROP VIEW IF EXISTS `view_press`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_press` AS SELECT 
 1 AS `emploid`,
 1 AS `datid`,
 1 AS `absencedate`,
 1 AS `leavetype`,
 1 AS `year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_sal`
--

DROP TABLE IF EXISTS `view_sal`;
/*!50001 DROP VIEW IF EXISTS `view_sal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_sal` AS SELECT 
 1 AS `emploid`,
 1 AS `idsalaries`,
 1 AS `salary`,
 1 AS `salarydate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_skills`
--

DROP TABLE IF EXISTS `view_skills`;
/*!50001 DROP VIEW IF EXISTS `view_skills`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_skills` AS SELECT 
 1 AS `emploid`,
 1 AS `skillsid`,
 1 AS `skills`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tele`
--

DROP TABLE IF EXISTS `view_tele`;
/*!50001 DROP VIEW IF EXISTS `view_tele`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_tele` AS SELECT 
 1 AS `emploid`,
 1 AS `teleid`,
 1 AS `telenumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_w`
--

DROP TABLE IF EXISTS `view_w`;
/*!50001 DROP VIEW IF EXISTS `view_w`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_w` AS SELECT 
 1 AS `emploid`,
 1 AS `worktypeid`,
 1 AS `employeetype`,
 1 AS `salarytype`,
 1 AS `requiredtowork`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `worktype.of.employees`
--

DROP TABLE IF EXISTS `worktype.of.employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worktype.of.employees` (
  `EmploID` int NOT NULL,
  `WorkTYPEID` int NOT NULL AUTO_INCREMENT,
  `EmployeeType` varchar(45) NOT NULL,
  `SalaryType` varchar(45) NOT NULL,
  `requiredTOwork` varchar(45) NOT NULL,
  PRIMARY KEY (`WorkTYPEID`),
  KEY `FK_EmploID_WT_idx` (`EmploID`),
  CONSTRAINT `FK_EmploID_WT` FOREIGN KEY (`EmploID`) REFERENCES `employees.main.data` (`EmploID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worktype.of.employees`
--

LOCK TABLES `worktype.of.employees` WRITE;
/*!40000 ALTER TABLE `worktype.of.employees` DISABLE KEYS */;
INSERT INTO `worktype.of.employees` VALUES (2,1,'by the hour','by the hour ','3 h per day 3 days per week'),(3,2,'salaried','montlhy','full time'),(4,3,'salaried','monthly','full time'),(16,16,'salaried','monthly','full time'),(15,17,'salaried','monthly','full time');
/*!40000 ALTER TABLE `worktype.of.employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_pay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_pay`(
	in emplid int,
    in pdate DATE
   
)
begin
    declare sumpay decimal(10,2);
    declare abs int;
    declare m_onth int;
    set m_onth = month(pdate);
    
    SELECT employeetype
    INTO @employeetype
    FROM mydatabase.`worktype.of.employees`
    WHERE emploid = emplid;
    
	#workdays
		SELECT COUNT(cardid)
        into @workdays 
		FROM mydatabase.`card.emplo`
		WHERE emploid = emplid AND CARDDATE LIKE CONCAT('%-', LPAD(m_onth, 2, '0'), '-%');
        
	#worhours
		SELECT sum(worhours)
        into @workhours
		FROM mydatabase.`card.emplo`
		WHERE emploid = 2 AND CARDDATE LIKE CONCAT('%-', LPAD(m_onth, 2, '0'), '-%');
        
    #vacations
        select count(datid)
        into @vacs
		from mydatabase.`present.not.present`
		where emploid = emplid and absencedate like CONCAT('%-', LPAD(m_onth, 2, '0'), '-%') and leavetype = 'ALLOWED LEAVE';
        
	#sickleave
		select count(datid)
        into @sic
		from mydatabase.`present.not.present`
		where emploid = emplid and absencedate like CONCAT('%-', LPAD(m_onth, 2, '0'), '-%') and leavetype = 'SICKLEAVE';
        
	#salary
        SELECT salary
        into @sal
		FROM mydatabase.salaries
		WHERE emploid = 1
		  AND salarydate = (SELECT MAX(salarydate)
							FROM mydatabase.salaries
							WHERE emploid = 1);
                            
    IF @employeetype = 'salaried' THEN
		SET sumpay = (@workdays + @sic + @vacs)*(1/25)*@sal;
        set abs = 25-@workdays;
    ELSE
        SET sumpay = @workhours * @sal;
        set abs = 0;
    END IF;
    
    insert into payroll(emploid, payrollid, paydate, paysum, sick , absences, vacations)
    values(emplid, '0', pdate, sumpay, @sic, abs, @vacs);
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_card`
--

/*!50001 DROP VIEW IF EXISTS `view_card`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_card` AS select `ca`.`EmploID` AS `emploid`,`ca`.`cardID` AS `cardid`,`ca`.`CARDDATE` AS `carddate`,`ca`.`CHECK_IN` AS `check_in`,`ca`.`CHECK_OUT` AS `check_out`,`ca`.`worHours` AS `worhours` from (`card.emplo` `ca` join `employees.main.data` `em` on((`ca`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_his`
--

/*!50001 DROP VIEW IF EXISTS `view_his`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_his` AS select `hi`.`EmploID` AS `emploid`,`hi`.`HisDatID` AS `hisdatid`,`hi`.`HireDate` AS `hiredate`,`hi`.`PauseFired` AS `pausefired` from (`employment.history` `hi` left join `employees.main.data` `em` on((`hi`.`EmploID` = `em`.`EmploID`))) where ((`em`.`EmploID` = '4') and (`em`.`ActiveStatus` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_main`
--

/*!50001 DROP VIEW IF EXISTS `view_main`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_main` AS select `em`.`EmploID` AS `emploid`,`em`.`EmpName` AS `empname`,`em`.`SurNam` AS `surnam`,`em`.`dadNam` AS `dadnam`,`em`.`MothaNam` AS `mothanam`,`em`.`afm` AS `afm`,`em`.`AMKA` AS `amka`,`em`.`ADRESS` AS `adress`,`em`.`kids` AS `kids`,`em`.`married` AS `married`,`em`.`email` AS `email`,`dp`.`depoID` AS `depoid`,`dp`.`department_name` AS `department_name`,`dp`.`position` AS `position` from (`employees.main.data` `em` join `depart.positon` `dp` on((`em`.`EmploID` = `dp`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_pay`
--

/*!50001 DROP VIEW IF EXISTS `view_pay`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_pay` AS select `pl`.`EmploID` AS `emploid`,`pl`.`payrollID` AS `payrollid`,`pl`.`paydate` AS `paydate`,`pl`.`paysum` AS `paysum`,`pl`.`sick` AS `sick`,`pl`.`absences` AS `absences`,`pl`.`vacations` AS `vacations` from (`payroll` `pl` join `employees.main.data` `em` on((`em`.`EmploID` = `pl`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_press`
--

/*!50001 DROP VIEW IF EXISTS `view_press`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_press` AS select `pr`.`EmploID` AS `emploid`,`pr`.`DatID` AS `datid`,`pr`.`AbsenceDate` AS `absencedate`,`pr`.`LeaveType` AS `leavetype`,`pr`.`YEAR` AS `year` from (`present.not.present` `pr` join `employees.main.data` `em` on((`pr`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_sal`
--

/*!50001 DROP VIEW IF EXISTS `view_sal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sal` AS select `s`.`EmploID` AS `emploid`,`s`.`idSALARIES` AS `idsalaries`,`s`.`SALARY` AS `salary`,`s`.`salaryDATE` AS `salarydate` from (`salaries` `s` left join `employees.main.data` `em` on((`s`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_skills`
--

/*!50001 DROP VIEW IF EXISTS `view_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_skills` AS select `sk`.`EmploID` AS `emploid`,`sk`.`skillsid` AS `skillsid`,`sk`.`skills` AS `skills` from (`skills.employee` `sk` join `employees.main.data` `em` on((`sk`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tele`
--

/*!50001 DROP VIEW IF EXISTS `view_tele`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tele` AS select `te`.`EmploID` AS `emploid`,`te`.`teleID` AS `teleid`,`te`.`telenumber` AS `telenumber` from (`telephone.info` `te` join `employees.main.data` `em` on((`te`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_w`
--

/*!50001 DROP VIEW IF EXISTS `view_w`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_w` AS select `w`.`EmploID` AS `emploid`,`w`.`WorkTYPEID` AS `worktypeid`,`w`.`EmployeeType` AS `employeetype`,`w`.`SalaryType` AS `salarytype`,`w`.`requiredTOwork` AS `requiredtowork` from (`worktype.of.employees` `w` join `employees.main.data` `em` on((`w`.`EmploID` = `em`.`EmploID`))) where (`em`.`ActiveStatus` = 1) */;
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

-- Dump completed on 2024-06-07  3:02:47
