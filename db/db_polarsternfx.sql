CREATE DATABASE  IF NOT EXISTS `polarstern_project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `polarstern_project`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: polarstern_project
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `contactform`
--

DROP TABLE IF EXISTS `contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactform` (
  `idVisitor` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` int NOT NULL,
  `message` varchar(3000) NOT NULL,
  PRIMARY KEY (`idVisitor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactform`
--

LOCK TABLES `contactform` WRITE;
/*!40000 ALTER TABLE `contactform` DISABLE KEYS */;
INSERT INTO `contactform` VALUES (1,'Nat','nat@gmail.com',55554444,'This is the first message.'),(2,'Rod','rod@gmail.com',44445555,'This is a second comment and I am the Software Engineer.'),(3,'Mirk K9','mirk_k9@gmail.com',8008888,'This is another comment and I am the CEO.');
/*!40000 ALTER TABLE `contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicesnews`
--

DROP TABLE IF EXISTS `servicesnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicesnews` (
  `idservices` int NOT NULL,
  `webdesign` varchar(100) DEFAULT NULL,
  `mobdesign` varchar(100) DEFAULT NULL,
  `gamedev` varchar(100) DEFAULT NULL,
  `datascience` varchar(100) DEFAULT NULL,
  `cybersec` varchar(100) DEFAULT NULL,
  `ecommerce` varchar(100) DEFAULT NULL,
  `contactForm_idVisitor` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idservices`,`contactForm_idVisitor`),
  KEY `fk_servicesNews_contactForm_idx` (`contactForm_idVisitor`),
  CONSTRAINT `fk_servicesNews_contactForm` FOREIGN KEY (`contactForm_idVisitor`) REFERENCES `contactform` (`idVisitor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicesnews`
--

LOCK TABLES `servicesnews` WRITE;
/*!40000 ALTER TABLE `servicesnews` DISABLE KEYS */;
INSERT INTO `servicesnews` VALUES (1,'web news','mobile news','game news','data news','cybersec news','ecommerce news',1),(2,'web promos','mobile promos','game promos','data promos','cybersec promos','ecommerce promos',2),(3,'web projects','mobile apps','game pilots ','data analysis','cybersec methods',NULL,3),(4,'web budget',NULL,NULL,'data storage',NULL,NULL,4);
/*!40000 ALTER TABLE `servicesnews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08 21:21:33
