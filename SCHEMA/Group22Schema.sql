CREATE DATABASE  IF NOT EXISTS `Group22Schema` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Group22Schema`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Group22Schema
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
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `AppointmentID` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `Patient_PatienceID` int NOT NULL,
  PRIMARY KEY (`AppointmentID`,`Patient_PatienceID`),
  KEY `fk_Appointment_Patient1_idx` (`Patient_PatienceID`),
  CONSTRAINT `fk_Appointment_Patient1` FOREIGN KEY (`Patient_PatienceID`) REFERENCES `Patient` (`PatienceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES (1,'2020-01-17 00:00:00','cheked_out',4),(2,'2021-01-13 00:00:00','LWT',1),(3,'2020-04-17 00:00:00','booked',2),(4,'2001-09-23 00:00:00','no_show',8),(5,'2021-04-22 00:00:00','checked_in',6),(6,'2018-05-27 00:00:00','LWT',3),(7,'2021-03-17 00:00:00','cancelled',7),(8,'2016-11-11 00:00:00','cancelled',3),(9,'2017-09-02 00:00:00','cheked_out',9),(10,'2014-03-22 00:00:00','LWT',2),(11,'2011-08-17 00:00:00','cancelled',5),(12,'2010-10-10 00:00:00','cancelled',5),(13,'2011-04-02 00:00:00','LWT',1),(14,'2005-01-01 00:00:00','checked_out',2),(15,'2006-07-07 00:00:00','checked_out',4),(16,'2020-01-01 00:00:00','LWT',7),(17,'2020-12-02 00:00:00','LWT',6),(18,'2020-12-02 00:00:00','no_show',4),(19,'2020-12-17 00:00:00','LWT',1),(20,'2020-12-31 00:00:00','no_show',7),(21,'2020-12-17 00:00:00','LWT',2);
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `DoctorID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  `practice_number` int DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `city_address` varchar(45) DEFAULT NULL,
  `province_address` varchar(2) DEFAULT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `Manager_ManagerID` int NOT NULL,
  PRIMARY KEY (`DoctorID`,`Manager_ManagerID`),
  KEY `fk_Doctor_Manager1_idx` (`Manager_ManagerID`),
  CONSTRAINT `fk_Doctor_Manager1` FOREIGN KEY (`Manager_ManagerID`) REFERENCES `Manager` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Oliver','Brady',144483376,364789,'4299 Bank St','Toronto','ON','M6B7D6','1988-01-18',7),(2,'Jack','Flynn',384325074,305560,'643 Seam Street','Toronto','ON','M6D8D6','1978-02-17',5),(3,'Thomas','Mills',431304446,654378,'980 Tchesinkut Lake Rd','Hamilton','ON','M6D1D6','1967-05-17',1),(4,'Alfie','Whittle',954853748,867895,'3090  Nelson Street','Toronto','ON','M6D9D6','1957-07-24',7),(5,'Jacob','Gibbs',872887535,700329,'4749 Fallon Drive','Toronto','ON','M6S7D6','1960-09-17',8),(6,'Harry','Poole',158156812,100067,'1546  Halsey Avenue','Calgary','ON','M6R7D6','1991-08-12',7),(7,'George','Mcbride',859207336,400034,'3300 Tanner Street','Toronto','ON','M6Y7D6','1995-06-22',7),(8,'Oscar','White',132106582,368923,'972 Kennedy Lane','Toronto','ON','M6D7D6','1978-07-07',7),(9,'Leo','Lucas',8549257,567855,'518 Islington Ave','Toronto','ON','M6D7D6','1977-12-24',7),(10,'Fern','Nguyen',4140180,689490,'2650  Richmond Road','Vancouver','BC','M7D7U6','1978-07-17',7),(11,'Constance','Edwards',922723760,541278,'1271 Adelaide St','Toronto','ON','M6T7M6','1968-01-09',5),(12,'Daniella','Mimma',396859435,689445,'4477  Merivale Road','Toronto','ON','M6D7D6','1997-02-27',1),(13,'Connie','Mann',288364841,456734,'4408  Toy Avenue','Toronto','ON','M6D7D6','1988-05-12',9),(14,'Flora','Kelly',279533501,451122,'2138  Dufferin Avenue','Montreal','QB','M6D7D6','1978-07-27',8),(15,'Rhea','Strickland',880765940,458975,'3443  rue Levy','Quebec City','QB','M6D7G6','1978-09-27',6);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has` (
  `Secretary_SecretaryID` int NOT NULL,
  `Appointment_AppointmentID` int NOT NULL,
  PRIMARY KEY (`Secretary_SecretaryID`,`Appointment_AppointmentID`),
  KEY `fk_Secretary_has_Appointment_Appointment1_idx` (`Appointment_AppointmentID`),
  KEY `fk_Secretary_has_Appointment_Secretary1_idx` (`Secretary_SecretaryID`),
  CONSTRAINT `fk_Secretary_has_Appointment_Appointment1` FOREIGN KEY (`Appointment_AppointmentID`) REFERENCES `Appointment` (`AppointmentID`),
  CONSTRAINT `fk_Secretary_has_Appointment_Secretary1` FOREIGN KEY (`Secretary_SecretaryID`) REFERENCES `Secretary` (`SecretaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoice` (
  `InvoiceID` int NOT NULL,
  `date` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `Patient_PatienceID` int NOT NULL,
  PRIMARY KEY (`InvoiceID`,`Patient_PatienceID`),
  KEY `fk_Invoice_Patient1_idx` (`Patient_PatienceID`),
  CONSTRAINT `fk_Invoice_Patient1` FOREIGN KEY (`Patient_PatienceID`) REFERENCES `Patient` (`PatienceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
INSERT INTO `Invoice` VALUES (1,'2006-03-22',45.99,'PAID',8),(2,'2010-07-21',99.25,'BILLED',1),(3,'2020-01-01',15.00,'PAID',1),(4,'2019-03-17',15.00,'BILLED',7),(5,'2020-09-24',9.99,'PAID',4),(6,'2011-03-01',19.00,'PAID',4),(7,'2005-07-01',19.00,'PAID',7),(8,'2000-01-01',400.00,'BILLED',5),(9,'2020-01-01',15.00,'PAID',4),(10,'2008-08-13',15.00,'PAID',7),(11,'2020-01-01',15.00,'PAID',3),(12,'2020-01-01',15.00,'BILLED',1),(13,'2020-01-01',15.00,'PAID',1),(14,'2020-01-01',15.00,'PAID',9),(15,'2020-01-01',15.00,'BILLED',3);
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manager`
--

DROP TABLE IF EXISTS `Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manager` (
  `ManagerID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  PRIMARY KEY (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manager`
--

LOCK TABLES `Manager` WRITE;
/*!40000 ALTER TABLE `Manager` DISABLE KEYS */;
INSERT INTO `Manager` VALUES (1,'Matilda','Shaw',248676859),(2,'Susan','Lee',462808923),(3,'Roman','Swarosky',126486936),(4,'Jhon','Wayne',25729889),(5,'Ginny','Rose',163967398),(6,'Marco','Stevanella',127462749),(7,'Mohamed','Simon',128472849),(8,'Mirko','Ivanov',235984729),(9,'Sameer','DeMato',234985927),(10,'Lucy','Santilli',123859386);
/*!40000 ALTER TABLE `Manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nurse`
--

DROP TABLE IF EXISTS `Nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nurse` (
  `NurseID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `hours_worked` int DEFAULT NULL,
  `pay_rate` decimal(10,2) DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `city_addressa` varchar(45) DEFAULT NULL,
  `province_address` varchar(2) DEFAULT NULL,
  `postal_code` varchar(6) DEFAULT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `Manager_ManagerID` int NOT NULL,
  PRIMARY KEY (`NurseID`,`Manager_ManagerID`),
  KEY `fk_Nurse_Manager1_idx` (`Manager_ManagerID`),
  CONSTRAINT `fk_Nurse_Manager1` FOREIGN KEY (`Manager_ManagerID`) REFERENCES `Manager` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nurse`
--

LOCK TABLES `Nurse` WRITE;
/*!40000 ALTER TABLE `Nurse` DISABLE KEYS */;
INSERT INTO `Nurse` VALUES (0,'Khadija','Duran',20,23.00,455114595,'48 St Clair Ave W','Toronto','ON','M4V2Z2','1987-08-16','RN',1),(1,'Lee','Ortiz',14,23.00,540314770,'1974 Queen St E ','Toronto','ON','M4L1H8','1972-01-04','RN',1),(2,'Alicia','Gardner',12,22.00,574058366,'300 Silver Birch Ave ','Toronto','ON','M4E3L5','1990-07-07','RN',2),(3,'Lachlan','Pacheco',6,23.00,561235094,'717 Broadview Ave','Toronto','ON','M4K2P5','1974-07-03','RN',3),(4,'Margie','Sutton',5,21.70,575143888,'65 Harbour Sq','Toronto','ON','M5J2L4','1973-04-29','RN',4),(5,'Isabelle','Vaughan',6,22.50,436648414,'1210 Don Mills Rd ','Toronto','ON','M3B3N9','1967-02-05','RN',5),(6,'Ellie-May','Turner',6,22.50,276133980,'500 Kingston Rd ','Toronto','ON','M4L1V3','1973-07-02','RN',6),(7,'Cerys','Simmons',5,21.70,597631985,'234 Willow Ave ','Toronto','ON','M4E3K7','1965-06-14','RN',7),(8,'Ellie','Goodwin',4,21.70,723857470,'26 Goodwood Park Cres','Toronto','ON','M4C2G5','1971-10-04','RN',8),(9,'Kayleigh','Henry',6,22.50,493781298,'304 Berkeley St','Toronto','ON','M5A2X5','1976-05-15','RN',9),(10,'Ray','Watkins',5,22.50,137473054,'3908 Front Street','Toronto','ON','M5J2N1','1980-12-16','RN',3),(11,'Bob','Edwards',4,21.70,750486334,'1497 Tycos Dr','Toronto','ON','M5T1T4','1961-03-23','RN',2),(12,'Alex','Vergara',6,21.70,448601294,'38 Spadina Ave','Toronto','ON','M5V2H8','1983-08-24','RN',7),(13,'John','Santos',7,22.50,544782725,'28 Bathurst St','Toronto','ON','M5V0C6','1974-01-31','RN',1),(14,'Abby','Po',14,21.70,555832310,'300 Dundas St W','Toronto','ON','M5T1G4','1970-11-23','RN',7);
/*!40000 ALTER TABLE `Nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `PatienceID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `SIN` decimal(9,0) DEFAULT NULL,
  `OHIP_number` decimal(10,0) DEFAULT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `city_address` varchar(45) DEFAULT NULL,
  `province_address` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `family_doctor` varchar(45) DEFAULT NULL,
  `Insurance_name` varchar(45) DEFAULT NULL,
  `insurance_code` varchar(45) DEFAULT NULL,
  `Nurse_NurseID` int NOT NULL,
  `Doctor_DoctorID` int NOT NULL,
  `info_patience` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PatienceID`,`Doctor_DoctorID`,`Nurse_NurseID`),
  KEY `fk_Patient_Nurse1_idx` (`Nurse_NurseID`),
  KEY `fk_Patient_Doctor1_idx` (`Doctor_DoctorID`),
  CONSTRAINT `fk_Patient_Doctor1` FOREIGN KEY (`Doctor_DoctorID`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `fk_Patient_Nurse1` FOREIGN KEY (`Nurse_NurseID`) REFERENCES `Nurse` (`NurseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (0,'Alice','Graham',543236623,934117052,'1971-07-15','4160739456','935 Eglinton Ave W','Toronto','ON','M6C2C3','alicegraham@hotmail.com','Marcell Dillon','Money Saver','942 ',0,1,'Blood work'),(1,'Sophie','Le',126853104,6201213158,'1963-05-17','6474894279','1 Austin terrace','Toronto','ON','M5R1X8','sophiele@gmail.com','Abdul Lara','Dlaza','530 ',1,6,'XRAY'),(2,'Iona','Barnett',849593743,6756121956,'2004-12-26','4169071007','800 Landsdowne Ave','Toronto','ON','M6H4K3','barnettiona@hotmail.com','Chester Boyle','Open Book','679 ',4,5,'Ultrasound'),(3,'Chloe','Ramsey',893473822,865490360,'1955-09-19','6478208538','1617 Dupont St','Toronto','ON','M6P3S8','chloeramsey@gmail.com','Eliza Mckay','Help Work','935 ',12,4,'Blood work'),(4,'Lucia','Hott',783402317,6181862126,'1992-12-25','4166477089','1728 Bloor St','Toronto','ON','M6P1A8','hottlucia2@hotmail.com','Frazer Alexander','Better For You','343',10,11,'Abdominal pain'),(5,'Dale','Middleton',873247826,1524705285,'1968-02-15','6474690572','10 Dora Ave','Toronto','ON','M6H4J2','dalemiddle@gmail.com','Abdullah Finley','Kin','679 ',1,13,'XRAY'),(6,'Georgia','Kennedy',485783234,6604180987,'1972-07-03','4167559634','931 Dufferin St','Toronto','ON','M6H4B2','kennedyg@yahoo.com','Bethany Solomon','State Farm','456 ',3,1,'Shortness of breath'),(7,'Kira','Owen',458793884,730227360,'2004-01-18','4165378184','507 Euclid Ave','Toronto','ON','M6G2T1','owenkiraa@yahoo.com','Declan Vaughn','Geico','012',6,10,'Back pain'),(8,'Rachel','Hopkins',809347652,9911137742,'1985-06-18','6474953011','19 Rathnelly Ave','Toronto','ON','M4V2M2','hopkinsrach@hotmail.com','Fleur Benjamin','Mo Money','122',9,10,'Ultrasound'),(9,'Haleema','Bernard',190827342,5585614889,'1975-11-22','4166813003','1366 Yonge St','Toronto','ON','M4T3A7','bernardhal@hotmail.com','Abraham Johnson','Jarters','638 ',6,7,'Blood work'),(10,'Tanisha','Griffith',167835812,2231383083,'1967-09-21','4168360851','172 Heath St W','Toronto','ON','M4V2L5','tanishagriff@yahoo.com','Sebastian Orr','Angetel','449 ',2,9,'Back pain'),(11,'Aliyah','Mccoy',786234879,467710662,'1950-05-23','4168447157','11 Convent Ct','Toronto','ON','M6B4E5','mccoyaliyah@yahoo.com','Rhonda Mccoy','Rainfoster','437',8,2,'Ultrasound'),(12,'Willie','Robertson',786921346,5518619062,'1985-02-04','6479780270','3174 Bathurst St','Toronto','ON','M6A2B1','willrobertson@gmail.com','Rosa Vang','Fosauri','658 ',11,11,'XRAY'),(13,'Albert','Reilly',912893764,2451142716,'1989-05-26','4163188194','1371 Avenue Rd','Toronto','ON','M5N2H4','albertreiley@yahoo.com','Brianna Alvarez','Robinslight','035',5,8,'Shortness of breath'),(14,'Alex','Doe',163461972,700419067,'1962-11-25','6474820357','355 Ranee Ave','Toronto','ON','M6A1N9','doealex@gmail.com','Catherine Valentine','Grubbybla','708 ',7,3,'Blood work');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Secretary`
--

DROP TABLE IF EXISTS `Secretary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Secretary` (
  `SecretaryID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `hours_worked` int DEFAULT NULL,
  `pay_rate` varchar(45) DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `city_address` varchar(45) DEFAULT NULL,
  `province_address` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `Manager_ManagerID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SecretaryID`,`Manager_ManagerID`),
  KEY `fk_Secretary_Manager1_idx` (`Manager_ManagerID`),
  CONSTRAINT `fk_Secretary_Manager1` FOREIGN KEY (`Manager_ManagerID`) REFERENCES `Manager` (`ManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Secretary`
--

LOCK TABLES `Secretary` WRITE;
/*!40000 ALTER TABLE `Secretary` DISABLE KEYS */;
INSERT INTO `Secretary` VALUES (1,'Michelle','Amin',20,'17.5',123749378,'23 Yonge Street','Toronto','ON','M4N8O7','1957-03-17',9),(2,'George','Smith',20,'17.5',246893475,'23 Yonge Street','Toronto','ON','M6D7D6','1958-02-17',8),(3,'Paula','Mccarthy',78,'17.5',246543475,'94 Pluto Street','Toronto','ON','M6D7D6','1978-12-18',1),(4,'Georgie','Crawford',300,'17.5',298393475,'147 Mars Street','Toronto','ON','M6D7D6','1978-02-17',7),(5,'Adrian','Hunt',432,'17.5',249453475,'97 Meme Street','Hamilton','ON','M6D7D6','1976-05-17',8),(6,'Anastasia','Burke',86,'17.5',248943475,'34 Piccolina Street','Toronto','ON','M6D7D6','1967-07-21',5),(7,'Lois','Berry',700,'17.5',111893475,'368 Supino Street','Toronto','ON','M6D7D6','1958-09-17',4),(8,'Layla','Holmes',1000,'17.5',298993475,'27 Shiam Street','Calgary','ON','M6D7D6','1992-08-12',2),(9,'Kristina','Mcbride',4000,'17.5',246893432,'422 Sumer Street','Toronto','ON','M6D7D6','2000-02-22',7),(10,'Philippa','Snyder',3689,'17.5',246893457,'439 Pleseant Street','Toronto','ON','M6D7D6','1978-07-07',6),(11,'Carmen','Fleming',5678,'20.5',246838595,'456 Indica Street','Toronto','ON','M6D7D6','1989-11-27',5),(12,'Troy','Abbott',6894,'17.5',267943475,'37 Hampshire Street','Vancouver','BC','M6D7D6','1956-04-17',4),(13,'Homer','Kelley',5412,'17.5',953213475,'99 Hope Street','Toronto','ON','M6D7D6','1976-10-09',3),(14,'Angus','Elliott',6894,'20.5',246888875,'24 Sally Street','Toronto','ON','M6D7D6','1993-02-27',2),(15,'Albert','Walton',45,'30.5',249893475,'78 Roham Street','Montreal','QB','M6D7D6','1978-07-27',1);
/*!40000 ALTER TABLE `Secretary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Secretary_meets_Walk-in`
--

DROP TABLE IF EXISTS `Secretary_meets_Walk-in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Secretary_meets_Walk-in` (
  `Secretary_SecretaryID` int NOT NULL,
  `Walk-in_Walk-inID` int NOT NULL,
  PRIMARY KEY (`Secretary_SecretaryID`,`Walk-in_Walk-inID`),
  KEY `fk_Secretary_has_Walk-in_Walk-in1_idx` (`Walk-in_Walk-inID`),
  KEY `fk_Secretary_has_Walk-in_Secretary1_idx` (`Secretary_SecretaryID`),
  CONSTRAINT `fk_Secretary_has_Walk-in_Secretary1` FOREIGN KEY (`Secretary_SecretaryID`) REFERENCES `Secretary` (`SecretaryID`),
  CONSTRAINT `fk_Secretary_has_Walk-in_Walk-in1` FOREIGN KEY (`Walk-in_Walk-inID`) REFERENCES `Walk-in` (`Walk-inID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Secretary_meets_Walk-in`
--

LOCK TABLES `Secretary_meets_Walk-in` WRITE;
/*!40000 ALTER TABLE `Secretary_meets_Walk-in` DISABLE KEYS */;
/*!40000 ALTER TABLE `Secretary_meets_Walk-in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Walk-in`
--

DROP TABLE IF EXISTS `Walk-in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Walk-in` (
  `Walk-inID` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `SIN` int DEFAULT NULL,
  `OHIP_number` int DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `date_of_birthday` date DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `Insurance_name` varchar(45) DEFAULT NULL,
  `Insurance_code` varchar(45) DEFAULT NULL,
  `Doctor_DoctorID` int NOT NULL,
  `info_walk-in` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Walk-inID`,`Doctor_DoctorID`),
  KEY `fk_Walk-in_Doctor1_idx` (`Doctor_DoctorID`),
  CONSTRAINT `fk_Walk-in_Doctor1` FOREIGN KEY (`Doctor_DoctorID`) REFERENCES `Doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Walk-in`
--

LOCK TABLES `Walk-in` WRITE;
/*!40000 ALTER TABLE `Walk-in` DISABLE KEYS */;
INSERT INTO `Walk-in` VALUES (1,'Joseph','Hinton',356884221,123332122,'416-826-9382','1953-08-12','JosephTHinton@rhyta.com','WolfDog','XT-0093',1,'Bald and overweight, do not give sweets.'),(2,'Kimbery','Davis',390048551,324122123,'250-518-9239','1943-11-13','KimberyWDavis@teleworm.us','Blue Cross','009281',1,'Needs a hip replacement.'),(3,'Charles','Alexander',296893506,334224311,'780-829-8572','1941-12-21','CharlesLAlexander@jourrapide.com','Blue Cross','004341',1,'Thinks the world is flat'),(4,'William','Crane',636581480,584654531,'613-742-1533','1963-05-28','WilliamTCrane@jourrapide.com','OHIP','0',2,'Came in for a ear infection.'),(5,'Hattie','Newman',488447442,334214311,'819-776-6106','1961-07-20','HattieJnewman@dayrep.com','OHIP','0',5,'Tripped over a rock'),(6,'Keith','Burr',105255962,195476234,'905-452-1231','1964-05-20','KeithEBurr@jourrapide.com','OHIP','0',6,'Came in for a sprained ankle'),(7,'Ronald','Gill',196057053,753479874,'647-282-1475','1955-09-11','RonaldGrill@rhyta.com','OHIP','0',1,'Cant tell time on analog clocks'),(8,'Henry','Ready',790173751,258794561,'418-228-9837','1991-08-10','HenryReady@dayrep.com','OHIP','0',3,'Forgot to tie shoe laces and tripped'),(9,'John','Horton',432262483,777963412,'705-967-9729','1976-03-04','JohnHorton@dayrep.com','OHIP','0',2,'Tripped over a dog.'),(10,'Margaret','Porter',169539111,841235875,'403-615-7146','1954-03-27','MargaretPorter@dayrep.com','OHIP','0',2,'Needed inhaler'),(11,'Crystal','Harvey',658797436,468521236,'613-246-0999','1975-07-23','CrystalCHarvey@armyspy.com','OHIP','0',7,'Lost keys'),(12,'George','Santiago',502412612,547894123,'450-508-9651','1945-11-06','GeorgeMSantiago@teleworm.us','OHIP','0',4,'Broke fingers during hide and seek'),(13,'Erica','McCarthy',619851256,289874561,'780-450-4342','1985-08-11','EricaAMcCarthy@dayrep.com','OHIP','0',2,'Scared of fruits'),(14,'Lisa','Moise',759476898,212134568,'418-691-6659','1996-08-24','LisaCMoise@dayrep.com','OHIP','0',2,'Flu like symptoms'),(15,'Patricia','Hurley',776308587,234568798,'519-922-1598','1943-02-08','PatriciaHurley@dayrep.com','OHIP','0',2,'Doesnt believe in cats');
/*!40000 ALTER TABLE `Walk-in` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11 13:34:41
