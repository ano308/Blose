-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: gigatec
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `AT_WK`
--

DROP TABLE IF EXISTS `AT_WK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AT_WK` (
  `IDAT` int DEFAULT NULL,
  `IDWK` int DEFAULT NULL,
  KEY `IDAT` (`IDAT`),
  KEY `IDWK` (`IDWK`),
  CONSTRAINT `AT_WK_ibfk_1` FOREIGN KEY (`IDAT`) REFERENCES `artikel` (`ID`),
  CONSTRAINT `AT_WK_ibfk_2` FOREIGN KEY (`IDWK`) REFERENCES `warenkorb` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AT_WK`
--

LOCK TABLES `AT_WK` WRITE;
/*!40000 ALTER TABLE `AT_WK` DISABLE KEYS */;
/*!40000 ALTER TABLE `AT_WK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AT_WL`
--

DROP TABLE IF EXISTS `AT_WL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AT_WL` (
  `IDAT` int DEFAULT NULL,
  `IDWL` int DEFAULT NULL,
  KEY `IDAT` (`IDAT`),
  KEY `IDWL` (`IDWL`),
  CONSTRAINT `AT_WL_ibfk_1` FOREIGN KEY (`IDAT`) REFERENCES `artikel` (`ID`),
  CONSTRAINT `AT_WL_ibfk_2` FOREIGN KEY (`IDWL`) REFERENCES `wunschliste` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AT_WL`
--

LOCK TABLES `AT_WL` WRITE;
/*!40000 ALTER TABLE `AT_WL` DISABLE KEYS */;
/*!40000 ALTER TABLE `AT_WL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Lagerstatus` int DEFAULT NULL,
  `bilder` varchar(100) DEFAULT NULL,
  `beschreibung` varchar(1000) DEFAULT NULL,
  `preis` int DEFAULT NULL,
  `IDKat` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDKat` (`IDKat`),
  CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`IDKat`) REFERENCES `kategorie` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES (13,'iPhone 14 Pro',10,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/iPhone_14_pro.jpeg','The iPhone 14 Pro is boasting a high resolution main camera with incredible sharpness as well as a pin-sharp display that allows you to see all the detail in those pictures. Everything gets powered by the new A16 Chip with improved architecture. All in all this product fulfills all your needs for a phone and exceeds them even.',1200,4),(14,'honey candle',30,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/honigkerze.jpeg','This honey candle will last you at least 18 hours. It will release the cozy scent of honey as well as warmth in this time. This is perfect for relaxation after a stressful day at work.',10,2),(15,'Mx Master 3',5,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/logitec_mxmaster_3.jpeg','You will never want to use a different mouse after this one. This mouse was molded after you hand and you will feel your hand merge with this piece of technology. It also looks stylish and has good connectivity with bluetooth and a RF-donge.',90,3),(16,'keychron K3',4,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/Keychron_K3_Blue.jpeg','With this keyboard you will annoy everyone in your vincinity but it will feel awesome to type so you will be spoiled and never want to switch away from it. At least you didn\' have to spend too much money for it.',130,3),(17,'iPad Mini 6. Gen.',10,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/iPad_Mini_6.gen.jpeg','If you want an iPad but also want to use it out and about you will be very happy with this one. It is very light but still very powerful and can do just about everything you want it to.',700,5),(18,'UE Boom 2',1,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/UE_Boom_2.jpeg','Do you want to listen to music on the go? Well you came to the right place. UE BOOM will let you do that with great volume and sound quality.',120,6),(19,'Apple Trackpad 2. Gen',20,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/apple_trackpad.jpeg','With this product you get to use the trackpad you know an love from your laptop on your desktop computer or if you use your laptop in clamshellmode. This allows you to not loose productivity as you get to rely on muscle-memory.',90,3),(20,'iPhone 12',10,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/iPhone_12.jpeg','This phone is equiped with great cameras and 5G which allows you to share you pictures at lightning-speed. It also has the same chip as the pro-phones and is well equiped to handle what you throw at it.',800,4),(21,'iPhone 11 pro',3,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/iPhone_11_pro.jpeg','You need an awesome camera as well as ever lasting battery. You are at the right place. With all-day battery life you never have to search for a plug even on long trips.',700,4),(22,'Superlux HD 681',14,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/Superlux_HD681.jpeg','Get hifi sound quality at an affordable price. Inspired by EKGs phenomenal headphones, this incredible design was developed and perfected. With the open-back charactersitic you get an  incredible soundstage for not a lot of money',35,6),(23,'Sennheise DT 770 Pro',30,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/sennheiser_dt770_pro.jpeg','If you want to hear the music the way the artist did, get theser headphones. They probably used the same ones. An icon in the sound-industry with evere lasting materials and sound that makes you want to never listen to other headphones ever again.',130,6),(24,'screwdriver',15,'https://s3.amazonaws.com/gigatec.bilder/Projektbilder/Schraubenzieher.jpeg','You have used screw drivers before but not one like this. You have total control over the screw with the precisely machiened screw tip and will not slip of the hande because of the premium material that gets used to give you incredible grip.',20,1);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ort`
--

DROP TABLE IF EXISTS `ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ort` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PLZ` varchar(10) DEFAULT NULL,
  `Ort ` varchar(50) DEFAULT NULL,
  `Kanton` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ort`
--

LOCK TABLES `ort` WRITE;
/*!40000 ALTER TABLE `ort` DISABLE KEYS */;
/*!40000 ALTER TABLE `ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Vorname` varchar(30) DEFAULT NULL,
  `Nachname` varchar(50) DEFAULT NULL,
  `Adresse` varchar(70) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `IDOrt` int DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Andrin','Buholzer','Obermättlistrasse 1','andrin.buholzer@gmail.com',1,'asdf','abu'),(2,'\"anojan\"','\"s\"','\"nr 2\"','\"anojan@iosadjf\"',1,'\"asdf\"','\"ano308\"'),(3,'\"asdf\"','\"asdf\"','\"asdf\"','\"asdf\"',1,'\"asdf\"','\"asdf\"');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warenkorb`
--

DROP TABLE IF EXISTS `warenkorb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warenkorb` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDArtikel` int DEFAULT NULL,
  `IDUser` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDArtikel` (`IDArtikel`),
  KEY `IDUser` (`IDUser`),
  CONSTRAINT `warenkorb_ibfk_1` FOREIGN KEY (`IDArtikel`) REFERENCES `artikel` (`ID`),
  CONSTRAINT `warenkorb_ibfk_2` FOREIGN KEY (`IDUser`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warenkorb`
--

LOCK TABLES `warenkorb` WRITE;
/*!40000 ALTER TABLE `warenkorb` DISABLE KEYS */;
INSERT INTO `warenkorb` VALUES (5,23,NULL,NULL),(6,24,NULL,NULL);
/*!40000 ALTER TABLE `warenkorb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wunschliste`
--

DROP TABLE IF EXISTS `wunschliste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wunschliste` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDArtikel` int DEFAULT NULL,
  `IDUser` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDArtikel` (`IDArtikel`),
  KEY `IDUser` (`IDUser`),
  CONSTRAINT `wunschliste_ibfk_1` FOREIGN KEY (`IDArtikel`) REFERENCES `artikel` (`ID`),
  CONSTRAINT `wunschliste_ibfk_2` FOREIGN KEY (`IDUser`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wunschliste`
--

LOCK TABLES `wunschliste` WRITE;
/*!40000 ALTER TABLE `wunschliste` DISABLE KEYS */;
INSERT INTO `wunschliste` VALUES (1,14,1,NULL),(2,24,NULL,NULL),(3,15,3,NULL);
/*!40000 ALTER TABLE `wunschliste` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 14:26:57
